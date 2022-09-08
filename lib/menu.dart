import 'package:eljoker_ps/DrinksOrder.dart';
import 'package:eljoker_ps/ps1.dart';
import 'package:eljoker_ps/rooms.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
import 'ordersPage.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          automaticallyImplyLeading : false,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => rooms()));},
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 0.7),
                          color: Colors.blueGrey[800],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/controller.png'),
                                width: 90,
                                color: Colors.red,
                              ),
                              SizedBox(height: 15,),
                              Text(
                                'Playstation',
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
                    SizedBox(height: 25,),
                    GestureDetector(
                      onTap: ()async{
                        await getpsnew(7);
                        await getdrinkscontroller(7);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ps1(id :7)));
                        },
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 0.7),
                          color: Colors.blueGrey[800],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Image(
                                image: AssetImage('assets/images/billiard.png'),
                                width: 110,
                              ),
                              SizedBox(height: 20,),
                              Text(
                                'billiard',
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
                    SizedBox(height: 25,),
                    GestureDetector(
                      onTap: ()async{
                        await getpsnew(8);
                        await getdrinkscontroller(8);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ps1(id :8)));
                        },
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 0.7),
                          color: Colors.blueGrey[800],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/pingpong.png'),
                                width: 90,
                              ),
                              SizedBox(height: 20,),
                              Text(
                                'ping pong',
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
                    SizedBox(height: 25,),
                    GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => drinksorder()));},
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 0.7),
                          color: Colors.blueGrey[800],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/drinks.png'),
                                width: 70,
                              ),
                              SizedBox(height: 15,),
                              Text(
                                'Drinks & Snacks',
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
                    SizedBox(height: 25,),
                    GestureDetector(
                      onTap: ()async{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ordersPage()));},
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 0.7),
                          color: Colors.blueGrey[800],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/earnings.png'),
                                width: 120,
                              ),
                              SizedBox(height: 20,),
                              Text(
                                'My Earnings',
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
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                    }, icon:Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Icon(Icons.logout,color: Colors.white,size: 30,),
                        ),
                        Text('Logout  ',style: TextStyle(color: Colors.white , fontSize: 15,fontWeight: FontWeight.w600),),
                      ],
                    ),
                      iconSize: 60,),

                  ],
                ),
              ),
            ),
          ),
        ),
      );
  }
}
