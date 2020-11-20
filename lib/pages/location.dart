import 'package:flutter/material.dart';
import 'package:travel_ui/widgets/appbar.dart';
import 'package:travel_ui/widgets/listItems.dart';
import 'package:travel_ui/widgets/card.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 10.0,
                top: 10.0,
                bottom: 10.0,
              ),
              child: Text(
                'Where are you\nGoing ?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Flexible(
              child: Container(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 260.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: AlwaysScrollableScrollPhysics(),
                            children: <Widget>[
                              ListItems(
                                  imgPath: 'assets/images/country/Greece.jpg',
                                  country: 'Greece',
                                  place: 'Crete Anthens Greece'),
                              ListItems(
                                  imgPath: 'assets/images/country/Dubai.jpg',
                                  country: 'Dubai',
                                  place: 'Marina Sheikh'),
                              ListItems(
                                  imgPath: 'assets/images/country/italy.jpg',
                                  country: 'Italy',
                                  place: 'Venice Gondola Cruise'),
                              ListItems(
                                  imgPath: 'assets/images/country/bahamas.jpg',
                                  country: 'Bahamas',
                                  place: 'Paradise Island bahamas'),
                              ListItems(
                                  imgPath: 'assets/images/country/france.jpg',
                                  country: 'France',
                                  place: 'Sofitel Hotel'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 15.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'All Trips',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'More ',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CardItem(
                            imgPath: 'assets/images/country/china.jpg',
                            place: 'Harbin Snow and Ice',
                            price: '€4750 ',
                            country: 'China'),
                            Divider(),
                        CardItem(
                            imgPath: 'assets/images/country/nigeria.jpg',
                            place: 'Victoria Island Lagos',
                            price: '€2000 ',
                            country: 'Nigeria'),
                                                      Divider(),

                        CardItem(
                            imgPath: 'assets/images/country/beninRb.jpg',
                            place: 'L\'hotel Marina, Cotonou',
                            price: '€475 ',
                            country: 'Benin Republic '),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
