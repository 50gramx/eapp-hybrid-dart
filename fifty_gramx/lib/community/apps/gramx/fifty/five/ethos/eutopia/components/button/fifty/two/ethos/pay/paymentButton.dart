import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PaymentButton extends StatefulWidget {
  @override
  const PaymentButton({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productTenure,
    required this.buttonActionOnPressed,
    final this.isPrimaryButton = false,
    final this.isPrimaryButtonDisabled = false,
    final this.noBorder = false,
  }) : super(key: key);

  final String productName;
  final int productPrice;
  final String productTenure;
  final VoidCallback buttonActionOnPressed;
  final bool isPrimaryButton;
  final bool isPrimaryButtonDisabled;
  final bool noBorder;

  @override
  State<PaymentButton> createState() => _PaymentButtonState();
}

class _PaymentButtonState extends State<PaymentButton> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
        provideHapticFeedback: true,
        onPressed: () {
          if (!widget.isPrimaryButtonDisabled) {
            widget.buttonActionOnPressed();
          }
        },
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: widget.isPrimaryButton
              ? (widget.isPrimaryButtonDisabled
              ? AppColors.contentStateDisabled(context)
              : AppColors.contentPrimary(context))
              : AppColors.backgroundSecondary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundPrimary(context),
            width: widget.noBorder ? 0 : 2,
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 8), child: Text(
              "Buy ${widget.productName}",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: widget.isPrimaryButton
                      ? AppColors.contentInversePrimary(context)
                      : AppColors.contentPrimary(context),
                  fontSize: 18,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700),
            ),),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8), child: Text(
              "${widget.productPrice} EC/${widget.productTenure}",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: widget.isPrimaryButton
                      ? AppColors.contentInversePrimary(context)
                      : AppColors.contentPrimary(context),
                  fontSize: 18,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700),
            ),),
          ],
        ));
  }
}
