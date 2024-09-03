import 'dart:js' as js;

String getOSName() {
  final userAgent = js.context['navigator']['userAgent'] as String;
  if (userAgent.contains('Mac OS')) {
    return 'macOS';
  } else if (userAgent.contains('Windows')) {
    return 'Windows';
  } else if (userAgent.contains('Linux')) {
    return 'Linux';
  } else {
    return 'Unknown OS';
  }
}
