import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pour_nous/app/helpers/global_variables.dart';

class ProductItem extends StatelessWidget {
  ProductItem(
      {Key? key,
      required this.listOfPhotos,
      required this.productDescription,
      required this.productValue,
      required this.onTapProduct})
      : super(key: key);

  List<String> listOfPhotos;
  String productDescription;
  String productValue;
  Function() onTapProduct;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTapProduct,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 0.0),
              blurRadius: 15.0,
              spreadRadius: 2.0,
              color: Colors.black.withOpacity(0.05),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(listOfPhotos[0], height: 200, fit: BoxFit.cover),
            OneSepators.verySmall,
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                productDescription,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                productValue,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
