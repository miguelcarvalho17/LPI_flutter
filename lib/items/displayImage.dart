import 'dart:io';
import 'package:flutter/material.dart';

class DisplayImage extends StatelessWidget {
  final String imagePath;

  // Constructor
  const DisplayImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Color.fromRGBO(64, 105, 225, 1);

    return Center(
        child: Stack(children: [
      buildImage(color),
      Positioned(
        child: buildEditIcon(color),
        right: 4,
        top: 10,
      )
    ]));
  }

  /*@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Profile Info'),
          backgroundColor: Color.fromRGBO(56, 180, 74, 1)),
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/images/fundo.jpeg", scale: 1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Center(
                        child: Text(
                          "Subject: ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ))),
                VerticalDivider(width: 0.5),
                Expanded(
                    child: Center(
                      child: Text(name),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Center(
                        child: Text(
                          "Type: ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ))),
                VerticalDivider(width: 0.5),
                Expanded(
                    child: Center(
                      child: Text(type),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Center(
                        child: Text(
                          "Teacher: ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ))),
                VerticalDivider(width: 0.5),
                Expanded(child: Center(child: Text(teacher))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Center(
                        child: Text(
                          "Class Time: ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ))),
                VerticalDivider(width: 0.5),
                Expanded(
                    child: Center(
                        child: Text(
                          startingTime.hour.toString() +
                              ":" +
                              startingTime.minute.toString() +
                              " - " +
                              endingTime.hour.toString() +
                              ":" +
                              endingTime.minute.toString(),
                        ))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Center(
                        child: Text(
                          "Classroom: ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ))),
                VerticalDivider(width: 0.5),
                Expanded(child: Center(child: Text(identifier.toString()))),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Scanner()));
          },
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Attend', style: TextStyle(fontSize: 15)),
        ),
      ),
    );
  }*/

  // Builds Profile Image
  Widget buildImage(Color color) {
    final image = imagePath.isEmpty
        ? 'assets/images/defaultPhoto.png'
        : imagePath;

    return CircleAvatar(
      radius: 75,
      backgroundColor: color,
      child: ClipOval(
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          width: 90,
          height: 90,
        ),
      ),
    );
  }

  // Builds Edit Icon on Profile Picture
  Widget buildEditIcon(Color color) => buildCircle(
      all: 8,
      child: Icon(
        Icons.edit,
        color: color,
        size: 20,
      ));

  // Builds/Makes Circle for Edit Icon on Profile Picture
  Widget buildCircle({
    required Widget child,
    required double all,
  }) =>
      ClipOval(
          child: Container(
        padding: EdgeInsets.all(all),
        color: Colors.white,
        child: child,
      ));
}
