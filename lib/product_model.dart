class ProductModel {
  String name;
  num price;
  String imgeUrl;
  bool isfavorite;
  bool istocart;
  ProductModel(
      {this.name,
      this.imgeUrl,
      this.price,
      this.isfavorite = false,
      this.istocart = false});
}
