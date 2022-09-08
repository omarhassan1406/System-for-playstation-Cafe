import 'package:eljoker_ps/Login.dart';
import 'package:eljoker_ps/ps1.dart';
import 'package:flutter/material.dart';
import 'main.dart';
late List<TextEditingController> controllerList = [];
class rooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        elevation: 0,
        title: Padding(
          padding: const EdgeInsetsDirectional.only(end: 60.0),
          child: Center(
            child: Image(
              image: AssetImage('assets/images/ps.png'),
              width: 40,
            ),
          ),
        ),

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () async
                            {
                              await getpsnew(1);
                              await getdrinkscontroller(1);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ps1(id: 1,)));
                              },
                            child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,width: 0.7),
                                color: Colors.blueGrey[800],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/images/ps4.png'),
                                      width: 300,
                                    ),
                                    SizedBox(height: 60,),
                                    Text(
                                      'Room 1',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: GestureDetector(
                            onTap: ()async{
                              await getpsnew(2);
                              await getdrinkscontroller(2);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ps1(id: 2,)));
                              },
                            child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,width: 0.7),
                                color: Colors.blueGrey[800],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/images/ps4.png'),
                                      width: 300,
                                    ),
                                    SizedBox(height: 60,),
                                    Text(
                                      'Room 2',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: GestureDetector(
                            onTap: ()async{
                              await getpsnew(3);
                              await getdrinkscontroller(3);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ps1(id: 3,)));
                            },
                            child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,width: 0.7),
                                color: Colors.blueGrey[800],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/images/ps4.png'),
                                      width: 300,
                                    ),
                                    SizedBox(height: 60,),
                                    Text(
                                      'Room 3',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: ()async{
                              await getpsnew(4);
                              await getdrinkscontroller(4);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ps1(id: 4,)));
                            },
                            child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,width: 0.7),
                                color: Colors.blueGrey[800],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/images/ps555.png'),
                                      width: 130,
                                    ),
                                    SizedBox(height: 20,),
                                    Text(
                                      'Room 4',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: GestureDetector(
                            onTap: ()async{
                              await getpsnew(5);
                              await getdrinkscontroller(5);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ps1(id: 5,)));
                            },
                            child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,width: 0.7),
                                color: Colors.blueGrey[800],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/images/ps555.png'),
                                      width: 130,
                                    ),
                                    SizedBox(height: 20,),
                                    Text(
                                      'Room 5',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: GestureDetector(
                            onTap: ()async{
                              await getpsnew(6);
                              await getdrinkscontroller(6);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ps1(id: 6,)));
                            },
                            child: Container(
                              height: 300,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black,width: 0.7),
                                color: Colors.blueGrey[800],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/images/ps555.png'),
                                      width: 130,
                                    ),
                                    SizedBox(height: 20,),
                                    Text(
                                      'Room 6',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
Future<void> getdrinkscontroller(id) async{
  controllerList = [];
  controllerList.add(TextEditingController(text: "${await drinksbox.get('1')['ps${id}'].toString()}"));
  controllerList.add(TextEditingController(text: "${await drinksbox.get('2')['ps${id}'].toString()}"));
  controllerList.add(TextEditingController(text: "${await drinksbox.get('3')['ps${id}'].toString()}"));
  controllerList.add(TextEditingController(text: "${await drinksbox.get('4')['ps${id}'].toString()}"));
  controllerList.add(TextEditingController(text: "${await drinksbox.get('5')['ps${id}'].toString()}"));
  controllerList.add(TextEditingController(text: "${await drinksbox.get('6')['ps${id}'].toString()}"));
}
