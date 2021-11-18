import 'package:flutter/material.dart';
import 'package:layout_prac/model/main_screen_data.dart';
import 'package:layout_prac/screen/main/components/contents_part.dart';
import 'package:layout_prac/screen/main/components/contents_part2.dart';
import 'package:layout_prac/screen/main/components/sub_part.dart';
import 'package:layout_prac/screen/main/components/sub_part2.dart';
import 'package:layout_prac/screen/navigation_bar/navigation_bar.dart';

class MainScreen extends StatefulWidget {

  const MainScreen({Key? key,}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int zero;
  late int zero2;
  late int one;
  late int one2;
  late int two;
  late int two2;
  late int button;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    zero = 0;
    zero2 = 0;
    one = 1;
    one2 = 1;
    two = 2;
    two2 = 2;
  }

  @override
  Widget build(BuildContext context) {
    List mainSaleList = [GS, HB, Joon];
    List mainPurchaseList = [MS, NS, EL];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const NavigationBar(),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 주요 매출처
                      Column(
                        children: [
                          const SizedBox(
                            width: 415,
                            height: 50,
                            child: Text(
                              "주요 매출처",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 415,
                            height: 632,
                            decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(),
                                  bottom: BorderSide(),
                                )
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                    width: 415,
                                    height: 314,
                                    child: ContentsPart(mainSales: mainSaleList[zero]),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 415,
                                  height: 72,
                                  child: SubPart(mainSales: mainSaleList[one]),
                                ),
                                const SizedBox(
                                  height: 38,
                                ),
                                SizedBox(
                                  width: 415,
                                  height: 72,
                                  child: SubPart(mainSales: mainSaleList[two]),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              zero++;
                                              one++;
                                              two++;
                                              if (two == mainSaleList.length) {
                                                two = 0;
                                              } else if (one == mainSaleList.length) {
                                                one = 0;
                                              } else if (zero == mainSaleList.length) {
                                                zero = 0;
                                              }
                                            });
                                          },
                                          icon: const Icon(Icons.arrow_drop_up, size: 50, color: Colors.grey,)
                                      ),
                                    ),
                                    SizedBox(
                                      child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              zero--;
                                              one--;
                                              two--;
                                              if (two < 0) {
                                                two = mainSaleList.length - 1;
                                              } else if (one < 0) {
                                                one = mainSaleList.length - 1;
                                              } else if (zero < 0) {
                                                zero = mainSaleList.length - 1;
                                              }
                                            });
                                          },
                                          icon: const Icon(Icons.arrow_drop_down, size: 50, color: Colors.grey,)
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),

                          )
                        ],
                      ),
                      const SizedBox(
                        width: 151,
                      ),

                      // 주요 매입처
                      Column(
                        children: [
                          const SizedBox(
                            width: 415,
                            height: 50,
                            child: Text(
                              "주요 매입처",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            width: 415,
                            height: 632,
                            decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(),
                                  bottom: BorderSide(),
                                )
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                    width: 415,
                                    height: 314,
                                    child: ContentsPart2(mainPurchase: mainPurchaseList[zero2],)
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 415,
                                  height: 72,
                                  child: SubPart2(mainPurchase: mainPurchaseList[one2],)
                                ),
                                const SizedBox(
                                  height: 38,
                                ),
                                SizedBox(
                                  width: 415,
                                  height: 72,
                                  child: SubPart2(mainPurchase: mainPurchaseList[two2],),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              zero2++;
                                              one2++;
                                              two2++;
                                              if (two2 == mainSaleList.length) {
                                                two2 = 0;
                                              } else if (one2 == mainSaleList.length) {
                                                one2 = 0;
                                              } else if (zero2 == mainSaleList.length) {
                                                zero2 = 0;
                                              }
                                            });
                                          },
                                          icon: const Icon(Icons.arrow_drop_up, size: 50, color: Colors.grey,)
                                      ),
                                    ),
                                    SizedBox(
                                      child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              zero2--;
                                              one2--;
                                              two2--;
                                              if (two2 < 0) {
                                                two2 = mainSaleList.length - 1;
                                              } else if (one2 < 0) {
                                                one2 = mainSaleList.length - 1;
                                              } else if (zero2 < 0) {
                                                zero2 = mainSaleList.length - 1;
                                              }
                                            });
                                          },
                                          icon: const Icon(Icons.arrow_drop_down, size: 50, color: Colors.grey,)
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
