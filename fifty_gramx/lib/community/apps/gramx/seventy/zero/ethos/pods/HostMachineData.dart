

import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:process_run/shell.dart';
import 'package:universal_disk_space/universal_disk_space.dart';

class HostMachineData {

  Future<String> name() async {
    if (Platform.isMacOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var macOsInfo = await deviceInfo.macOsInfo;
      return macOsInfo.computerName;
    } else if (Platform.isWindows) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var windowsInfo = await deviceInfo.windowsInfo;
      return windowsInfo.computerName;
    } else if (Platform.isLinux) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var linuxInfo = await deviceInfo.linuxInfo;
      return linuxInfo.name;
    } else if (Platform.isAndroid) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var androidInfo = await deviceInfo.androidInfo;
      return androidInfo.host;
    } else if (Platform.isIOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var iosInfo = await deviceInfo.iosInfo;
      return iosInfo.systemName;
    } else {
      return "UNKNOWN NAME";
    }
  }

  Future<String> release() async {
    if (Platform.isMacOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var macOsInfo = await deviceInfo.macOsInfo;
      return macOsInfo.osRelease;
    } else if (Platform.isWindows) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var windowsInfo = await deviceInfo.windowsInfo;
      return windowsInfo.productName;
    } else if (Platform.isLinux) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var linuxInfo = await deviceInfo.linuxInfo;
      return linuxInfo.variant ?? "";
    } else if (Platform.isAndroid) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var androidInfo = await deviceInfo.androidInfo;
      return androidInfo.product;
    } else if (Platform.isIOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var iosInfo = await deviceInfo.iosInfo;
      return iosInfo.model;
    } else {
      return "UNKNOWN RELEASE";
    }
  }

  Future<String> hostName() async {
    if (Platform.isMacOS) {
      List<ProcessResult> result = await SimpleCommandExecuter.run("id -F");
      return result.outText;
    } else if (Platform.isWindows) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var windowsInfo = await deviceInfo.windowsInfo;
      return windowsInfo.registeredOwner;
    } else if (Platform.isLinux) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var linuxInfo = await deviceInfo.linuxInfo;
      return linuxInfo.name;
    } else if (Platform.isAndroid) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var androidInfo = await deviceInfo.androidInfo;
      return androidInfo.host;
    } else if (Platform.isIOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var iosInfo = await deviceInfo.iosInfo;
      return iosInfo.systemName;
    } else {
      return "UNKNOWN HOST";
    }
  }


  String formatBytes(int bytes, int decimals) {
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
    var i = (log(bytes) / log(1024)).floor();
    return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + ' ' + suffixes[i];
  }

  Future<String> processor() async {
    if (Platform.isMacOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var macOsInfo = await deviceInfo.macOsInfo;
      return "${macOsInfo.activeCPUs} CORE";
    } else if (Platform.isWindows) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var windowsInfo = await deviceInfo.windowsInfo;
      return "${windowsInfo.numberOfCores} CORE";
    } else if (Platform.isLinux) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var linuxInfo = await deviceInfo.linuxInfo;
      return linuxInfo.machineId ?? "";
    } else if (Platform.isAndroid) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var androidInfo = await deviceInfo.androidInfo;
      return androidInfo.hardware;
    } else if (Platform.isIOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var iosInfo = await deviceInfo.iosInfo;
      return iosInfo.model;
    } else {
      return "UNKNOWN PROCESSOR";
    }
  }

  Future<String> memory() async {
    if (Platform.isMacOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var macOsInfo = await deviceInfo.macOsInfo;
      return formatBytes(macOsInfo.memorySize, 2);
    } else if (Platform.isWindows) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var windowsInfo = await deviceInfo.windowsInfo;
      return formatBytes((windowsInfo.systemMemoryInMegabytes * 1024 * 1024), 2);
    } else if (Platform.isLinux) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var linuxInfo = await deviceInfo.linuxInfo;
      return linuxInfo.machineId ?? "";
    } else if (Platform.isAndroid) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var androidInfo = await deviceInfo.androidInfo;
      return androidInfo.device;
    } else if (Platform.isIOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      var iosInfo = await deviceInfo.iosInfo;
      return iosInfo.localizedModel;
    } else {
      return "UNKNOWN MEMORY";
    }
  }


  Future<String> diskSpace() async {
    final diskSpace = DiskSpace();
    // scan for disks in the system
    await diskSpace.scan();
    // list of disks in the system
    var disks = diskSpace.disks;

    // Prints the device path, mount path, and total size of each disk in system.
    for (final disk in disks) {
      print("disk: $disk");
      print("disk: ${disk.mountPath}");
      if (disk.mountPath == "/System/Volumes/Data") {
        return "${formatBytes(disk.availableSpace, 2)} of ${formatBytes(disk.totalSize, 2)}";
      } else if (disk.mountPath == 'C:') {
        return "${formatBytes(disk.availableSpace, 2)} of ${formatBytes(disk.totalSize, 2)}";
      }
    }
    return "Not Supported";
  }

  Future<String> publicIPAddress() async {
    try {
      var shell = Shell(runInShell: true);
      // return the host public ip address
      return (await shell.run("curl http://ifconfig.me/ip")).outText;
    } catch (e) {
      print("found exception --> $e");
      return "Not Supported";
    }
  }

  Future<String> privateIPAddress() async {
    try {
      // return the host ip private address
      if (Platform.isMacOS) {
        var shell = Shell(runInShell: true);
        return (await shell.run("ipconfig getifaddr en0")).outText;
      } else if (Platform.isWindows) {
        String command = 'Get-NetIPAddress -InterfaceAlias "Wi-Fi" -AddressFamily "IPv4" | Select-Object -ExpandProperty IPAddress';
        List<ProcessResult> result = await SimpleCommandExecuter.run("powershell -c ${shellArgument(command)}");
        return result.outText;
      } else {
        return "UNKNOWN IP";
      }

    } catch (e) {
      print("found exception --> $e");
      return "Not Supported";
    }
  }
}