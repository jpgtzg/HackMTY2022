import 'package:sqflite/sqflite.dart';

class Truck{
  late String name;
  
  Truck(this.name);

  Map<String, dynamic> toMap(){
    return{
      'name': name,
    };
  }
  
  Truck.fromMap(Map<String, dynamic> map) {
    name = map['name'];

  }
}

class TruckDatabase {
  late Database db;

  initDB() async {
    db = await openDatabase('database.db',
        version: 1, onCreate: (Database _db, int version) {
          db.execute("CREATE TABLE trucks (id INTEGER PRIMARY KEY, name TEXT NOT NULL);");
        });
  }

  insert(Truck truck) async{
    db.insert("trucks", truck.toMap());
  }

  Future<Iterable<Truck>> getAllTrucks() async{
    List<Map<String, dynamic>> results = await db.query("trucks");

    return results.map((map) => Truck.fromMap(map));
  }
}
