import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';
import 'main.dart';
import 'models/timemodel.dart';

class ordersPage extends StatefulWidget {
  @override
  State<ordersPage> createState() => _ordersPageState();

}

class _ordersPageState extends State<ordersPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  Widget itembuilder (orders model) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('${model.ordernum}',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
      Container(
          child:LayoutBuilder(builder: (context, constraints) {
            if(int.parse(model.roomnum) <= 6){
              return Text("room ${model.roomnum}",style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),);
            }else if(int.parse(model.roomnum) == 7){
              return Text("billiard",style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),);
            }
            else if(int.parse(model.roomnum) == 8){
              return Text("pingpong",style: TextStyle(color: Colors.white , fontSize: 15,fontWeight: FontWeight.w600),);

            }else{return Text("TakeAway",style: TextStyle(color: Colors.white , fontSize: 15,fontWeight: FontWeight.w600),);}
          })
      ),
      Text('${model.startedat}',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
      Text('${model.finishedat}',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
      Text('${model.timep}',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
      Text('${model.drinksp}',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
      Text('${model.totalp}',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),

    ],
  );


  @override
  Widget build(BuildContext context) {
    double totalearnings = 0;
    for(int i =0;i<ordermodels.length;i++) {
      totalearnings += ordermodels[i].totalp;
  }


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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Orders',style: TextStyle(color: Colors.white , fontSize: 40,fontWeight: FontWeight.w600),),
                SizedBox(height: 20,),
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order Number',style: TextStyle(color: Colors.white , fontSize: 15,fontWeight: FontWeight.w600),),
                Text('Room',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                Text('Start',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                Text('Finish',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                Text('Time price',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                Text('Drinks price',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                Text('Total',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),

              ],
            ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  color: Colors.blueGrey[700],
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context,index)=>itembuilder(ordermodels[index]),
                        separatorBuilder: (context,index)=>SizedBox(height: 15,),
                        itemCount: ordermodels.length,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text('Total earnings : ',style: TextStyle(color: Colors.white , fontSize: 30,fontWeight: FontWeight.w600),),
                    Text('$totalearnings',style: TextStyle(color: Colors.white , fontSize: 30,fontWeight: FontWeight.w600),),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
