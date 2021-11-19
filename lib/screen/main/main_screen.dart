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
  late int n;
  late int m;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    n = 0;
    m = 0;
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
                                    child: ContentsPart(mainSales: mainSaleList[n%mainSaleList.length]),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 415,
                                  height: 72,
                                  child: SubPart(mainSales: mainSaleList[(n+1)%mainSaleList.length]),
                                ),
                                const SizedBox(
                                  height: 38,
                                ),
                                SizedBox(
                                  width: 415,
                                  height: 72,
                                  child: SubPart(mainSales: mainSaleList[(n+2)%mainSaleList.length]),
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
                                              n++;
                                            });
                                          },
                                          icon: const Icon(Icons.arrow_drop_up, size: 50, color: Colors.grey,)
                                      ),
                                    ),
                                    SizedBox(
                                      child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              n--;
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
                                    child: ContentsPart2(mainPurchase: mainPurchaseList[m%mainPurchaseList.length],)
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 415,
                                  height: 72,
                                  child: SubPart2(mainPurchase: mainPurchaseList[(m+1)%mainPurchaseList.length],)
                                ),
                                const SizedBox(
                                  height: 38,
                                ),
                                SizedBox(
                                  width: 415,
                                  height: 72,
                                  child: SubPart2(mainPurchase: mainPurchaseList[(m+2)%mainPurchaseList.length],),
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
                                              m++;
                                            });
                                          },
                                          icon: const Icon(Icons.arrow_drop_up, size: 50, color: Colors.grey,)
                                      ),
                                    ),
                                    SizedBox(
                                      child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              m--;
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
