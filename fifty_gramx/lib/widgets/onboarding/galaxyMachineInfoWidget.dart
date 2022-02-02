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

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:flutter/cupertino.dart';

class GalaxyMachineInfoWidget extends StatefulWidget {
  const GalaxyMachineInfoWidget({Key? key,
    required this.machinePodName,
    required this.machineTypeName,
    this.isMachinePodDomain = false,
    required this.machineMetaCount,
    required this.machineMetaLabel,
  }) : super(key: key);

  final String machinePodName;
  final String machineTypeName;
  final bool isMachinePodDomain;
  final int machineMetaCount;
  final String machineMetaLabel;



  @override
  State<GalaxyMachineInfoWidget> createState() =>
      _GalaxyMachineInfoWidgetState();
}

class _GalaxyMachineInfoWidgetState extends State<GalaxyMachineInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: RichText(
              text: TextSpan(
                text: "${widget.machineMetaCount}",
                style: TextStyle(
                    color: AppColors.contentPrimary(context),
                    fontSize: 32,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                    height: 1.14285714),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
            child: RichText(
              text: TextSpan(
                text: "${widget.machineTypeName}",
                style: TextStyle(
                    color: AppColors.contentPrimary(context),
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    height: 1.14285714),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
            child: RichText(
              text: TextSpan(
                text: widget.machinePodName,
                style: TextStyle(
                    color: AppColors.contentTertiary(context),
                    fontSize: 12,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    height: 1.14285714),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: AppColors.backgroundInverseTertiary(context),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
              child: RichText(
                text: TextSpan(
                  text: widget.machineMetaLabel,
                  style: TextStyle(
                      color: AppColors.contentInversePrimary(context),
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      height: 1.14285714),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
