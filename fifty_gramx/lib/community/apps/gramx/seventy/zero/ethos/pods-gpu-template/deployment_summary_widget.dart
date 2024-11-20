import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SummaryCard extends StatelessWidget {
  final String title;
  final List<String> details;

  SummaryCard({required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        depth: -6,
        disableDepth: true,
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.all(Radius.circular(24)),
        ),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundTertiary(context),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w400,
              color: AppColors.contentPrimary(context),
            ),
          ),
          SizedBox(height: 8),
          ...details.map(
            (detail) => Padding(
              padding: EdgeInsets.symmetric(vertical: 4),
              child: Text(
                detail,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,
                  color: AppColors.contentSecondary(context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DeploymentSummaryRow extends StatelessWidget {
  final String pricingCpuCost;
  final String pricingDiskCost;
  final String podName;
  final String podRamCpu;
  final String podDisk;

  DeploymentSummaryRow({
    required this.pricingCpuCost,
    required this.pricingDiskCost,
    required this.podName,
    required this.podRamCpu,
    required this.podDisk,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: SummaryCard(
              title: "Pricing Summary",
              details: [
                "Processing Cost: $pricingCpuCost / hr",
                "Storage Cost: $pricingDiskCost / hr",
              ],
            ),
            flex: 1,
          ),
          SizedBox(width: 16), // Space between the cards
          Expanded(
            flex: 1,
            child: SummaryCard(
              title: "Pod Summary",
              details: [
                podRamCpu,
                "Total Disk: $podDisk",
              ],
            ),
          ),
        ],
      ),
    );
  }
}
