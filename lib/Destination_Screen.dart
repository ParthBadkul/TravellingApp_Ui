import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hey/models/activity_model.dart';
import "models/destination_model.dart";

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen({required this.destination});

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .4,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(3, 3),
                          blurRadius: 20,
                        )
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.destination.imageUrl),
                      ),
                    ),
                  ),
                  // Spacer(),

                  // alignment: Alignment.bottomLeft,
                  Positioned(
                    left: 0,
                    top: 230,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            widget.destination.city,
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.4,
                              color: Color.fromARGB(255, 255, 254, 254),
                              backgroundColor: Colors.black26,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.airplanemode_on_rounded,
                                size: 30,
                                color: Color.fromARGB(255, 255, 255, 254),
                              ),
                            ),
                            Text(
                              widget.destination.country,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.2,
                                backgroundColor: Colors.black26,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                  Positioned(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: IconButton(
                            onPressed: () {
                              return Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new_sharp,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.6,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                          ),
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.sortAmountDownAlt,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.destination.activities.length,
                itemBuilder: (context, index) {
                  Activity activity = widget.destination.activities[index];
                  return Stack(
                    children: [
                      Container(
                        // color: Colors.red,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(left: 5, right: 5),
                        margin: EdgeInsets.all(5),
                        child: Card(
                          elevation: 24,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          )),
                          // color: Colors.amber,
                          child: Row(
                            children: [
                              Container(
                                // color: Colors.red,
                                // decoration: BoxDecoration(boxShadow: [
                                //   BoxShadow(
                                //     blurRadius: 1,
                                //     offset: Offset(-13, 0),
                                //     color: Colors.black26,
                                //   )
                                // ]),
                                width: 170,
                                height: 200,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        topRight: Radius.elliptical(6, 7),
                                        bottomRight: Radius.elliptical(7, 6)),
                                  ),
                                  elevation: 10,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        topRight: Radius.elliptical(6, 7),
                                        bottomRight: Radius.elliptical(7, 6)),
                                    child: Image.asset(
                                      activity.imageUrl,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        padding: EdgeInsets.only(
                                          left: 10,
                                          top: 10,
                                        ),
                                        width: 100,
                                        child: Text(
                                          activity.name,
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            width: 70,
                                            padding: EdgeInsets.only(
                                              top: 11,
                                            ),
                                            child: Text(
                                              "₹ ${activity.price * 80}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 2),
                                            child: Text(
                                              'per pax',
                                              style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: 12,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 2,
                                      left: 4,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      activity.type,
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 2,
                                      left: 4,
                                    ),
                                    padding: EdgeInsets.all(5),
                                    child: Text('Raiting'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
