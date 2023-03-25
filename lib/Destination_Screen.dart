import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
              child: Stack(
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
                          offset: Offset(0, 3),
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
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
