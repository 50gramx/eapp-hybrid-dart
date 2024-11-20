import 'package:eapp_dart_domain/ethos/elint/collars/DC499999999.pb.dart'
    as DC499999999_pb;
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class InstanceType extends StatefulWidget {
  final String title;
  final String clockSpeed;
  final String memoryType;
  final String storage;
  final List<InstanceOption> options;
  final Function(InstanceOption)? onOptionSelected; // Define callback

  InstanceType({
    required this.title,
    required this.clockSpeed,
    required this.memoryType,
    required this.storage,
    required this.options,
    this.onOptionSelected, // Initialize callback
  });

  @override
  _InstanceTypeState createState() => _InstanceTypeState();
}

class _InstanceTypeState extends State<InstanceType> {
  int? _selectedOptionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
                color: AppColors.contentPrimary(context),
              ),
            ),
            Text(
              '${widget.clockSpeed} • ${widget.memoryType} • ${widget.storage}',
              style: TextStyle(
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w300,
                color: AppColors.contentSecondary(context),
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        Wrap(
          alignment: WrapAlignment.start,
          spacing: 8,
          runSpacing: 8,
          children: widget.options.asMap().entries.map((entry) {
            int index = entry.key;
            InstanceOption option = entry.value;

            bool isSelected = _selectedOptionIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedOptionIndex = index;
                });
                if (widget.onOptionSelected != null) {
                  widget.onOptionSelected!(option); // Trigger callback
                }
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: BorderSide(
                      color: isSelected
                          ? AppColors.backgroundInversePrimary(
                              context) // Highlight color when selected
                          : AppColors.backgroundSecondary(context),
                      width: 2),
                ),
                color: isSelected
                    ? AppColors.backgroundPrimary(
                        context) // Different background color if selected
                    : AppColors.backgroundSecondary(context),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: option.price,
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                color: isSelected
                                    ? AppColors.contentPrimary(context)
                                    : AppColors.contentPrimary(context),
                              ),
                            ),
                            TextSpan(
                              text: ' /hr',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                color: isSelected
                                    ? AppColors.contentPrimary(context)
                                    : AppColors.contentSecondary(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        width: 120,
                        height: 1,
                        color: AppColors.contentStateDisabled(context),
                      ),
                      SizedBox(height: 6),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: option.vcpus,
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                color: isSelected
                                    ? AppColors.contentPrimary(context)
                                    : AppColors.contentPrimary(context),
                              ),
                            ),
                            TextSpan(
                              text: ' vCPUs',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                color: isSelected
                                    ? AppColors.contentPrimary(context)
                                    : AppColors.contentSecondary(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "${option.ram} GB",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w500,
                                color: isSelected
                                    ? AppColors.contentPrimary(context)
                                    : AppColors.contentPrimary(context),
                              ),
                            ),
                            TextSpan(
                              text: ' RAM',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                color: isSelected
                                    ? AppColors.contentPrimary(context)
                                    : AppColors.contentSecondary(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class InstanceOption {
  final String price;
  final String vcpus;
  final String storage;
  final String ram;
  final DC499999999_pb.ResourceLimits resourceLimits;

  InstanceOption({
    required this.price,
    required this.vcpus,
    required this.storage,
    required this.ram,
    required this.resourceLimits,
  });
}
