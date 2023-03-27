import 'package:flutter/material.dart';
import 'package:hey/models/destination_model.dart';
import 'package:hey/models/hotel_model.dart';
import 'package:hey/models/activity_model.dart';
import 'Destination_Screen.dart';

class DestinationCoursel extends StatelessWidget {
  const DestinationCoursel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Top Destinations ",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 2),
              ),
              GestureDetector(
                onTap: () {
                  print('See All');
                },
                child: Text(
                  "See All",
                  style: TextStyle(
                    color: Colors.green[600],
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(left: 5, right: 15),
          height: 330,
          // color: Colors.amber,
          child: ListView.builder(
            itemCount: destinations.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DestinationScreen(destination: destinations[index]);
                  }));
                },
                child: Card(
                  margin: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            // color: Colors.amber,
                            boxShadow: [
                              BoxShadow(blurRadius: 05),
                            ]),
                        // width: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            destinations[index].imageUrl,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                bottom: 15, left: 05, top: 5, right: 5),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  destinations[index].city,
                                  style: TextStyle(
                                      letterSpacing: 1.2,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 130,
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 6),
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    destinations[index].country,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin:
                                EdgeInsets.only(top: 10, bottom: 10, left: 10),
                            // color: Colors.amber,
                            child: Text(
                              '${destinations[index].city.length}  Activities',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                          Container(
                            width: 180,
                            // color: Colors.amber,
                          ),
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Container(
                              height: 40,
                              width: 90,
                              margin: EdgeInsets.all(10),
                              child: Text(
                                destinations[index].description,
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.blueGrey[600],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
