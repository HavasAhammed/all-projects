class Cart {

  late final int? id;
  final String? productId;
  final String? productName;
  final int? initialPrice;
  final int? productPrice;
  final int? quantity;
  final String? brandName;
  final String? image;

  Cart({
    required this.id,
    required this.productId,
    required this.productName,
    required this.initialPrice,
    required this.productPrice,
    required this.quantity,
    required this.brandName,
    required this.image
  });

  Cart.fromMap(Map<dynamic, dynamic> res)
  : id = res['id'],
  productId = res["productId"],
  productName = res["productName"],
  initialPrice = res["initialPrice"],
  productPrice = res["productPrice"],
  quantity = res["quantity"],
  brandName = res["brandName"],
  image = res["image"];

  Map<String, Object?> toMap(){
    return {
      'id' : id,
      'productId' : productId,
      'productName' : productName,
      'initialPrice' : initialPrice,
      'productPrice' : productPrice,
      'quantity' : quantity,
      'brandName' : brandName,
      'image' : image



    };
  }
}

