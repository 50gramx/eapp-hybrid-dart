import 'package:fifty_gramx/protos/google/protobuf/timestamp.pb.dart';
import 'package:intl/intl.dart';

class DateTimeService {
  String getFormattedTimeOrDate(Timestamp timestamp) {
    final now = DateTime.now().toLocal();

    var outputFormat;
    var outputDate;

    int differenceInDays = now.difference(timestamp.toDateTime()).inDays;
    int differenceInHours = now.difference(timestamp.toDateTime()).inHours;

    if (differenceInHours > 24) {
      if (differenceInDays == 1) {
        outputFormat = DateFormat('EEEE');
        outputDate = "Yesterday";
      } else if (differenceInDays > 1 && differenceInDays < 7) {
        outputFormat = DateFormat('EEEE');
        outputDate = outputFormat.format(timestamp.toDateTime().toLocal());
      } else if (differenceInDays >= 7 && differenceInDays < 365) {
        outputFormat = DateFormat('MMMMd');
        outputDate = outputFormat.format(timestamp.toDateTime().toLocal());
      } else {
        outputFormat = DateFormat('dd/MM/yyyy');
        outputDate = outputFormat.format(timestamp.toDateTime().toLocal());
      }
    } else {
      outputFormat = DateFormat('hh:mm a');
      outputDate = outputFormat.format(timestamp.toDateTime().toLocal());
    }
    return outputDate;
  }

  String getHourMinuteWithMarker(Timestamp timestamp) {
    return DateFormat('hh:mm a').format(timestamp.toDateTime().toLocal());
  }
}
