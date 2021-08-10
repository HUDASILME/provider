import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:statemanagment/product_model.dart';

class Myprovider extends ChangeNotifier {
  List<ProductModel> productsFavorite = [];
  setFavaritProduct() {
    this.productsFavorite =
        products.where((element) => element.isfavorite).toList();
    notifyListeners();
  }

  addToFavarit(int index) {
    products[index].isfavorite = !products[index].isfavorite;
    setFavaritProduct();
  }

  List<ProductModel> productscart = [];
  setcartProduct() {
    this.productscart = products.where((element) => element.istocart).toList();
    notifyListeners();
  }

  addTocart(int index) {
    products[index].istocart = !products[index].istocart;

    setcartProduct();
  }

  List<ProductModel> products = [
    ProductModel(
      name: 'tree',
      imgeUrl:
          'https://images.unsplash.com/photo-1621760010577-384baf0ca724?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
      price: 200,
    ),
    ProductModel(
      name: 'tree',
      imgeUrl:
          'https://images.unsplash.com/photo-1626159222245-eb87faff05f6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80',
      price: 980,
    ),
    ProductModel(
      name: 'bbfccs',
      imgeUrl:
          'https://images.unsplash.com/photo-1618578906891-86e569eefe7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80',
      price: 8900,
    ),
    ProductModel(
      name: 'eeddaa',
      imgeUrl:
          'https://images.unsplash.com/photo-1621760010577-384baf0ca724?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
      price: 4600,
    ),
    ProductModel(
      name: 'ewfw',
      imgeUrl:
          'https://images.unsplash.com/photo-1624571409412-1f253e1ecc89?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
      price: 1600,
    ),
    ProductModel(
      name: 'dsvzs',
      imgeUrl:
          'https://images.unsplash.com/photo-1621760010577-384baf0ca724?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
      price: 900,
    ),
    ProductModel(
      name: 'table',
      imgeUrl:
          'https://images.unsplash.com/photo-1625706980423-aee412bb768f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
      price: 550,
    )
  ];

  String text = 'initial value';
  changeTextValue(String value) {
    this.text = value;
    notifyListeners();
  }
}
