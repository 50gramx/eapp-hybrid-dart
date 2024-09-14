import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// Keep track of the current overlay entry globally or at the widget level
OverlayEntry? _currentOverlayEntry;

class NeumorphicSnackBar extends StatelessWidget {
  final String message;
  final VoidCallback onSeenPressed;

  NeumorphicSnackBar({required this.message, required this.onSeenPressed});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16.0,
      left: 16.0,
      right: 16.0,
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
          color: AppColors.backgroundStateDisabled(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundSecondary(context),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(
                      color: AppColors.contentTertiary(context),
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(width: 8.0),
              NeumorphicButton(
                onPressed: onSeenPressed,
                style: NeumorphicStyle(
                  color: AppColors.backgroundInverseTertiary(context),
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                  shape: NeumorphicShape.flat,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                  border: NeumorphicBorder(
                    isEnabled: true,
                    color: AppColors.backgroundTertiary(context),
                    width: 2,
                  ),
                  disableDepth: true,
                ),
                child: Text(
                  "Seen",
                  style: TextStyle(
                      color: AppColors.contentTertiary(context),
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showNeumorphicSnackBar(BuildContext context, String message) {
  // Remove the current snackbar if it exists
  if (_currentOverlayEntry != null) {
    _currentOverlayEntry?.remove();
    _currentOverlayEntry = null;
  }

  // Create a new overlay entry with the "Seen" button
  _currentOverlayEntry = OverlayEntry(
    builder: (context) => NeumorphicSnackBar(
      message: message,
      onSeenPressed: () {
        _currentOverlayEntry?.remove();
        _currentOverlayEntry = null; // Reset the reference
      },
    ),
  );

  // Insert the new overlay
  Overlay.of(context)?.insert(_currentOverlayEntry!);

  // Schedule automatic removal after 5 seconds unless "Seen" is clicked
  Future.delayed(Duration(seconds: 5), () {
    _currentOverlayEntry?.remove();
    _currentOverlayEntry = null; // Reset the reference
  });
}
