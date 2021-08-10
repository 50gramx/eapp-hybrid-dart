import 'package:in_app_purchase/in_app_purchase.dart';

class EthosCoinPayments {

  PurchaseParam getEthosCoinPurchaseParam(ProductDetails productDetails) {
    return PurchaseParam(productDetails: productDetails);
  }
}