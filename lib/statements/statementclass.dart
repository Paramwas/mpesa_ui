class Statementrecent {
  final String name;
  final String ammount;
  final String date;
  final String number;
  final String time;
  Statementrecent(
      {required this.ammount,
      required this.date,
      required this.name,
      required this.number,
      required this.time});

  factory Statementrecent.fromMap(Map<String, dynamic> data) {
    return Statementrecent(
        ammount: data['ammount'],
        date: data['date'],
        name: data['name'],
        number: data['number'],
        time: data['time']);
  }
}
