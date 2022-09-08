class timemodel{
  late int room;
  late int hours;
  late int minutes;
  late bool green;
  timemodel({
    required this.room,
    required this.hours,
    required this.minutes,
    required this.green,
  });
}

class finalcalc{
  String drinkname;
  int quatity;
  double oneprice;
  double totalprice;
  finalcalc({
    required this.drinkname,
    required this.quatity,
    required this.oneprice,
    required this.totalprice,
  });

}

class orders{
  String roomnum;
  String startedat;
  String finishedat;
  double timep;
  double drinksp;
  double totalp;
  int ordernum;
  orders({
    required this.roomnum,
    required this.startedat,
    required this.finishedat,
    required this.timep,
    required this.drinksp,
    required this.totalp,
    required this.ordernum,
  });

}