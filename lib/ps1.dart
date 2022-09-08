import 'dart:async';
import 'package:eljoker_ps/Login.dart';
import 'package:eljoker_ps/main.dart';
import 'package:eljoker_ps/rooms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'details.dart';
import 'models/timemodel.dart';
bool visable = false;
var drinksgetter;

class ps1 extends StatefulWidget {
  final int id;

  const ps1 ({Key? key, required this.id }): super(key: key);
  @override
  ps1state createState() => ps1state();

}

class ps1state extends State<ps1> {

  static DateTime now = DateTime.now();
  String formattedDate = DateFormat.jm().format(now);




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    now = DateTime.now();
    updateall();
  }



  @override
  Widget build(BuildContext context) {
    double price = 0.0;
    double timeprice = 0.0;
    bool multi;



    bool g;
    if(psgetter['green'] == 1){
      g = true;
    }else{g = false;};
    if(psgetter['multi'] == 1){
      multi = true;
    }else{multi = false;};
    if(widget.id>6){
      multi = false;
    }

    List<timemodel> models = [
      timemodel(room : widget.id, hours:int.parse(psgetter['startTime_hour'].toString()), minutes:int.parse(psgetter['startTime_Minute'].toString()), green: g),
    ];
    formattedDate = DateFormat.jm().format(DateTime(2022,0,0,models[0].hours,models[0].minutes));

    List<finalcalc> drinksmodel = [];
    Widget itembuilder (timemodel model) => Container(
      width: 480,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black,width: 0.7),
        color: Colors.blueGrey[800],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [


            Container(
              child: LayoutBuilder(builder: (context, constraints) {
                if(int.parse(model.room.toString()) <= 6){
                return Text('Room ${model.room}',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600,),);
                }else if(int.parse(model.room.toString()) == 7){
                return Text('billiard',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600,),);
                }
                else if(int.parse(model.room.toString()) == 8){
                return Text('pingpong',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600,),);

                }else{return Text('unk',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600,),);}
              }
              ),
            ),

            Container(
              height: 50,
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                        color: multi?Colors.blueGrey[900]:Colors.tealAccent[700],
                        width: 100,
                        child: MaterialButton(
                          onPressed: () async
                          {
                            psbox.put('${widget.id}', {'startTime_hour': psgetter['startTime_hour'],'startTime_Minute': psgetter['startTime_Minute'],'price_single':psgetter['price_single'],'price_multi':psgetter['price_multi'],'green':psgetter['green'],'multi':0});
                            await updateall();
                            setState(() {
                            });
                          },
                          child: Text('single',style: TextStyle(color: Colors.white),
                          ),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                        color: multi?Colors.tealAccent[700]:Colors.blueGrey[900],
                        width: 100,
                        child: MaterialButton(
                          onPressed: () async
                          {
                            psbox.put('${widget.id}', {'startTime_hour': psbox.get('${widget.id}')['startTime_hour'],'startTime_Minute': psbox.get('${widget.id}')['startTime_Minute'],'price_single':psbox.get('${widget.id}')['price_single'],'price_multi':psbox.get('${widget.id}')['price_multi'],'green':psbox.get('${widget.id}')['green'],'multi':1});
                            await updateall();
                            setState(() {
                            });
                          },
                          child: Text('multi',style: TextStyle(color: Colors.white),
                          ),
                        )
                    ),
                  ),
                ],
              ),
            ),



            SizedBox(height: 15,),


            Text('Started at :',
              style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),
            ),


            Text(model.green?'':'$formattedDate',
              style: TextStyle(color: Colors.white , fontSize: 30,fontWeight: FontWeight.w600),),


            SizedBox(height: 5,),


            Padding(
              padding: const EdgeInsetsDirectional.only(end: 400),
              child: Text('Time now : ${DateFormat.jm().format(now)}',style: TextStyle(color: Colors.white , fontSize: 10,fontWeight: FontWeight.w600),),
            ),


            Padding(
              padding: const EdgeInsetsDirectional.only(end: 20),
              child: IconButton(onPressed: () async
              {
                if(model.green == true)
                  {
                    var timeh = DateFormat.H().format(now);
                    var timem = DateFormat.m().format(now);
                    psbox.put('${widget.id}', {'startTime_hour': timeh,'startTime_Minute': timem,'price_single':psbox.get('${widget.id}')['price_single'],'price_multi':psbox.get('${widget.id}')['price_multi'],'green':0,'multi':psbox.get('${widget.id}')['multi']});
                    for(int i =0;i<6;i++){
                      if(widget.id == 1){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':0,'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 2){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':0,'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 3){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':0,'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 4){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':0,'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 5){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':0,'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 6){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':0,'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 7){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':0,'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 8){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':0,});
                      }
                    }
                    await updateall();
                    setState(() {

                    });
                  }
                else
                  {
                    var endh = DateFormat.H().format(now);
                    var endm = DateFormat.m().format(now);
                    double hourprice = 0;
                    double minprice = 0;
                    if(multi){
                      if(int.parse(endh) > model.hours)
                      {
                        minprice = (60.0-model.minutes)*((double.parse(psbox.get('${widget.id}')['price_multi'].toString())) / 60);
                        int hournow = model.hours + 1;
                        hourprice = (int.parse(endh) - hournow)*double.parse(psbox.get('${widget.id}')['price_multi'].toString());
                        minprice += int.parse(endm)*((double.parse(psbox.get('${widget.id}')['price_multi'].toString())) / 60);
                      }
                      else if(int.parse(endh) < model.hours)
                      {
                        minprice = (60.0-model.minutes)*((double.parse(psbox.get('${widget.id}')['price_multi'].toString())) / 60);
                        int hournow = model.hours + 1;
                        if(hournow > 23){
                          hournow = 0;
                          hourprice = (int.parse(endh) - hournow)*double.parse(psbox.get('${widget.id}')['price_multi'].toString());
                          minprice += int.parse(endm)*((double.parse(psbox.get('${widget.id}')['price_multi'].toString())) / 60);
                        }else{
                          hourprice = ((24 - hournow) + int.parse(endh))*double.parse(psbox.get('${widget.id}')['price_multi'].toString());
                          minprice += int.parse(endm)*((double.parse(psbox.get('${widget.id}')['price_multi'].toString())) / 60);
                        }

                      }else if(int.parse(endh) == model.hours){
                        hourprice = 0;
                        minprice = (int.parse(endm) - model.minutes)*((double.parse(psbox.get('${widget.id}')['price_multi'].toString())) / 60);
                      }
                    }
                    else
                      {
                      if(int.parse(endh) > model.hours)
                      {
                        minprice = (60.0-model.minutes)*((double.parse(psbox.get('${widget.id}')['price_single'].toString())) / 60);
                        int hournow = model.hours + 1;
                        hourprice = (int.parse(endh) - hournow)*double.parse(psbox.get('${widget.id}')['price_single'].toString());
                        minprice += int.parse(endm)*((double.parse(psbox.get('${widget.id}')['price_single'].toString())) / 60);
                      }
                      else if(int.parse(endh) < model.hours)
                      {
                        minprice = (60.0-model.minutes)*((double.parse(psbox.get('${widget.id}')['price_single'].toString())) / 60);
                        int hournow = model.hours + 1;
                        if(hournow > 23){
                          hournow = 0;
                          hourprice = (int.parse(endh) - hournow)*double.parse(psbox.get('${widget.id}')['price_single'].toString());
                          minprice += int.parse(endm)*((double.parse(psbox.get('${widget.id}')['price_single'].toString())) / 60);
                        }else{
                          hourprice = ((24 - hournow) + int.parse(endh))*double.parse(psbox.get('${widget.id}')['price_single'].toString());
                          minprice += int.parse(endm)*((double.parse(psbox.get('${widget.id}')['price_single'].toString())) / 60);
                        }

                      }else if(int.parse(endh) == model.hours){
                        hourprice = 0;
                        minprice = (int.parse(endm) - model.minutes)*((double.parse(psbox.get('${widget.id}')['price_single'].toString())) / 60);
                      }
                    }

                    timeprice = hourprice + minprice;
                    print(timeprice.toString());
                    price=timeprice;
                    drinksmodel = [];

                  for(int i =0;i<6;i++) {
                    if(drinksbox.get('${i+1}')['ps${widget.id}']>0){
                      print('name : ' + drinksbox.get('${i+1}')['name'] + 'quantity : '+ drinksbox.get('${i+1}')['ps${widget.id}'].toString()+ ' price : '+(int.parse(drinksbox.get('${i+1}')['ps${widget.id}'].toString())*double.parse(drinksbox.get('${i+1}')['price'].toString())).toString());
                      drinksmodel.add(finalcalc(drinkname: drinksbox.get('${i+1}')['name'], quatity: drinksbox.get('${i+1}')['ps${widget.id}'], oneprice: drinksbox.get('${i+1}')['price'], totalprice: int.parse(drinksbox.get('${i+1}')['ps${widget.id}'].toString())*double.parse(drinksbox.get('${i+1}')['price'].toString())));
                      price += int.parse(drinksbox.get('${i+1}')['ps${widget.id}'].toString())*double.parse(drinksbox.get('${i+1}')['price'].toString());
                    }
                  }
                    double totaldrinks = 0;
                    for(int i=0;i<drinksmodel.length;i++){
                      totaldrinks += drinksmodel[i].totalprice;
                    }
                    ordermodels.add(orders(roomnum: '${widget.id}',ordernum: orderIndex,startedat: '${model.hours}:${model.minutes}',finishedat: '$endh:$endm',timep: timeprice,drinksp: totaldrinks,totalp: price));
                    orderIndex = ordermodels.length+1;




                    psbox.put('${widget.id}', {'startTime_hour': 0,'startTime_Minute': 0,'price_single':psbox.get('${widget.id}')['price_single'],'price_multi':psbox.get('${widget.id}')['price_multi'],'green':1,'multi':psbox.get('${widget.id}')['multi']});
                    for(int i =0;i<6;i++){
                      if(widget.id == 1){
                        drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':0,'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 2){
                        drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':0,'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 3){
                        drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':0,'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 4){
                        drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':0,'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 5){
                        drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':0,'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 6){
                        drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':0,'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 7){
                        drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':0,'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 8){
                        drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':0,});
                      }
                    }
                    await updateall();

                    setState(() {

                    });

                    Navigator.push(context, MaterialPageRoute(builder: (context) => details(id : widget.id,startedtime: formattedDate,listt: drinksmodel,timeprice: timeprice, totalprice: price)));

                  }
                setState(() {});
              }, icon: model.green ? Icon(Icons.play_arrow , color: Colors.green, size: 50,) : Icon(Icons.stop, color: Colors.red,size: 50,)),
            ),


            SizedBox(height: 30,),


            Container(
              width: double.infinity,
              color: Colors.blueGrey[900],
              height: 80,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blueGrey[700],
                        height: 25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(drinksbox.get('1')['name'],style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              width: 30,
                              padding: EdgeInsets.only(bottom: 5),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: controllerList[0],
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  border: InputBorder.none
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blueGrey[700],
                        height: 25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(drinksbox.get('2')['name'],style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              width: 30,
                              padding: EdgeInsets.only(bottom: 5),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: controllerList[1],
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blueGrey[700],
                        height: 25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(drinksbox.get('3')['name'],style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              width: 30,
                              padding: EdgeInsets.only(bottom: 5),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: controllerList[2],
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blueGrey[700],
                        height: 25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(drinksbox.get('4')['name'],style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              width: 30,
                              padding: EdgeInsets.only(bottom: 5),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: controllerList[3],
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blueGrey[700],
                        height: 25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(drinksbox.get('5')['name'],style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              width: 30,
                              padding: EdgeInsets.only(bottom: 5),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: controllerList[4],
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blueGrey[700],
                        height: 25,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(drinksbox.get('6')['name'],style: TextStyle(color: Colors.white),),
                            ),
                            Container(
                              width: 30,
                              padding: EdgeInsets.only(bottom: 5),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: controllerList[5],
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),


            SizedBox(height: 30,),


            Container(
                color: Colors.pinkAccent,
                child: MaterialButton(
                  onPressed: () async
                  {
                    for(int i =0;i<6;i++){
                      var x = int.parse(controllerList[i].text);
                      if(widget.id == 1){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':x,'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 2){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':x,'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 3){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':x,'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 4){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':x,'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 5){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':x,'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 6){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':x,'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 7){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':x,'ps8':drinksbox.get('${i+1}')['ps8'],});
                      }else if(widget.id == 8){
                        await drinksbox.put('${i+1}',{'name': drinksbox.get('${i+1}')['name'],'price':drinksbox.get('${i+1}')['price'],'ps1':drinksbox.get('${i+1}')['ps1'],'ps2':drinksbox.get('${i+1}')['ps2'],'ps3':drinksbox.get('${i+1}')['ps3'],'ps4':drinksbox.get('${i+1}')['ps4'],'ps5':drinksbox.get('${i+1}')['ps5'],'ps6':drinksbox.get('${i+1}')['ps6'],'ps7':drinksbox.get('${i+1}')['ps7'],'ps8':x,});
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
                    setState(() {
                      getdrinkscontroller(widget.id);
                    });


                  },
                  child: Text('Add Item',style: TextStyle(color: Colors.white),
                  ),
                )
            ),


            SizedBox(height: 30,),


            Container(
                color: Colors.lightBlue,
                width: 300,
                child: MaterialButton(
                  onPressed: ()
                  {
                    drinksmodel = [];
                    for(int i =0;i<6;i++) {
                      if(drinksbox.get('${i+1}')['ps${widget.id}']>0){
                        drinksmodel.add(finalcalc(drinkname: drinksbox.get('${i+1}')['name'], quatity: drinksbox.get('${i+1}')['ps${widget.id}'], oneprice: drinksbox.get('${i+1}')['price'], totalprice: int.parse(drinksbox.get('${i+1}')['ps${widget.id}'].toString())*double.parse(drinksbox.get('${i+1}')['price'].toString())));
                      }
                    }
                    var endh = DateFormat.H().format(now);
                    var endm = DateFormat.m().format(now);
                    double hourprice = 0;
                    double minprice = 0;
                    if(multi){
                      if(int.parse(endh) > model.hours)
                      {
                        minprice = (60.0-model.minutes)*((double.parse(psbox.get('${widget.id}')['price_multi'].toString())) / 60);
                        int hournow = model.hours + 1;
                        hourprice = (int.parse(endh) - hournow)*double.parse(psbox.get('${widget.id}')['price_multi'].toString());
                        minprice += int.parse(endm)*((double.parse(psbox.get('${widget.id}')['price_multi'].toString())) / 60);
                      }
                      else if(int.parse(endh) < model.hours)
                      {
                        minprice = (60.0-model.minutes)*((double.parse(psbox.get('${widget.id}')['price_multi'].toString())) / 60);
                        int hournow = model.hours + 1;
                        if(hournow > 23){
                          hournow = 0;
                          hourprice = (int.parse(endh) - hournow)*double.parse(psbox.get('${widget.id}')['price_multi'].toString());
                          minprice += int.parse(endm)*((double.parse(psbox.get('${widget.id}')['price_multi'].toString())) / 60);
                        }else{
                          hourprice = ((24 - hournow) + int.parse(endh))*double.parse(psbox.get('${widget.id}')['price_multi'].toString());
                          minprice += int.parse(endm)*((double.parse(psbox.get('${widget.id}')['price_multi'].toString())) / 60);
                        }

                      }else if(int.parse(endh) == model.hours){
                        hourprice = 0;
                        minprice = (int.parse(endm) - model.minutes)*((double.parse(psbox.get('${widget.id}')['price_multi'].toString())) / 60);
                      }
                    }
                    else
                    {
                      if(int.parse(endh) > model.hours)
                      {
                        minprice = (60.0-model.minutes)*((double.parse(psbox.get('${widget.id}')['price_single'].toString())) / 60);
                        int hournow = model.hours + 1;
                        hourprice = (int.parse(endh) - hournow)*double.parse(psbox.get('${widget.id}')['price_single'].toString());
                        minprice += int.parse(endm)*((double.parse(psbox.get('${widget.id}')['price_single'].toString())) / 60);
                      }
                      else if(int.parse(endh) < model.hours)
                      {
                        minprice = (60.0-model.minutes)*((double.parse(psbox.get('${widget.id}')['price_single'].toString())) / 60);
                        int hournow = model.hours + 1;
                        if(hournow > 23){
                          hournow = 0;
                          hourprice = (int.parse(endh) - hournow)*double.parse(psbox.get('${widget.id}')['price_single'].toString());
                          minprice += int.parse(endm)*((double.parse(psbox.get('${widget.id}')['price_single'].toString())) / 60);
                        }else{
                          hourprice = ((24 - hournow) + int.parse(endh))*double.parse(psbox.get('${widget.id}')['price_single'].toString());
                          minprice += int.parse(endm)*((double.parse(psbox.get('${widget.id}')['price_single'].toString())) / 60);
                        }

                      }else if(int.parse(endh) == model.hours){
                        hourprice = 0;
                        minprice = (int.parse(endm) - model.minutes)*((double.parse(psbox.get('${widget.id}')['price_single'].toString())) / 60);
                      }
                    }

                  timeprice = hourprice + minprice;
                  print(timeprice.toString());
                  price=timeprice;
                  drinksmodel = [];
                  for(int i =0;i<6;i++) {
                      if(drinksbox.get('${i+1}')['ps${widget.id}']>0){
                        drinksmodel.add(finalcalc(drinkname: drinksbox.get('${i+1}')['name'], quatity: drinksbox.get('${i+1}')['ps${widget.id}'], oneprice: drinksbox.get('${i+1}')['price'], totalprice: int.parse(drinksbox.get('${i+1}')['ps${widget.id}'].toString())*double.parse(drinksbox.get('${i+1}')['price'].toString())));
                        price += int.parse(drinksbox.get('${i+1}')['ps${widget.id}'].toString())*double.parse(drinksbox.get('${i+1}')['price'].toString());
                    }
                  }
                    if(model.green == false){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => details(id : widget.id,startedtime: formattedDate,listt: drinksmodel,timeprice: timeprice, totalprice: price)));
                    }

                  },
                  child: Text('Show details',style: TextStyle(color: Colors.white),
                  ),
                )
            ),


          ],
        ),
      ),

    );



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
        children:[
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 500,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context,index)=>itembuilder(models[index]),
                    separatorBuilder: (context,index)=>SizedBox(width: 25,),
                    itemCount: models.length,
                  ),
                ),
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
                    Text("Added",style: TextStyle(color: Colors.white.withOpacity(0.8) , fontSize: 40,fontWeight: FontWeight.w600),),
                  ],
                )
              ),
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              visible: visable,
            ),

          ),
        ]
      ),
    );
  }

Future<void> updateall()async{
  await getpsnew(widget.id);
  await getdrinkscontroller(widget.id);
}



}