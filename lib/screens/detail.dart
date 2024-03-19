import 'package:flutter/material.dart';
import 'package:latihan_kuis_praktikum_mobile/data/data.dart';

class Detail extends StatefulWidget {
  final TourismPlace detail;

  Detail({required this.detail});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded)),
          backgroundColor: Colors.grey.shade300,
          title: Text(
            widget.detail.name,
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 160,
              child: Expanded(
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            Image.network(
                              widget.detail.imageUrls[index],
                              height: 100,
                              width: 200,
                            ),
                            (index == 0)
                                ? Column(
                                    children: [
                                      Icon(Icons.access_time_outlined),
                                      Text(widget.detail.openDays)
                                    ],
                                  )
                                : (index == 1)
                                    ? Column(
                                        children: [
                                          Icon(Icons
                                              .access_time_filled_outlined),
                                          Text(widget.detail.openTime)
                                        ],
                                      )
                                    : (index == 2)
                                        ? Column(
                                            children: [
                                              Icon(Icons.money),
                                              Text(widget.detail.ticketPrice),
                                            ],
                                          )
                                        : SizedBox()
                          ],
                        );
                      }))),
            ),
            Text(widget.detail.description),
          ],
        ));
  }
}
