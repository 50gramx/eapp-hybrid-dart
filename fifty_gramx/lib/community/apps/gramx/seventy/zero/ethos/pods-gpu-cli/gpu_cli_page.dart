import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dartssh2/dartssh2.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
// import 'package:dartssh2/dartssh2.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:xterm/xterm.dart';

class GPUCLIPage extends StatefulWidget {
  final String host;
  final int port;
  final String username;
  final String password;
  const GPUCLIPage({
    Key? key,
    required this.host,
    required this.port,
    required this.username,
    required this.password,
  }) : super(key: key);
  @override
  _GPUCLIPageState createState() => _GPUCLIPageState();
}

class _GPUCLIPageState extends State<GPUCLIPage> {
  final terminal = Terminal(maxLines: 10000);
  SSHClient? client;
  SSHSession? session;
  WebSocketChannel? channel;
  bool isConnected = false;

  @override
  void initState() {
    super.initState();
    if (kIsWeb) {
      connectWebSocket();
    } else {
      connectSSH();
    }
  }

  Future<void> connectSSH() async {
    try {
      terminal.write('Connecting to ${widget.host}:${widget.port}...\n');
      client = SSHClient(
        await SSHSocket.connect(widget.host, widget.port),
        username: widget.username,
        onPasswordRequest: () => widget.password,
      );
      terminal.write('SSH client connected. Starting bash session...\n');

      session = await client!.shell(
        pty: SSHPtyConfig(
            width: terminal.viewWidth, height: terminal.viewHeight),
      );

// Clear terminal and set cursor
      terminal.buffer.clear();
      terminal.buffer.setCursor(0, 0);

      terminal.onResize = (width, height, pixelWidth, pixelHeight) {
        session!.resizeTerminal(width, height, pixelWidth, pixelHeight);
      };

      terminal.onOutput = (data) {
        session!
            .write(utf8.encode(data)); // Properly send user input to session
      };

      session!.stdout
          .cast<List<int>>()
          .transform(Utf8Decoder())
          .listen(terminal.write);
      session!.stderr
          .cast<List<int>>()
          .transform(Utf8Decoder())
          .listen(terminal.write);

      setState(() {
        isConnected = true;
      });
      terminal
          .write('Connection established. You can start typing commands.\n');
    } catch (e) {
      terminal.write('Error connecting to SSH: $e\n');
      print('Error connecting to SSH: $e');
    }
  }

  void connectWebSocket() {
    terminal.write('Connecting via WebSocket...\n');
    channel = WebSocketChannel.connect(
      Uri.parse('ws://122.179.29.113:8080'),
    );

    channel!.stream.listen(
      (message) {
        final data = jsonDecode(message);
        switch (data['type']) {
          case 'connected':
            setState(() {
              isConnected = true;
            });
            terminal.write('SSH connection established.\n');
            break;
          case 'disconnected':
            setState(() {
              isConnected = false;
            });
            terminal.write('SSH connection closed.\n');
            break;
          case 'output':
            terminal.write(data['data']);
            break;
          case 'error':
            terminal.write('Error: ${data['data']}\n');
            break;
          case 'commandComplete':
            // Optionally handle command completion
            break;
        }
      },
      onDone: () {
        terminal.write('WebSocket connection closed.\n');
        setState(() {
          isConnected = false;
        });
      },
      onError: (error) {
        print("ws,erro: $error");
        terminal.write('WebSocket error: $error\n');
        setState(() {
          isConnected = false;
        });
      },
    );

    // Send SSH connection details
    channel!.sink.add(jsonEncode({
      'type': 'connect',
      'host': widget.host,
      'port': widget.port,
      'username': widget.username,
      'password': widget.password,
    }));

    terminal.onOutput = (data) {
      channel!.sink.add(jsonEncode({
        'type': 'command',
        'command': data,
      }));
    };
  }

  @override
  void dispose() {
    if (kIsWeb) {
      channel?.sink.close();
    } else {
      session?.close();
      client?.close();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Command Line Interface'),
      ),
      body: Column(
        children: [
          Expanded(
            child: TerminalView(
              terminal,
              textStyle: const TerminalStyle(
                fontSize: 14,
                fontFamily: 'Courier',
              ),
              autofocus: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: isConnected ? sendTestCommand : null,
                child: Text('Send Test Command'),
              ),
              ElevatedButton(
                onPressed: isConnected ? disconnectSSH : null,
                child: Text('Disconnect'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void sendTestCommand() {
    if (kIsWeb) {
      if (channel != null) {
        channel!.sink.add(jsonEncode({
          'type': 'command',
          'command': 'echo "Test command executed"\n',
        }));
      }
    } else {
      if (session != null) {
        session!.stdin.add(
            Uint8List.fromList('echo "Test command executed"\n'.codeUnits));
      }
    }
  }

  void disconnectSSH() {
    if (kIsWeb && channel != null) {
      channel!.sink.add(jsonEncode({
        'type': 'disconnect',
      }));
    } else if (session != null) {
      session!.close();
      client?.close();
    }
    setState(() {
      isConnected = false;
    });
    terminal.write('Disconnected from SSH.\n');
  }
}
