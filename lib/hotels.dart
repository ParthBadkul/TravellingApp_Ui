import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:hey/models/hotel_model.dart';
import 'DestinationCoursle.dart';

class TopHotels extends StatelessWidget {
  const TopHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.all(5),
        padding: EdgeInsets.only(top: 10, left: 0, right: 10),
        margin: EdgeInsets.only(
          left: 5,
        ),
        height: 280,
        // color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text(
                    'Top Hotels',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(right: 15, left: 5),
                    child: Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.green[600],
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              // padding: EdgeInsets.all(2),
              // color: Colors.amber,

              // margin: EdgeInsets.all(10),
              height: 280,
              // width: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hotels.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    child: (Card(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // color: Color.fromARGB(255, 168, 13, 13),
                        margin: EdgeInsets.all(2),
                        // padding: EdgeInsets.all(3),
                        height: 200,
                        width: 180,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(blurRadius: 05),
                                  ]),

                              width: 180,

                              // padding: EdgeInsets.all(10),
                              height: 180,

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  hotels[index].imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8, top: 10),
                              child: Text(
                                hotels[index].name,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 180,
                                  ),
                                  Row(
                                    children: [
                                      Text('PRICE',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.3)),
                                      Spacer(),
                                      Text(
                                        '₹${hotels[index].price.toString()}',
                                        style: TextStyle(
                                          fontSize: 13,
                                          letterSpacing: 1.5,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.greenAccent,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(hotels[index].address),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                  );
                },
              ),
            )
          ],
        ));
  }
}
