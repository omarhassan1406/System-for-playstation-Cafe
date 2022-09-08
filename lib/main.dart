import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';


import 'Login.dart';
late Box usersbox;
late Box psbox;
late Box drinksbox;
late Box orderbox;
late int orderIndex= 1;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory dir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(dir.path);
  usersbox = await Hive.openBox('Users');
  // await usersbox.put('acc1',{'username':'eljoker','password':'eljokerps'});
  // await usersbox.put('acc2',{'username':'admin','password':'admin'});

  psbox = await Hive.openBox('pss');
  // await psbox.put('1',{'startTime_hour': 0,'startTime_Minute': 0,'price_single':30.0,'price_multi':45.0,'green':1,'multi':0});
  // await psbox.put('2',{'startTime_hour': 0,'startTime_Minute': 0,'price_single':30.0,'price_multi':45.0,'green':1,'multi':0});
  // await psbox.put('3',{'startTime_hour': 0,'startTime_Minute': 0,'price_single':30.0,'price_multi':45.0,'green':1,'multi':0});
  // await psbox.put('4',{'startTime_hour': 0,'startTime_Minute': 0,'price_single':50.0,'price_multi':70.0,'green':1,'multi':0});
  // await psbox.put('5',{'startTime_hour': 0,'startTime_Minute': 0,'price_single':40.0,'price_multi':60.0,'green':1,'multi':0});
  // await psbox.put('6',{'startTime_hour': 0,'startTime_Minute': 0,'price_single':40.0,'price_multi':60.0,'green':1,'multi':0});
  // await psbox.put('7',{'startTime_hour': 0,'startTime_Minute': 0,'price_single':40.0,'price_multi':40.0,'green':1,'multi':0});
  // await psbox.put('8',{'startTime_hour': 0,'startTime_Minute': 0,'price_single':25.0,'price_multi':25.0,'green':1,'multi':0});
//'شاى'
  drinksbox = await Hive.openBox('drinks');
  // await drinksbox.put('1',{'name': drinksbox.get('1')['name'],'price':drinksbox.get('1')['price'],'ps1':drinksbox.get('1')['ps1'],'ps2':drinksbox.get('1')['ps2'],'ps3':drinksbox.get('1')['ps3'],'ps4':drinksbox.get('1')['ps4'],'ps5':drinksbox.get('1')['ps5'],'ps6':drinksbox.get('1')['ps6'],'ps7':drinksbox.get('1')['ps7'],'ps8':drinksbox.get('1')['ps8'],});
  // await drinksbox.put('2',{'name': 'ينسون','price':5.0,'ps1':0,'ps2':0,'ps3':0,'ps4':0,'ps5':0,'ps6':0,'ps7':0,'ps8':0,});
  // await drinksbox.put('3',{'name': 'قهوة','price':9.0,'ps1':0,'ps2':0,'ps3':0,'ps4':0,'ps5':0,'ps6':0,'ps7':0,'ps8':0,});
  // await drinksbox.put('4',{'name': 'نسكافيه','price':12.0,'ps1':0,'ps2':0,'ps3':0,'ps4':0,'ps5':0,'ps6':0,'ps7':0,'ps8':0,});
  // await drinksbox.put('5',{'name': 'بيبسى','price':10.0,'ps1':0,'ps2':0,'ps3':0,'ps4':0,'ps5':0,'ps6':0,'ps7':0,'ps8':0,});
  // await drinksbox.put('6',{'name': 'مياة','price':5.0,'ps1':0,'ps2':0,'ps3':0,'ps4':0,'ps5':0,'ps6':0,'ps7':0,'ps8':0,});

  orderbox = await Hive.openBox('orders');

  print(await usersbox.get('acc1'));



  runApp(MaterialApp(
    home: Login(),
    debugShowCheckedModeBanner: false,
  )
  );
}
