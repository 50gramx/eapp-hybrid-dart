import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
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
  late Terminal terminal;
  late SSHClient client;

  @override
  void initState() {
    super.initState();
    terminal = Terminal();
    client = SSHClient(
      hostport: SSHHostPort(
        host: widget.host,
        port: widget.port,
      ),
      login: SSHLoginPassword(
        username: widget.username,
        password: widget.password,
      ),
    );

    client.connect();
    client.onKeyboardEvent.listen((e) {
      terminal.keyInput(e.keysym, e.key, e.keylabel);
    });
    client.onDataReceived.listen((data) {
      terminal.write(data);
    });
  }

  @override
  void dispose() {
    client.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SSH Terminal')),
      body: TerminalView(terminal),
    );
  }
}
