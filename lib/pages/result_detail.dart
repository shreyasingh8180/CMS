// TODO Implement this library.
import 'package:college_management/pages/result.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {

  final int index;
  DetailsPage(this.index);

  List<String> images=["assets/semester_1.jpeg","assets/semester_2.jpeg","assets/semester_3.jpeg","assets/semester_4.jpeg","assets/semester_5.jpeg","assets/semester_6.jpeg","assets/semester_7.jpeg","assets/semester_7.jpeg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Result();
                }));
              },
              child: Icon(Icons.arrow_back, size: 30,),
            ),
            title: Text(
              'Result',
              style: TextStyle(fontSize: 20),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor:  Color(0xff002c51),
          ),
        ),
        body: Center(
          child: Image.asset(images[index]),
        )

    );
  }
}