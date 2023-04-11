import 'package:hive/hive.dart';

abstract class HiveLocalStorage<T> {

  late Box db;

  // HiveLocalStorage(this.db);
  void init();

  void add(T data){
    db.add(data);
  }

  List<T> getAllData(){
    return db.values.toList().cast();
  }

  Future<void> delete(T data) async{
    await db.delete(data);
  }

  Future<void> deleteAt(int index) async{
    await db.deleteAt(index);
  }

  Future deleteAll() async{
    await db.clear();

  }

}