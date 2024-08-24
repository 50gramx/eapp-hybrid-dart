import 'dart:html' as html;

import 'package:dio/dio.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:path_provider/path_provider.dart';

Future<void> downloadFile(String url, String fileName) async {
  if (kIsWeb) {
    // Web platform: Use AnchorElement to download the file
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = fileName;
    anchorElement.click();
  } else {
    try {
      // Get the directory to save the file
      var dir = await getApplicationDocumentsDirectory();

      // Define the full path for the file
      String filePath = "${dir.path}/$fileName";

      // Create Dio instance
      Dio dio = Dio();

      // Start the download
      await dio.download(url, filePath, onReceiveProgress: (received, total) {
        if (total != -1) {
          print("Downloading: ${(received / total * 100).toStringAsFixed(0)}%");
        }
      });

      print("File downloaded to $filePath");
    } catch (e) {
      print("Download failed: $e");
    }
  }
}

Widget buildThings50DC500000000OverviewPageHeroSection(BuildContext context) {
  return Neumorphic(
    style: NeumorphicStyle(
      lightSource: NeumorphicTheme.isUsingDark(context)
          ? LightSource.bottomRight
          : LightSource.topLeft,
      shadowLightColor: NeumorphicTheme.isUsingDark(context)
          ? AppColors.gray600
          : AppColors.backgroundSecondary(context),
      shape: NeumorphicShape.flat,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
      color: AppColors.backgroundPrimary(context),
      border: NeumorphicBorder(
        isEnabled: true,
        color: AppColors.backgroundPrimary(context),
        width: 2,
      ),
      disableDepth: true,
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Transform Your Spare Computing Power into Income with 50GRAMx Ethos Nodes",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: AppColors.contentPrimary(context),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Join a distributed network and start earning by running a slice of the 50GRAMx network.",
            style: TextStyle(
              fontSize: 16.0,
              color: AppColors.contentSecondary(context),
            ),
          ),
          SizedBox(height: 20.0),
          NeumorphicButton(
            onPressed: () async {
              // Insert logic to automatically download the 50GRAMx eNodes Desktop App
              // Replace with your public URL and desired filename
              String url =
                  'https://storage.googleapis.com/packges/com.50gramx.seventy.zero.ethos.nodes.dev/50GRAMx-eNodes.dmg';
              String fileName = '50GRAMx-eNodes.dmg';

              // Start downloading the file
              await downloadFile(url, fileName);
            },
            style: NeumorphicStyle(
              color: AppColors.contentPrimary(context),
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              "Start Earning – Download Now",
              style: TextStyle(
                color: AppColors.contentInversePrimary(context),
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
