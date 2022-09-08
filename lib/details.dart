import 'package:eljoker_ps/main.dart';
import 'package:eljoker_ps/models/timemodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class details extends StatefulWidget {
  final int id;
  final String startedtime;
  final List<finalcalc> listt;
  final double timeprice;
  final double totalprice;
  const details ({Key? key, required this.id ,required this.startedtime ,required this.listt ,required this.timeprice,required this.totalprice}): super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  bool visabledrinks = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    if(widget.listt.isEmpty){
      visabledrinks = false;
      setState(() {

      });
    }
    int totaldrinks = 0;
    for(int i=0;i<widget.listt.length;i++){
      totaldrinks += widget.listt[i].totalprice.round();
    }
    Widget itembuilder (finalcalc model) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('${model.drinkname}',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
        Text('${model.quatity}',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
        Text('${model.oneprice}',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
        Text('${model.totalprice}',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
      ],
    );
    print(widget.listt.length);
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
    body: Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 150.0,left: 150,bottom: 30),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                LayoutBuilder(builder: (context, constraints) {
                  if(widget.id <= 6){
                    return Text('Room ${widget.id}', style: TextStyle(color: Colors.white , fontSize: 50,fontWeight: FontWeight.w600),);
                  }else if(widget.id == 7){
                    return Text('billiard', style: TextStyle(color: Colors.white , fontSize: 50,fontWeight: FontWeight.w600),);
                  }
                  else if(widget.id == 8){
                    return Text('pingpong', style: TextStyle(color: Colors.white , fontSize: 50,fontWeight: FontWeight.w600),);

                  }else{return Text('unk', style: TextStyle(color: Colors.white , fontSize: 50,fontWeight: FontWeight.w600),);}
                }
                ),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Started at :    ',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                    Expanded(
                        child: Center(child: Padding(
                          padding: const EdgeInsets.only(right: 130.0),
                          child: Text('${widget.startedtime}',style: TextStyle(color: Colors.white , fontSize: 40,fontWeight: FontWeight.w600),),
                        ))),
                  ],
                ),
                SizedBox(height: 50,),
                Visibility(
                  child: Container(
                    color: Colors.blueGrey[700],
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text('Drinks',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Description',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                            Text('Quantity',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                            Text('Unitprice',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                            Text('Total',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                          ],
                        ),
                        SizedBox(height: 20,),
                        ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context,index)=>itembuilder(widget.listt[index]),
                          separatorBuilder: (context,index)=>SizedBox(height: 15,),
                          itemCount: widget.listt.length,
                        ),
                      ],
                    ),
                  ),
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: visabledrinks,
                ),

                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Time price : ',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                        SizedBox(width: 20,),
                        Text('${widget.timeprice}',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                      ],
                    ),


                    Row(
                      children: [
                        Text('Drinks price : ',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                        SizedBox(width: 20,),
                        Text('${totaldrinks}',style: TextStyle(color: Colors.white , fontSize: 20,fontWeight: FontWeight.w600),),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Text('Total price : ',style: TextStyle(color: Colors.white , fontSize: 30,fontWeight: FontWeight.w600),),
                    Text('${widget.totalprice}',style: TextStyle(color: Colors.white , fontSize: 30,fontWeight: FontWeight.w600),),
                  ],
                ),
                Container(
                    color: Colors.greenAccent,
                    width: 200,
                    height: 40,
                    child: MaterialButton(onPressed: (){}
                    ,child: Text('Print',style: TextStyle(color: Colors.black , fontSize: 20,fontWeight: FontWeight.w600),),)
                ),
            ]
              ),
          ),

          ),
      ),
    ),
    );
  }
}
