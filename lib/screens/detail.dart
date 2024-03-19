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
          leading: IconButton(onPressed: () {Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back_ios_new_rounded)),
          backgroundColor: Colors.grey.shade300,
          title: Text(
            widget.detail.name,
            style: TextStyle(color: Colors.black), 
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.network(
                      widget.detail.imageUrls[0],
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    Icon(Icons.access_time_outlined),
                    Text(widget.detail.openDays),
                  ],
                ),
                Column(
                  children: [
                    Image.network(
                      widget.detail.imageUrls[1],
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    Icon(Icons.access_time_filled_outlined),
                    Text(widget.detail.openTime),
                  ],
                ),
                Column(
                  children: [
                    Image.network(
                      widget.detail.imageUrls[2],
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    Icon(Icons.money),
                    Text(widget.detail.ticketPrice),
                  ],
                ),
              ],
            ),
            Text(widget.detail.description),
          ],
        ));
  }
}

