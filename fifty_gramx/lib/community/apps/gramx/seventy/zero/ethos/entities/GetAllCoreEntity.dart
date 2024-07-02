import 'dart:io';

import 'package:package_config/package_config.dart';

List<String> getAllEntityNames(String packagePath) {
  List<String> entityNames = [];

  // Recursive function to traverse directories
  void traverseDirectory(Directory dir) {
    dir.listSync(recursive: true).forEach((entity) {
      if (entity is File && entity.path.endsWith('.dart')) {
        // Read the Dart file and extract entity names
        String content = entity.readAsStringSync();
        RegExp regExp = RegExp(r'class\s+(\w+)\s*{');
        Iterable<Match> matches = regExp.allMatches(content);
        matches.forEach((match) {
          if (match.groupCount == 1) {
            entityNames.add(match.group(1)!);
          }
        });
      }
    });
  }

  traverseDirectory(Directory(packagePath));

  return entityNames;
}

void getAllEntity() async {
  // Get the current package config
  final packages = await loadPackageConfigUri(Uri.base.resolve('.packages'));

  // Find the package root for the desired package
  final packageUri = packages['eapp_dart_domain'];
  if (packageUri != null) {
    final resolvedUri = packageUri.packageUriRoot;
    print('Resolved URI: $resolvedUri');

    List<String> entityNames = getAllEntityNames(resolvedUri.toFilePath());
    print('Entities found: $entityNames');
    entityNames = getAllEntityNames("${resolvedUri.toFilePath()}");
    print('Entities found: $entityNames');
    // Now you can use resolvedUri to access files within the package
  } else {
    print('Package "eapp_dart_domain" not found in the package config.');
  }
}
