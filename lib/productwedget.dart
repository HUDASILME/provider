import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagment/My_provider.dart';
import 'package:statemanagment/product_model.dart';

class Productwedget extends StatelessWidget {
  ProductModel productModel;
  int index;
  Productwedget(this.productModel, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Stack(children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            productModel.imgeUrl,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Provider.of<Myprovider>(context, listen: false)
                      .addToFavarit(index);
                },
                child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.3),
                    child: Icon(
                      Icons.favorite,
                      color:
                          productModel.isfavorite ? Colors.red : Colors.white,
                    )),
              ),
              Text(productModel.name),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<Myprovider>(context, listen: false)
                        .addTocart(index);
                  },
                  child: Text('add to cart'))
            ],
          ),
        )
      ]),
    );
  }
}
