import 'dart:convert';

class CartItem {
  CartItem({
    this.cartProductID,
    required this.cartProductName,
    required this.cartProductPicture,
    this.cartProductPrice,
    this.cartProductSize,
    this.cartProductColor,
    required this.cartProductQuantity,
    this.itemCartIndex = -1,
    this.uniqueCheck,
    this.subTotal,
  });

  dynamic cartProductID;
  String cartProductName;
  String cartProductPicture;
  dynamic cartProductPrice;
  dynamic cartProductSize;
  dynamic cartProductColor;
  int cartProductQuantity;
  int itemCartIndex;
  dynamic uniqueCheck;
  dynamic subTotal;

  factory CartItem.fromJson(String str) => CartItem.fromMap(json.decode(str));
  String toJson() => json.encode(toMap());
  factory CartItem.fromMap(Map<String, dynamic> json) => CartItem(
    cartProductPicture: json["cartProductPicture"],
        cartProductID: json["cartProductID"],
        cartProductName: json["cartProductName"],
        cartProductPrice: json["cartProductPrice"],
        subTotal: json["sub_total"],
        uniqueCheck: json["unique_check"],
        cartProductQuantity: json["cartProductQuantity"] == null
            ? null
            : json["cartProductQuantity"],
        itemCartIndex:
            json["item_cart_index"] == null ? null : json["item_cart_index"],
      );
  Map<String, dynamic> toMap() => {
        "cartProductPicture":cartProductPicture,
        "cartProductID": cartProductID,
        "cartProductName": cartProductName,
        "cartProductPrice": cartProductPrice,
        "sub_total": subTotal,
        "unique_check": uniqueCheck,
        "cartProductQuantity": cartProductQuantity == 0 ? null : cartProductQuantity,
        "item_cart_index": itemCartIndex,
      };
}
