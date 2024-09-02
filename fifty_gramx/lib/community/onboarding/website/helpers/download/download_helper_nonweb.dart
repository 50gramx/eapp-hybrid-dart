// This file is used for non-web platforms like macOS, Windows, etc.
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

Future<void> downloadFile(String url, String fileName) async {
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
