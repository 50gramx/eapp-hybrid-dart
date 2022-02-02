/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

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
