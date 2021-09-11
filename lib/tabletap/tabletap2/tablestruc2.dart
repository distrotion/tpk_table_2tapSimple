import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pick_edit_datatable/bloc/BlocPageRebuild.dart';
import 'package:pick_edit_datatable/bloc/datasequnce/datasequnce_bloc.dart';
import 'package:pick_edit_datatable/bloc/datasequnce/datasequnce_event.dart';
import 'package:pick_edit_datatable/style/style.dart';
import 'package:pick_edit_datatable/tabletap/tabletap2/datatap2/datatap2.dart';
import 'package:pick_edit_datatable/tabletap/tabletap2/tablebodytap2.dart';
import 'package:pick_edit_datatable/widget/ComBtnBlack.dart';
import 'package:pick_edit_datatable/widget/ComBtnBlackBorder.dart';
import 'package:pick_edit_datatable/widget/ComInputText.dart';
import 'package:pick_edit_datatable/widget/ComPageNumBtnGroup.dart';

import 'modelintable.dart';

class TableTap2Struc extends StatelessWidget {
  const TableTap2Struc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _TableStrucBuffer();
  }
}

class _TableStrucBuffer extends StatelessWidget {
  const _TableStrucBuffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FetchDataTable2Bloc(),
      child: BlocBuilder<FetchDataTable2Bloc, List<MainStrucTableTap2>>(
        builder: (_, State) {
          return _TableStrucMain2(
            datainput: State,
          );
        },
      ),
    );
  }
}

class _TableStrucMain2 extends StatefulWidget {
  const _TableStrucMain2({Key? key, this.datainput}) : super(key: key);

  final List<MainStrucTableTap2>? datainput;

  @override
  __TableStrucMain2State createState() => __TableStrucMain2State();
}

class __TableStrucMain2State extends State<_TableStrucMain2> {
  @override
  void initState() {
    super.initState();
    context.read<FetchDataTable2Bloc>().add(DataSequncePage2.select);
  }

  @override
  Widget build(BuildContext context) {
    List<MainStrucTableTap2> _datainput = widget.datainput ?? [];
    void tapChangeTablePage(int n) {
      setState(() {
        // print(n);
        TableTap2nPage = n;
      });
    }

    return SingleChildScrollView(
        child: Wrap(
      children: [
        Container(
          // color: Colors.red,
          width: 680,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: CustomTheme.colorGreyBg,
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  boxShadow: [
                    BoxShadow(
                        color: CustomTheme.colorShadowBgStrong,
                        offset: Offset(0, 0),
                        blurRadius: 10,
                        spreadRadius: 0)
                  ],
                ),
                child: DataListTable2(
                  datainput: _datainput,
                ),
              ),
              _BottomPageNum(
                func: tapChangeTablePage,
                datainput: _datainput,
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: CustomTheme.colorGreyBg,
            borderRadius: BorderRadius.all(Radius.circular(24)),
            boxShadow: [
              BoxShadow(
                  color: CustomTheme.colorShadowBgStrong,
                  offset: Offset(0, 0),
                  blurRadius: 10,
                  spreadRadius: 0)
            ],
          ),
          width: 500,
          height: 335,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 460,
                  height: 50,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 400,
                height: 40,
                // color: Colors.red,
                child: ComInputText(
                  isContr: undercontroltap2,
                  fnContr: (input) {
                    undercontroltap2 = input;
                  },
                  sValue: EditDataTable2.number,
                  returnfunc: () {},
                  isEnabled: false,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 400,
                height: 40,
                // color: Colors.red,
                child: ComInputText(
                    isContr: undercontroltap2,
                    fnContr: (input) {
                      undercontroltap2 = input;
                    },
                    sValue: EditDataTable2.field01,
                    returnfunc: (String s) {
                      EditDataTable2buffer.field01 = s;
                    }),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 400,
                height: 40,
                // color: Colors.red,
                child: ComInputText(
                  isContr: undercontroltap2,
                  fnContr: (input) {
                    undercontroltap2 = input;
                  },
                  sValue: EditDataTable2.field02,
                  returnfunc: (String s) {
                    EditDataTable2buffer.field02 = s;
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 400,
                height: 40,
                // color: Colors.red,
                child: ComInputText(
                  isContr: undercontroltap2,
                  fnContr: (input) {
                    undercontroltap2 = input;
                  },
                  sValue: EditDataTable2.field03,
                  returnfunc: (String s) {
                    EditDataTable2buffer.field03 = s;
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 400,
                height: 40,
                // color: Colors.red,
                child: ComInputText(
                  isContr: undercontroltap2,
                  fnContr: (input) {
                    undercontroltap2 = input;
                  },
                  sValue: EditDataTable2.field04,
                  returnfunc: (String s) {
                    EditDataTable2buffer.field04 = s;
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 460,
                  height: 40,
                  // color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ComBtnBlack(
                          sLabel: "Save",
                          func: () {
                            print(EditDataTable2buffer.field04);
                            // context.read<FetchDataTable1Bloc>().add(
                            //     DataSequncePage1.update); //<------------------
                          },
                          nWidth: 134),
                      SizedBox(
                        width: 10,
                      ),
                      ComBtnBlackBorder(
                          sLabel: "Cancle",
                          cBg: Colors.red,
                          func: () {
                            undercontroltap2 = true;
                            EditDataTable2 = MainStrucTableTap2(
                                number: "",
                                field01: "",
                                field02: "",
                                field03: "",
                                field04: "",
                                field05: "",
                                field06: "",
                                field07: "",
                                field08: "",
                                field09: "",
                                field10: "");
                            BlocProvider.of<BlocPageRebuild>(context)
                                .rebuildPage();
                          },
                          nWidth: 134),
                      SizedBox(
                        width: 10,
                      ),
                      ComBtnBlackBorder(
                          sLabel: "New",
                          func: () {
                            context
                                .read<FetchDataTable1Bloc>()
                                .add(DataSequncePage1.insert);
                          },
                          nWidth: 134),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

class _BottomPageNum extends StatelessWidget {
  _BottomPageNum({Key? key, required this.func, this.datainput})
      : super(key: key);
  final Function func;
  List<MainStrucTableTap2>? datainput;

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment mainAxisAlignment;
    List<MainStrucTableTap2> _datainput = datainput ?? [];

    //print("build BottomPageNum " + BlocPatientList.state.patientTableData.length.toString());
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Pages",
          style: TxtStyle(fontSize: 12),
        ),
        ComPageNumBtnGroup(
          nItemNum: _datainput.length,
          nPageSelects: TableTap2nPage,
          func: func,
          nNumToShowArrowAtPage: nNumToShowArrowAtPageTable2,
          nTableCellPerEachPage: nTableCellPerEachPageTable2,
        )
      ],
    );
  }
}
