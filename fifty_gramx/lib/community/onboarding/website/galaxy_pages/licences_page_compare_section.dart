import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Container/NeuContainer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildGalaxyLicencesPageCompareSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      SizedBox(
        height: 64,
      ),
      // Title
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          'Compare access across licences',
          style: TextStyle(
              color: AppColors.contentPrimary(context),
              fontSize: 32,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
              height: 1.14285714),
          textAlign: TextAlign.start,
        ),
      ),
      SizedBox(
        height: 32,
      ),
      // Feature Comparison Table
      NeuContainer(
        containerChild: Table(
          border: TableBorder.symmetric(
              inside: BorderSide(color: AppColors.backgroundTertiary(context))),
          children: [
            // Table Header
            TableRow(
              children: [
                buildTableCell('', context),
                buildTableCell('Personal', context),
                buildTableCell('Professional', context),
                buildTableCell('Organisation', context),
              ],
            ),

            // Table Rows (Features)
            buildFeatureRow(
                'Access Ethosverse Browser', '✓', '✓', '✓', context),
            buildFeatureRow('Access Knowledge Domains', '✓', '✓', '✓', context),
            buildFeatureRow('Access Service Domains', '✓', '✓', '✓', context),
            buildFeatureRow('Access Product Domains', '✓', '✓', '✓', context),
            buildFeatureRow('Access Things Domains', '✓', '✓', '✓', context),
            buildFeatureRow('Pooled Star Nodes', '✓', '', '', context),
            buildFeatureRow('Dedicated Star Nodes', '', '✓', '✓', context),
            buildFeatureRow('Account Invitations', '3', '50', '', context),
            buildFeatureRow('Associate Invitations', '', '', '250', context),
            buildFeatureRow('Team Invitations', '', '', '50', context),
            buildFeatureRow('Access Domain Coins', '✓', '✓', '✓', context),
            buildFeatureRow('Access Domain Cards', '', '✓', '✓', context),
            buildFeatureRow('Access Practice Pass', '', '', '✓', context),
            buildFeatureRow('Dedicated Practice Pass', '', '', '✓', context),
          ],
        ),
      ),
    ],
  );
}

Widget buildTableCell(String text, BuildContext context,
    {bool header = false}) {
  Widget paddedChild = Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(text,
        textAlign: header ? TextAlign.start : TextAlign.center,
        style: TextStyle(
            color: AppColors.contentPrimary(context),
            fontSize: 18,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            height: 1.14285714)),
  );
  return TableCell(
    child: header ? paddedChild : Center(child: paddedChild),
  );
}

TableRow buildFeatureRow(String feature, String planA, String planB,
    String planC, BuildContext context) {
  return TableRow(
    children: [
      buildTableCell(feature, context, header: true),
      buildTableCell(planA, context),
      buildTableCell(planB, context),
      buildTableCell(planC, context),
    ],
  );
}
