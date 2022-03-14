import 'package:flutter/material.dart';
import '../models/recipts.dart';

class ReciptsItems extends StatelessWidget {
  // const ReciptsItems({Key? key}) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexilty complexity;
  final Affordability affordability;

  ReciptsItems(
      {required this.id,
      required this.title,
      required this.affordability,
      required this.complexity,
      required this.duration,
      required this.imageUrl});

  void selectRecipts() {}
  @override
  Widget build(BuildContext context) {
    Padding _buildTitleSection() {
      return Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.timer, size: 20.0),
                SizedBox(width: 5.0),
                Text(
                  duration.toString(),
                ),

                SizedBox(width: 20.0),

                Icon(Icons.work, size: 20.0),
                SizedBox(width: 5.0),
                Text(
                  complexity.toString().split('.')[1],
                ),

                SizedBox(width: 20.0),

                Icon(Icons.attach_money, size: 20.0),
                SizedBox(width: 5.0),
                Text(
                  affordability.toString().split('.')[1],
                ),
              ],
            ),
          ],
        ),
      );
    }
    return InkWell(
      onTap: selectRecipts,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 10,
        margin: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 250,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    )
                  )
                ),
              ],
            ),
            _buildTitleSection(),
          ],
        ),
      ),
    );
  }
}
