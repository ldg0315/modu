import 'package:flutter/material.dart';
import 'package:layout_prac/model/service_screen_data.dart';

class ServiceTable2 extends StatefulWidget {
  const ServiceTable2({Key? key}) : super(key: key);

  @override
  _ServiceTable2State createState() => _ServiceTable2State();
}

class _ServiceTable2State extends State<ServiceTable2> {
  late int _radioValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _radioValue = 0;
  }

  @override
  Widget build(BuildContext context) {
    int val = 1;
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(),
      children: [
        TableRow(
            decoration: const BoxDecoration(color: Colors.black12),
            children: [
              Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: const Text('구분', textAlign: TextAlign.center,)
              ),
              const Text('성명', textAlign: TextAlign.center,),
              const Text('전화번호', textAlign: TextAlign.center,),
              const Text('휴대전화', textAlign: TextAlign.center,),
              const Text('이메일', textAlign: TextAlign.center,),
              const Text('명세서 금액표시', textAlign: TextAlign.center,),
              const Text('담당업무', textAlign: TextAlign.center,),
              const Text('기타', textAlign: TextAlign.center,),
            ]),
        TableRow(
            children: [
              Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: Text(Sim.classify, textAlign: TextAlign.center,)),
              Text(Sim.name, textAlign: TextAlign.center,),
              Text(Sim.companyNum, textAlign: TextAlign.center,),
              Text(Sim.phoneNum, textAlign: TextAlign.center,),
              Text(Sim.email, textAlign: TextAlign.center,),
              Row(children: [
                Radio(activeColor: Colors.black45, value: 0, groupValue: _radioValue, onChanged: (int? value) {
                  setState(() {
                    _radioValue = value!;
                  });
                }),
                Text('표시'),
                Radio(activeColor: Colors.black45, value: 1, groupValue: _radioValue, onChanged: (int? value) {
                  setState(() {
                    _radioValue = value!;
                  });
                }),
                Text("미표시")
              ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: DropdownButton(isExpanded: true,
                  value: val,
                  items: const [
                    DropdownMenuItem(child: Text("대표자"),
                      value: 1,
                    ),
                    DropdownMenuItem(child: Text("총괄"),
                      value: 2,
                    ),
                    DropdownMenuItem(child: Text("영업"),
                      value: 3,
                    ),
                    DropdownMenuItem(child: Text("물류"),
                      value: 4,
                    ),
                    DropdownMenuItem(child: Text("생산"),
                      value: 5,
                    ),
                    DropdownMenuItem(child: Text("기타"),
                      value: 6,
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      val = (value as int?)!;
                    });
                  },
                ),
              ),
              Text(Sim.etc, textAlign: TextAlign.center,),
            ])
      ],
    );
  }
}
