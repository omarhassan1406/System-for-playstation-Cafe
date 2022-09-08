import 'dart:async';

import 'package:eljoker_ps/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';
bool visable = false;
class admin extends StatefulWidget {
  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  @override
  Widget build(BuildContext context) {
    List<TextEditingController> controllerList= [];
    for (int i = 0; i < 8; i++) controllerList.add(TextEditingController(text: "${psbox.get('${i+1}')['price_single'].toString()}"));

    List<TextEditingController> controllerList2= [];
    for (int i = 0; i < 8; i++) controllerList2.add(TextEditingController(text: "${psbox.get('${i+1}')['price_multi'].toString()}"));

    List<TextEditingController> controllerList3= [];
    for (int i = 0; i < 6; i++) controllerList3.add(TextEditingController(text: "${drinksbox.get("${i+1}")['price'].toString()}"));

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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: Container(
                            color: Colors.blueGrey[800],
                            width: 400,
                            height: 600,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Playstations',style: TextStyle(color: Colors.white , fontSize: 50,fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 80.0),
                                        child: Text('Single',style: TextStyle(color: Colors.white , fontSize: 15,fontWeight: FontWeight.w600),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 130.0),
                                        child: Text('Multi',style: TextStyle(color: Colors.white , fontSize: 15,fontWeight: FontWeight.w600),),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 25,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('Room 1',style: TextStyle(color: Colors.white , fontSize: 30,fontWeight: FontWeight.w600),),
                                        Text('(Hour price)',style: TextStyle(color: Colors.white , fontSize: 10,fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 35.0),
                                      child: Container(
                                        color: Colors.blueGrey[700],
                                              width: 50,
                                              height: 30,
                                              padding: EdgeInsets.only(bottom: 5),
                                              child: TextFormField(
                                                keyboardType: TextInputType.number,
                                                controller: controllerList[0],
                                                style: TextStyle(color: Colors.white,fontSize: 20),
                                                decoration: InputDecoration(
                                                    border: InputBorder.none
                                                ),
                                              ),
                                            )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 70.0),
                                        child: Container(
                                          color: Colors.blueGrey[700],
                                          width: 50,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: controllerList2[0],
                                            style: TextStyle(color: Colors.white,fontSize: 20),
                                            decoration: InputDecoration(
                                                border: InputBorder.none
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('Room 2',style: TextStyle(color: Colors.white , fontSize: 30,fontWeight: FontWeight.w600),),
                                        Text('(Hour price)',style: TextStyle(color: Colors.white , fontSize: 10,fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 30.0),
                                        child: Container(
                                          color: Colors.blueGrey[700],
                                          width: 50,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: controllerList[1],
                                            style: TextStyle(color: Colors.white,fontSize: 20),
                                            decoration: InputDecoration(
                                                border: InputBorder.none
                                            ),
                                          ),
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 70.0),
                                        child: Container(
                                          color: Colors.blueGrey[700],
                                          width: 50,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: controllerList2[1],
                                            style: TextStyle(color: Colors.white,fontSize: 20),
                                            decoration: InputDecoration(
                                                border: InputBorder.none
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('Room 3',style: TextStyle(color: Colors.white , fontSize: 30,fontWeight: FontWeight.w600),),
                                        Text('(Hour price)',style: TextStyle(color: Colors.white , fontSize: 10,fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 30.0),
                                        child: Container(
                                          color: Colors.blueGrey[700],
                                          width: 50,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: controllerList[2],
                                            style: TextStyle(color: Colors.white,fontSize: 20),
                                            decoration: InputDecoration(
                                                border: InputBorder.none
                                            ),
                                          ),
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 70.0),
                                        child: Container(
                                          color: Colors.blueGrey[700],
                                          width: 50,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: controllerList2[2],
                                            style: TextStyle(color: Colors.white,fontSize: 20),
                                            decoration: InputDecoration(
                                                border: InputBorder.none
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('Room 4',style: TextStyle(color: Colors.white , fontSize: 30,fontWeight: FontWeight.w600),),
                                        Text('(Hour price)',style: TextStyle(color: Colors.white , fontSize: 10,fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 30.0),
                                        child: Container(
                                          color: Colors.blueGrey[700],
                                          width: 50,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: controllerList[3],
                                            style: TextStyle(color: Colors.white,fontSize: 20),
                                            decoration: InputDecoration(
                                                border: InputBorder.none
                                            ),
                                          ),
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 70.0),
                                        child: Container(
                                          color: Colors.blueGrey[700],
                                          width: 50,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: controllerList2[3],
                                            style: TextStyle(color: Colors.white,fontSize: 20),
                                            decoration: InputDecoration(
                                                border: InputBorder.none
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('Room 5',style: TextStyle(color: Colors.white , fontSize: 30,fontWeight: FontWeight.w600),),
                                        Text('(Hour price)',style: TextStyle(color: Colors.white , fontSize: 10,fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 30.0),
                                        child: Container(
                                          color: Colors.blueGrey[700],
                                          width: 50,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: controllerList[4],
                                            style: TextStyle(color: Colors.white,fontSize: 20),
                                            decoration: InputDecoration(
                                                border: InputBorder.none
                                            ),
                                          ),
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 70.0),
                                        child: Container(
                                          color: Colors.blueGrey[700],
                                          width: 50,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: controllerList2[4],
                                            style: TextStyle(color: Colors.white,fontSize: 20),
                                            decoration: InputDecoration(
                                                border: InputBorder.none
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                                SizedBox(height: 25,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text('Room 6',style: TextStyle(color: Colors.white , fontSize: 30,fontWeight: FontWeight.w600),),
                                        Text('(Hour price)',style: TextStyle(color: Colors.white , fontSize: 10,fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 30.0),
                                        child: Container(
                                          color: Colors.blueGrey[700],
                                          width: 50,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: controllerList[5],
                                            style: TextStyle(color: Colors.white,fontSize: 20),
                                            decoration: InputDecoration(
                                                border: InputBorder.none
                                            ),
                                          ),
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 70.0),
                                        child: Container(
                                          color: Colors.blueGrey[700],
                                          width: 50,
                                          height: 30,
                                          padding: EdgeInsets.only(bottom: 5),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            controller: controllerList2[5],
                                            style: TextStyle(color: Colors.white,fontSize: 20),
                                            decoration: InputDecoration(
                                                border: InputBorder.none
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Container(
                          color: Colors.blueGrey[800],
                          width: 400,
                          height: 600,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Games',style: TextStyle(color: Colors.white , fontSize: 50,fontWeight: FontWeight.bold),),
                              SizedBox(height: 45,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('Billiard',style: TextStyle(color: Colors.white , fontSize: 30,fontWeight: FontWeight.w600),),
                                      Text('(Hour price)',style: TextStyle(color: Colors.white , fontSize: 10,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 35.0),
                                      child: Container(
                                        color: Colors.blueGrey[700],
                                        width: 50,
                                        height: 30,
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          controller: controllerList[6],
                                          style: TextStyle(color: Colors.white,fontSize: 20),
                                          decoration: InputDecoration(
                                              border: InputBorder.none
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(height: 25,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('pingpong',style: TextStyle(color: Colors.white , fontSize: 27,fontWeight: FontWeight.w600),),
                                      Text('(Hour price)',style: TextStyle(color: Colors.white , fontSize: 10,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Container(
                                        color: Colors.blueGrey[700],
                                        width: 50,
                                        height: 30,
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          controller: controllerList[7],
                                          style: TextStyle(color: Colors.white,fontSize: 20),
                                          decoration: InputDecoration(
                                              border: InputBorder.none
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Container(
                          color: Colors.blueGrey[800],
                          width: 400,
                          height: 600,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Drinks',style: TextStyle(color: Colors.white , fontSize: 50,fontWeight: FontWeight.bold),),
                              SizedBox(height: 45,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('${drinksbox.get('1')['name']}',style: TextStyle(color: Colors.white , fontSize: 30,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 35.0),
                                      child: Container(
                                        color: Colors.blueGrey[700],
                                        width: 50,
                                        height: 30,
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          controller: controllerList3[0],
                                          style: TextStyle(color: Colors.white,fontSize: 20),
                                          decoration: InputDecoration(
                                              border: InputBorder.none
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(height: 25,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('${drinksbox.get('2')['name']}',style: TextStyle(color: Colors.white , fontSize: 27,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Container(
                                        color: Colors.blueGrey[700],
                                        width: 50,
                                        height: 30,
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          controller: controllerList3[1],
                                          style: TextStyle(color: Colors.white,fontSize: 20),
                                          decoration: InputDecoration(
                                              border: InputBorder.none
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(height: 25,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('${drinksbox.get('3')['name']}',style: TextStyle(color: Colors.white , fontSize: 27,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20.0),
                                      child: Container(
                                        color: Colors.blueGrey[700],
                                        width: 50,
                                        height: 30,
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          controller: controllerList3[2],
                                          style: TextStyle(color: Colors.white,fontSize: 20),
                                          decoration: InputDecoration(
                                              border: InputBorder.none
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(height: 25,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('${drinksbox.get('4')['name']}',style: TextStyle(color: Colors.white , fontSize: 23,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 0.0),
                                      child: Container(
                                        color: Colors.blueGrey[700],
                                        width: 50,
                                        height: 30,
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          controller: controllerList3[3],
                                          style: TextStyle(color: Colors.white,fontSize: 20),
                                          decoration: InputDecoration(
                                              border: InputBorder.none
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(height: 25,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('${drinksbox.get('5')['name']}',style: TextStyle(color: Colors.white , fontSize: 27,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Container(
                                        color: Colors.blueGrey[700],
                                        width: 50,
                                        height: 30,
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          controller: controllerList3[4],
                                          style: TextStyle(color: Colors.white,fontSize: 20),
                                          decoration: InputDecoration(
                                              border: InputBorder.none
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(height: 25,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('${drinksbox.get('6')['name']}',style: TextStyle(color: Colors.white , fontSize: 27,fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 40.0),
                                      child: Container(
                                        color: Colors.blueGrey[700],
                                        width: 50,
                                        height: 30,
                                        padding: EdgeInsets.only(bottom: 5),
                                        child: TextFormField(
                                          keyboardType: TextInputType.number,
                                          controller: controllerList3[5],
                                          style: TextStyle(color: Colors.white,fontSize: 20),
                                          decoration: InputDecoration(
                                              border: InputBorder.none
                                          ),
                                        ),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(height: 25,),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                Container(
                  color: Colors.greenAccent,
                    width: 200,
                    height: 40,
                    child: MaterialButton(onPressed: ()async{
                      for(int i =0;i<8;i++){
                        var x = double.parse(controllerList[i].text);
                        psbox.put('${i+1}', {'startTime_hour': psbox.get('${i+1}')['startTime_hour'],'startTime_Minute': psbox.get('${i+1}')['startTime_Minute'],'price_single':x,'price_multi':psbox.get('${i+1}')['price_multi'],'green':psbox.get('${i+1}')['green'],'multi':psbox.get('${i+1}')['multi']});
                      }
                      for(int i =0;i<8;i++){
                        var x = double.parse(controllerList2[i].text);
                        psbox.put('${i+1}', {'startTime_hour': psbox.get('${i+1}')['startTime_hour'],'startTime_Minute': psbox.get('${i+1}')['startTime_Minute'],'price_single':psbox.get('${i+1}')['price_single'],'price_multi':x,'green':psbox.get('${i+1}')['green'],'multi':psbox.get('${i+1}')['multi']});
                      }
                      for(int i =0;i<6;i++){
                        var x = double.parse(controllerList3[i].text);
                        drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':x,'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }
                        setState(() {
                          visable = true;
                        });
                        Timer timer = Timer(Duration(milliseconds: 500), () {
                          setState(() {
                            visable = false;
                          });
                        });
                      }
                    ,child: Text('Update',style: TextStyle(color: Colors.black , fontSize: 20,fontWeight: FontWeight.w600),),)
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 50,),
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
              ],
            ),
          ),
          Center(
            child: Visibility(
              child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.blueGrey[800],),
                  width: 200,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check_outlined,color: Colors.white.withOpacity(0.8),size: 50,),
                      Text("updated",style: TextStyle(color: Colors.white.withOpacity(0.8) , fontSize: 40,fontWeight: FontWeight.w600),),
                    ],
                  )
              ),
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              visible: visable,
            ),

          ),
        ],
      ),
    );
  }
}
