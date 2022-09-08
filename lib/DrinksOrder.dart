import 'package:flutter/material.dart';
import 'dart:async';
import 'Login.dart';
import 'main.dart';
import 'models/timemodel.dart';
bool visable= false;
class drinksorder extends StatefulWidget {
  @override
  _drinksorderState createState() => _drinksorderState();
}

class _drinksorderState extends State<drinksorder> {

  @override
  Widget build(BuildContext context) {

    List<TextEditingController> controllerList3= [];
    for (int i = 0; i < 6; i++) controllerList3.add(TextEditingController(text: '0'));
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: 700,
              child: Column(
                children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Container(
                            color: Colors.blueGrey[800],
                            padding: EdgeInsets.all(8),
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
                  SizedBox(height: 40,),
                  Container(
                      color: Colors.greenAccent,
                      width: 200,
                      height: 40,
                      child: MaterialButton(onPressed: ()async{
                        for(int i=0;i<controllerList3.length;i++){
                          if(int.parse(controllerList3[i].text) > 0){
                            double price = drinksbox.get('${i+1}')['price']*int.parse(controllerList3[i].text);
                            ordermodels.add(orders(roomnum: '9',ordernum: orderIndex,startedat: '00:00',finishedat: '00:00',timep: 0.0,drinksp: price,totalp: price));
                            orderIndex = ordermodels.length+1;
                          }
                        }


                        setState(() {
                          visable = true;
                        });
                        Timer timer = Timer(Duration(milliseconds: 500), () {
                          setState(() {
                            visable = false;
                          });
                        });
                      },child: Text('Order',style: TextStyle(color: Colors.black , fontSize: 20,fontWeight: FontWeight.w600),),)
                  ),
                    ],
                  ),
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
                      Text("Ordered",style: TextStyle(color: Colors.white.withOpacity(0.8) , fontSize: 40,fontWeight: FontWeight.w600),),
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
