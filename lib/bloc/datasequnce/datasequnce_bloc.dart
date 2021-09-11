import 'dart:async';
import 'dart:convert';

//----------------------------------------------------------------
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:pick_edit_datatable/tabletap/tabletap1/modelintable.dart';
import 'package:pick_edit_datatable/tabletap/tabletap2/modelintable.dart';
import 'datasequnce_event.dart';
import 'datatest.dart';
//----------------------------------------------------------------

//------------------------------------------------------- First

class FetchDataTable1Bloc
    extends Bloc<DataSequncePage1, List<MainStrucTableTap1>> {
  FetchDataTable1Bloc() : super([]);

  @override
  Stream<List<MainStrucTableTap1>> mapEventToState(
      DataSequncePage1 event) async* {
    if (event == DataSequncePage1.select) {
      yield* selectData_fn(state);
    } else if (event == DataSequncePage1.update) {
      yield* updateData_fn(state);
    } else if (event == DataSequncePage1.delete) {
      yield* deleteData_fn(state);
    } else if (event == DataSequncePage1.insert) {
      yield* InsertData_fn(state);
    }
  }
}

Stream<List<MainStrucTableTap1>> selectData_fn(
    List<MainStrucTableTap1> state) async* {
  print("SELECT FUNCTION BLOC");
  // final response = await http.post(
  //     Uri.parse("http://localhost:9000/table1Select"),
  //     body: {"NewData": EditDataTable1});

  // // print(response);
  // var databuff = [];
  // if (response.statusCode == 200) {
  //   databuff = jsonDecode(response.body);
  // } else {
  //   print("where is my server");
  // }
  // state = databuff;
  state = rListDataTableTap1;
  yield state;
}

Stream<List<MainStrucTableTap1>> updateData_fn(
    List<MainStrucTableTap1> state) async* {
  print("UPDATE FUNCTION BLOC");
  // final response = await http.post(
  //     Uri.parse("http://localhost:9000/table1Update"),
  //     body: {"NewData": EditDataTable1});

  // // print(response);
  // var databuff = [];
  // if (response.statusCode == 200) {
  //   databuff = jsonDecode(response.body);
  // } else {
  //   print("where is my server");
  // }
  // state = databuff;
  state = [];
  yield state;
}

Stream<List<MainStrucTableTap1>> deleteData_fn(
    List<MainStrucTableTap1> state) async* {
  print("DELETE FUNCTION BLOC");
  // final response = await http.post(
  //     Uri.parse("http://localhost:9000/table1Delete"),
  //     body: {"NewData": EditDataTable1});

  // // print(response);
  // var databuff = [];
  // if (response.statusCode == 200) {
  //   databuff = jsonDecode(response.body);
  // } else {
  //   print("where is my server");
  // }
  // state = databuff;
  state = [];
  yield state;
}

Stream<List<MainStrucTableTap1>> InsertData_fn(
    List<MainStrucTableTap1> state) async* {
  print("INSERT FUNCTION BLOC");
  // final response = await http.post(
  //     Uri.parse("http://localhost:9000/table1Insert"),
  //     body: {"NewData": EditDataTable1});

  // // print(response);
  // var databuff = [];
  // if (response.statusCode == 200) {
  //   databuff = jsonDecode(response.body);
  // } else {
  //   print("where is my server");
  // }
  // state = databuff;
  state = [];
  yield state;
}

class FetchDataTable2Bloc
    extends Bloc<DataSequncePage2, List<MainStrucTableTap2>> {
  FetchDataTable2Bloc() : super([]);

  @override
  Stream<List<MainStrucTableTap2>> mapEventToState(
      DataSequncePage2 event) async* {
    if (event == DataSequncePage2.select) {
      yield* selectData2_fn(state);
    } else if (event == DataSequncePage2.update) {
      yield* updateData2_fn(state);
    } else if (event == DataSequncePage2.delete) {
      yield* deleteData2_fn(state);
    } else if (event == DataSequncePage2.insert) {
      yield* InsertData2_fn(state);
    }
  }
}

Stream<List<MainStrucTableTap2>> selectData2_fn(
    List<MainStrucTableTap2> state) async* {
  print("SELECT FUNCTION BLOC 2");
  // final response = await http.post(
  //     Uri.parse("http://localhost:9000/table1Select"),
  //     body: {"NewData": EditDataTable1});

  // // print(response);
  // var databuff = [];
  // if (response.statusCode == 200) {
  //   databuff = jsonDecode(response.body);
  // } else {
  //   print("where is my server");
  // }
  // state = databuff;
  state = rListDataTableTap2;
  yield state;
}

Stream<List<MainStrucTableTap2>> updateData2_fn(
    List<MainStrucTableTap2> state) async* {
  print("UPDATE FUNCTION BLOC");
  // final response = await http.post(
  //     Uri.parse("http://localhost:9000/table1Update"),
  //     body: {"NewData": EditDataTable1});

  // // print(response);
  // var databuff = [];
  // if (response.statusCode == 200) {
  //   databuff = jsonDecode(response.body);
  // } else {
  //   print("where is my server");
  // }
  // state = databuff;
  state = [];
  yield state;
}

Stream<List<MainStrucTableTap2>> deleteData2_fn(
    List<MainStrucTableTap2> state) async* {
  print("DELETE FUNCTION BLOC 2");
  // final response = await http.post(
  //     Uri.parse("http://localhost:9000/table1Delete"),
  //     body: {"NewData": EditDataTable1});

  // // print(response);
  // var databuff = [];
  // if (response.statusCode == 200) {
  //   databuff = jsonDecode(response.body);
  // } else {
  //   print("where is my server");
  // }
  // state = databuff;
  state = [];
  yield state;
}

Stream<List<MainStrucTableTap2>> InsertData2_fn(
    List<MainStrucTableTap2> state) async* {
  print("INSERT FUNCTION BLOC 2");
  // final response = await http.post(
  //     Uri.parse("http://localhost:9000/table1Insert"),
  //     body: {"NewData": EditDataTable1});

  // // print(response);
  // var databuff = [];
  // if (response.statusCode == 200) {
  //   databuff = jsonDecode(response.body);
  // } else {
  //   print("where is my server");
  // }
  // state = databuff;
  state = [];
  yield state;
}
