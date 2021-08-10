import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';

class SpaceTierPayments {


  _getOldSubscription() {

  }

  GooglePlayPurchaseParam getTierGooglePlayPurchaseParams(ProductDetails productDetails) {
    return GooglePlayPurchaseParam(
        productDetails: productDetails,
        applicationUserName: null,
        changeSubscriptionParam: null);
  }

}