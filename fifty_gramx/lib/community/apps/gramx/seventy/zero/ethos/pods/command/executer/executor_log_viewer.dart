import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/executor_logger.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'dart:ui'; // Needed for glassmorphism blur effect

class ExecutorLogViewer extends StatefulWidget {
  @override
  _ExecutorLogViewerState createState() => _ExecutorLogViewerState();
}

class _ExecutorLogViewerState extends State<ExecutorLogViewer> {
  final List<String> _logs = [];
  final ScrollController _scrollController = ScrollController();
  bool _isAtBottom = true; // State to track the position (top or bottom)

  @override
  void initState() {
    super.initState();

    ExecutorLogger().logStream.listen((newLog) {
      setState(() {
        _logs.addAll(newLog.split('\n'));
        if (_logs.length > 1000) {
          // Limit the number of logs to avoid excessive memory usage
          _logs.removeRange(0, _logs.length - 1000);
        }
        _scrollToBottom(); // Scroll to the latest log
      });
    });
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  void _togglePosition() {
    setState(() {
      _isAtBottom = !_isAtBottom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 24,
      bottom: _isAtBottom ? 48 : null,
      top: _isAtBottom ? null : 48,
      child: Center(
        child: Neumorphic(
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: Colors
                .transparent, // Transparent to allow the glassmorphism effect
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundSecondary(context),
              width: 2,
            ),
          ),
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColors.contentTertiary(context).withOpacity(0.2),
                  border: Border.all(
                    color:
                        AppColors.backgroundSecondary(context).withOpacity(0.3),
                    width: 1,
                  ),
                  // Glassmorphism effect
                  backgroundBlendMode: BlendMode.overlay,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView.builder(
                        controller: _scrollController,
                        itemCount: _logs.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              _logs[index],
                              style: TextStyle(
                                color: AppColors.contentSecondary(context),
                                fontSize: 12,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  icon: Icon(
                    _isAtBottom ? Icons.arrow_upward : Icons.arrow_downward,
                    color: AppColors.contentSecondary(context),
                  ),
                  onPressed: _togglePosition,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
