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
import 'package:fifty_gramx/widgets/components/Container/NeuContainer.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:flutter/cupertino.dart';

/// This is the stateful widget that the main application instantiates.
class PriceChartWidget extends StatefulWidget {
  const PriceChartWidget({
    Key? key,
    required this.heading,
    required this.rowHeadingList,
    required this.subRowHeadingList,
    required this.masterColumnHeadings,
    required this.subMasterColumnHeadings,
    required this.subMasterColumnValues,
    required this.selectedColumnIndex,
  }) : super(key: key);

  final String heading;
  final List<String> rowHeadingList;
  final List<List<String>> subRowHeadingList;
  final List<String> masterColumnHeadings;
  final List<List<String>> subMasterColumnHeadings;
  final List<List<List<String>>> subMasterColumnValues;
  final int selectedColumnIndex;

  @override
  State<PriceChartWidget> createState() => _PriceChartWidgetState();
}

class _PriceChartWidgetState extends State<PriceChartWidget> {
  double rowHeadingHeight = 16.0;
  double subRowHeadingHeight = 24.0;
  double columnMasterHeadingHeight = 20.0;
  double columnSubMasterHeadingHeight = 20.0;
  double columnSubMasterValueHeight = 24.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  widget.heading,
                  textAlign: TextAlign.left,
                  style: AppTextStyle.appTextStyle(context,
                      AppColors.contentSecondary(context), 14, FontWeight.w600),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                  height: ((2.0 * subRowHeadingHeight)) * widget.rowHeadingList.length + (columnMasterHeadingHeight + columnSubMasterHeadingHeight) + 6,
                  // width: 180,
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    removeRight: true,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: widget.rowHeadingList.length + 1,
                        itemBuilder: (BuildContext context, int index) {
                          if (index == 0) {
                            return SizedBox(height: (columnMasterHeadingHeight + columnSubMasterHeadingHeight));
                          } else {
                            return SizedBox(
                              height: ((2.0 * subRowHeadingHeight)),
                              child: Container(
                                  child: MediaQuery.removePadding(
                                    context: context,
                                    removeTop: true,
                                    child: ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                        widget.subRowHeadingList[index - 1].length,
                                        itemBuilder:
                                            (BuildContext context, int subIndex) {
                                          return SubRowHeading(
                                            heading: widget.subRowHeadingList[index - 1][subIndex],
                                          );
                                        }),
                                  )),
                            );
                          }
                        }),
                  )),
            ),
            Expanded(
              child: SizedBox(
                child: Column(
                  children: [
                    SizedBox(
                      height: ((2.0 * subRowHeadingHeight)) * widget.rowHeadingList.length + (columnMasterHeadingHeight + columnSubMasterHeadingHeight) + 6,
                      width: 120.0,
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.masterColumnHeadings.length,
                          itemBuilder: (BuildContext context, int horIndex) {
                            return SizedBox(
                                height: ((2.0 * subRowHeadingHeight)) * widget.rowHeadingList.length, // warn: considering 2 subRow
                                width: 80.0 * widget.subMasterColumnHeadings[horIndex].length,
                                child: Container(
                                  child: MediaQuery.removePadding(
                                    context: context,
                                    removeTop: true,
                                    child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: 2,
                                      itemBuilder:
                                          (BuildContext context, int verIndex) {
                                        if (verIndex == 0) {
                                          return ColumnMasterHeading(
                                            heading: widget
                                                .masterColumnHeadings[horIndex],
                                          );
                                        } else {
                                          return SizedBox(
                                            height: subRowHeadingHeight +
                                                (((2.0 * subRowHeadingHeight)) *
                                                    widget.rowHeadingList.length), // warn: considering 2 items
                                            width: 80,
                                            child: Container(
                                                child: MediaQuery.removePadding(
                                                  context: context,
                                                  removeTop: true,
                                                  child: ListView.builder(
                                                    scrollDirection: Axis.horizontal,
                                                    itemCount: widget
                                                        .subMasterColumnHeadings[
                                                    horIndex]
                                                        .length,
                                                    itemBuilder: (BuildContext context,
                                                        int subHorIndex) {
                                                      return SizedBox(
                                                        height: (columnSubMasterValueHeight * widget.subMasterColumnValues[horIndex][subHorIndex].length),
                                                        width: 80,
                                                        child: Container(
                                                          child: MediaQuery.removePadding(
                                                            context: context,
                                                            removeTop: true,
                                                            child: ListView.builder(
                                                              scrollDirection:
                                                              Axis.vertical,
                                                              itemCount: widget
                                                                  .rowHeadingList
                                                                  .length +
                                                                  1,
                                                              itemBuilder:
                                                                  (BuildContext context,
                                                                  int subVerIndex) {
                                                                if (subVerIndex == 0) {
                                                                  return ColumnSubMasterHeading(
                                                                    heading:
                                                                    widget.subMasterColumnHeadings[
                                                                    horIndex]
                                                                    [subHorIndex],
                                                                    headingSelected: widget.selectedColumnIndex == horIndex,
                                                                  );
                                                                } else {
                                                                  return SizedBox(
                                                                      height: (columnSubMasterValueHeight * widget.subMasterColumnValues[horIndex][subHorIndex].length),
                                                                      width: 60,
                                                                      child: Container(
                                                                          child: MediaQuery.removePadding(
                                                                            context: context,
                                                                            removeTop: true,
                                                                            child: ListView.builder(
                                                                              itemCount: widget.subMasterColumnValues[horIndex][subHorIndex].length,
                                                                              itemBuilder: (BuildContext context, int subVerSubIndex) {
                                                                                return ColumnSubMasterValue(
                                                                                  value: widget.subMasterColumnValues[
                                                                                  horIndex]
                                                                                  [subVerIndex - 1]
                                                                                  [subVerSubIndex],
                                                                                  valueSelected: widget.selectedColumnIndex == horIndex,
                                                                                );
                                                                              },
                                                                            ),
                                                                          )
                                                                      )
                                                                  );
                                                                }
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                )),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class RowHeading extends StatelessWidget {
  @override
  const RowHeading({Key? key, required this.heading})
      : super(key: key);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.0,
      child: Center(
        child: Text(
          heading,
          textAlign: TextAlign.center,
          style: AppTextStyle.appTextStyle(
              context,
              AppColors.contentTertiary(context),
              12,
              FontWeight.w600),
        ),
      )
    );
  }
}

class SubRowHeading extends StatelessWidget {
  @override
  const SubRowHeading({Key? key, required this.heading}) : super(key: key);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.0,
      child: Center(
        child: Text(
          heading,
          textAlign: TextAlign.center,
          style: AppTextStyle.appTextStyle(
              context, AppColors.contentPrimary(context), 14, FontWeight.w400),
        ),
      )
    );
  }
}

class ColumnMasterHeading extends StatelessWidget {
  @override
  const ColumnMasterHeading({Key? key, required this.heading})
      : super(key: key);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      child: Text(
        heading,
        textAlign: TextAlign.center,
        style: AppTextStyle.appTextStyle(
            context, AppColors.contentTertiary(context), 14, FontWeight.w600),
      ),
    );
  }
}

class ColumnSubMasterHeading extends StatelessWidget {
  @override
  const ColumnSubMasterHeading({Key? key, required this.heading, required this.headingSelected})
      : super(key: key);

  final String heading;
  final bool headingSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      child: Text(
        heading,
        textAlign: TextAlign.center,
        style: AppTextStyle.appTextStyle(
            context, headingSelected ? AppColors.contentPrimary(context) : AppColors.contentSecondary(context), 14, headingSelected ? FontWeight.w600 : FontWeight.w400),
      ),
    );
  }
}

class ColumnSubMasterValue extends StatelessWidget {
  @override
  const ColumnSubMasterValue(
      {Key? key, required this.value, required this.valueSelected})
      : super(key: key);

  final String value;
  final bool valueSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Text(
        value,
        textAlign: TextAlign.center,
        style: AppTextStyle.appTextStyle(
            context,
            valueSelected
                ? AppColors.contentPrimary(context)
                : AppColors.contentSecondary(context),
            16,
            valueSelected ? FontWeight.w600 : FontWeight.w400),
      ),
    );
  }
}
