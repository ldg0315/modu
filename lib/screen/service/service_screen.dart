import 'package:flutter/material.dart';
import 'package:layout_prac/constants.dart';
import 'package:layout_prac/screen/navigation_bar/navigation_bar.dart';
import 'package:layout_prac/screen/service/components/circularchart.dart';
import 'package:layout_prac/screen/service/components/linechartbar_data.dart';
import 'package:layout_prac/screen/service/components/service_table.dart';
import 'package:layout_prac/screen/service/components/service_table_2.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ServiceScreen extends StatefulWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const NavigationBar(),
              const SizedBox(
                height: 122,
              ),
              SizedBox(
                width: tableWidth,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('일반 사항', style: TextStyle(fontSize: 20)),
                        Text('최종변경일:', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    service_table_1()
                  ],
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              SizedBox(
                width: tableWidth,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text("업무 담당자", style: TextStyle(fontSize: 20),)
                      ],
                    ),
                    ServiceTable2(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle, color: Colors.black26, size: 35,)),
                        const Text("  담당자 추가/관리")
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: tableWidth,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text("본점/지점", style: TextStyle(fontSize: 20),)
                      ],
                    ),
                    service_table_3(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle, color: Colors.black26, size: 35,)),
                        const Text("  배송지 추가/관리")
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: tableWidth,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text("매입/매출 요약", style: TextStyle(fontSize: 20),)
                      ],
                    ),
                    service_table_4()
                  ],
                ),
              ),
              SizedBox(
                width: tableWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 606,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("매입/매출 추이", style: TextStyle(fontSize: 20),),
                              DropdownButton(
                                value: _value,
                                items: const [
                                  DropdownMenuItem(child: Text("2021년"),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(child: Text("2020년"),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(child: Text("2019년"),
                                    value: 3,
                                  ),
                                  DropdownMenuItem(child: Text("2018년"),
                                    value: 4,
                                  ),
                                  DropdownMenuItem(child: Text("2017년"),
                                    value: 5,
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    _value = (value as int?)!;
                                  });
                                  },
                              )
                            ],
                          ),
                          SizedBox(
                            height: 401,
                            child: SfCartesianChart(
                              backgroundColor: Colors.black12,
                              primaryXAxis: CategoryAxis(),
                              primaryYAxis: NumericAxis(
                                  minimum: 0,
                                  maximum: 50,
                                  isVisible: false
                              ),
                              series: [
                                LineSeries<LinesData, String>(
                                  dataSource: [
                                    LinesData('1월', 26.5),
                                    LinesData('2월', 26.5),
                                    LinesData('3월', 25.4),
                                    LinesData('4월', 23.3),
                                    LinesData('5월', 20.6),
                                    LinesData('6월', 18.0),
                                    LinesData('7월', 17.4),
                                    LinesData('8월', 18.9),
                                    LinesData('9월', 21.2),
                                    LinesData('10월', 22.8),
                                    LinesData('11월', 23.8),
                                    LinesData('12월', 25.5),
                                  ],
                                  xValueMapper: (LinesData sales, _) => sales.year,
                                  yValueMapper: (LinesData sales, _) => sales.sales,
                                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 541,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("주요 품목", style: TextStyle(fontSize: 20),),
                              DropdownButton(
                                value: _value,
                                items: const [
                                  DropdownMenuItem(child: Text("2021년"),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(child: Text("2020년"),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(child: Text("2019년"),
                                    value: 3,
                                  ),
                                  DropdownMenuItem(child: Text("2018년"),
                                    value: 4,
                                  ),
                                  DropdownMenuItem(child: Text("2017년"),
                                    value: 5,
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    _value = (value as int?)!;
                                  });
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height: 400,
                            child: circularchart(),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
