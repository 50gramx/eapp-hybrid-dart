import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:flutter/widgets.dart';

class FreeTierDropDownRichText extends StatelessWidget {
  const FreeTierDropDownRichText({
    Key? key,
    required this.tierName,
  }) : super(key: key);

  final String tierName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.backgroundInverseSecondary(context),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 2, bottom: 2, right: 8, left: 8),
        child: Text(tierName,
            style: TextStyle(
                color: AppColors.contentInversePrimary(context),
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                height: 1.14285714)),
      ),
    );
  }
}