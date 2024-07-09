import 'package:flutter/material.dart';

class Courses extends StatefulWidget {
  Courses({Key? key}) : super(key: key);

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {

var date = ['20/02/2023', '15/03/2023', '13/04/2023', '14/05/2023', '25/06/2023', '05/07/2023'];
  var event_name = ['Cryptography and Network Security \nCourse Code: PEC-CS801B', 'E-Commerce and ERP  \nCourse Code:OEC-CS802A', 'Soft Skill & Interpersonal Communication  \nCourse Code:OEC-CS801E','Project-III    PROJCS881    (Sessional paper)'];
    var description = [' For courses in Cryptography, Computer Security, and Network Security. Keep pace with the fast-moving field of cryptography and network security Stallings’ Cryptography and Network Security: Principles and Practice introduces students to the compelling and evolving field of cryptography and network security. For courses in Cryptography, Computer Security, and Network Security. Keep pace with the fast-moving field of cryptography and network security Stallings’ Cryptography and Network Security: Principles and Practice introduces students to the compelling and evolving field of cryptography and network security. ',
     'Table of Contents: Part-A: Introduction to E-Commerce Introduction to E-Commerce Internet and E-Commerce Electronic Payment Methods Electronic Commerce Providers Digital Payment System and Digital Currencies Electronic Data Interchange Part-B: Introduction to ERP Introduction to ERP Management Information System (MIS) Internet and ERP ERP Functional Modules Information System Prospective of ERP Implementation of ERP Methodology of ERP Design Managerial Issues in ERP Appendix : Present and Future of ERP Market',
      'Electromagnetic theory is a core course in Electrical Engineering curriculum. The course covers static and dynamic electric and magnetic fields and their interaction. Major topics include Electromagnetic Waves, Transmission Lines, Waveguides, and Antenna fundamentals.',
      'Interpersonal skills are sometimes called employability skills. The word “employability” is a tip-off about the importance of interpersonal skills: they’re so crucial that hiring managers really don’t want to hire candidates without them.Many careers require consistent, if not constant, interaction with other people. This is true even for jobs that would seem to favor introverted personalities and independent work styles. For example, even if you’re a software engineer, writer, or statistician, you still need to be able to communicate and collaborate with your team.',
      'The final year project plays a very crucial part in a student life.A lot of things depend on it, and it will be used as a benchmark by job recruiters too. During the course of your project, there will be many crossroads that you might face. The final year project signifies a milestone in an engineering student life. It helps to bridge the gap between theory-based learning and skills-based learning. The projects fulfill the purpose of synthesizing the knowledge acquired during the years and demonstrating the student aptitude by applying the knowledge.'
     ];
      var images = ['assets/crypto.jpeg',
       "assets/erp.jpeg",
        'assets/softskill.jpeg',
      'assets/project.jpeg'
      ];



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("DASHBOARD"),
      ),
      body: new Column(children: <Widget>[
        new Padding(
          padding: new EdgeInsets.all(0.0),
          child: new PhysicalModel(
            color: Colors.white,
            elevation: 3.0,
            child: new TextField(
              // controller: _controller,
              // onSubmitted: handleTextInputSubmit,
              decoration: new InputDecoration(
                  hintText: 'Find course ', icon: new Icon(Icons.search)),
            ),
          ),
        ),
        new Expanded(
          child: new ListView.builder(
                      itemCount: event_name.length,
                      padding: new EdgeInsets.all(8.0),
                      itemBuilder: (BuildContext context, int index) {
                        return new Card(
                          elevation: 1.7,
                          child: new Padding(
                            padding: new EdgeInsets.all(10.0),
                            child: new Column(
                              children: [
                                new Row(
                                  children: <Widget>[
                                    new Padding(
                                      padding: new EdgeInsets.only(left: 4.0),
                                      child: new Text(
                                        "Date: ",
                                        style: new TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ),
                                    new Padding(
                                      padding: new EdgeInsets.all(5.0),
                                      child: new Text(
                                        date[index],
                                        style: new TextStyle(
                                          
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey[700],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                new Row(
                                  children: [
                                    new Expanded(
                                      child: new GestureDetector(
                                        child: new Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            new Padding(
                                              padding: new EdgeInsets.only(
                                                  left: 4.0,
                                                  right: 8.0,
                                                  bottom: 8.0,
                                                  top: 8.0),
                                              child: new Text(
                                                event_name[index],
                                                style: new TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            new Padding(
                                              padding: new EdgeInsets.only(
                                                  left: 4.0,
                                                  right: 4.0,
                                                  bottom: 4.0),
                                              child: new Text(
                                                description[index],
                                                style: new TextStyle(
                                                  color: Colors.grey[500],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // onTap: () {
                                        //   flutterWebviewPlugin.launch(
                                        //       data["articles"][index]["url"],
                                        //       fullScreen: false);
                                        // },
                                      ),
                                    ),
                                    new Column(
                                      children: <Widget>[
                                        new Padding(
                                          padding:
                                              new EdgeInsets.only(top: 8.0),
                                          child: new SizedBox(
                                            height: 100.0,
                                            width: 100.0,
                                            child: new Image.asset(images[index]),
                                          ),
                                        ),
                                        new Row(
                                          children: <Widget>[
                                            new GestureDetector(
                                              child: new Padding(
                                                  padding:
                                                      new EdgeInsets.symmetric(
                                                          vertical: 10.0,
                                                          horizontal: 5.0),
                                                  child: Icon(
                                                      Icons.share)),
                                              // onTap: () {
                                              //   share(data["articles"][index]
                                              //       ["url"]);
                                              // },
                                            ),
                                            new GestureDetector(
                                              child: new Padding(
                                                  padding:
                                                      new EdgeInsets.all(5.0),
                                                  child: Icon(
                                                          Icons.bookmark)
                                                      ),
                                              // onTap: () {
                                              //   _onBookmarkTap(
                                              //       data["articles"][index]);
                                              // },
                                            ),
                                            new GestureDetector(
                                              child: new Padding(
                                                  padding:
                                                      new EdgeInsets.all(5.0),
                                                  child: Icon(
                                                      Icons.not_interested)),
                                              // onTap: () {
                                              //   _onRemoveSource(
                                              //       data["articles"][index]
                                              //           ["source"]["id"],
                                              //       data["articles"][index]
                                              //           ["source"]["name"]);
                                              // },
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ), ////
                          ),
                        );
                      },
                    )
                  // : new Center(
                  //     child: new Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         new Icon(Icons.chrome_reader_mode,
                  //             color: Colors.grey, size: 60.0),
                  //         new Text(
                  //           "No articles saved",
                  //           style: new TextStyle(
                  //               fontSize: 24.0, color: Colors.grey),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
        )
      ]),
    );
  }
}