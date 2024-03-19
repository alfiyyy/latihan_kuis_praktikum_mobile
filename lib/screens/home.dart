import 'package:flutter/material.dart';
import 'package:latihan_kuis_praktikum_mobile/data/data.dart';
import 'package:latihan_kuis_praktikum_mobile/screens/detail.dart';
import 'package:latihan_kuis_praktikum_mobile/screens/login.dart';

class Home extends StatelessWidget {
  const Home({super.key}); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
        }, icon: Icon(Icons.logout)), 
        backgroundColor: Colors.grey.shade300,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.black), 
        ),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (_, index) => Container(
          height: 100,
          width: 200,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Detail(
                          detail: tourismPlaceList[index],
                        )), 
              );
            },
            child: Column(
              children: [
                Image.asset(
                  tourismPlaceList[index].imageAsset,
                  height: 100,
                ),
                Text(
                  tourismPlaceList[index].name,
                ),
                Text(
                  tourismPlaceList[index].location,
                )
              ],
            ),
          ),
        ),
        itemCount: tourismPlaceList.length, 
      ),
    );
  }
}