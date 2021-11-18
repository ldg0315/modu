import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:layout_prac/model/main_screen_data.dart';


const List<StaggeredTile> _tiles = const <StaggeredTile>[
  const StaggeredTile.count(1, 3),
  const StaggeredTile.count(3, 0.6),
  const StaggeredTile.count(3, 0.6),
  const StaggeredTile.count(3, 0.6),
  const StaggeredTile.count(3, 1.2),
];

class ContentsPart extends StatelessWidget {
  final MainSalesModel mainSales;

  const ContentsPart({Key? key, required this.mainSales}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: _tiles.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Container(
              decoration: BoxDecoration(border: Border.all()),
              alignment: Alignment.center,
              child: Text(mainSales.company, textAlign: TextAlign.center, ),
            );
          }
          if (index == 1) {
            return Container(
              decoration: BoxDecoration(border: Border.all()),
              alignment: Alignment.center,
              child: Text("이번달 매출액: ${mainSales.thisRevenue}원", textAlign: TextAlign.center,),
            );
          }
          if (index == 2) {
            return Container(
              decoration: BoxDecoration(border: Border.all()),
              alignment: Alignment.center,
              child: Text("지난달 매출액: ${mainSales.lastRevenue}원", textAlign: TextAlign.center,),
            );
          }
          if (index == 3) {
            return Container(
              decoration: BoxDecoration(border: Border.all()),
              alignment: Alignment.center,
              child: Text("미수금: ${mainSales.unpaid}원", textAlign: TextAlign.center,),
            );
          } else {
            return Column(
              children: [
                Container(
                  width: 415,
                  height: 25,
                  child: const Center(child: Text("주요품목")),
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(),
                      top: BorderSide(),
                      right: BorderSide(),
                    ),
                  ),
                ),
                Container(
                  width: 415,
                  height: 90,
                  decoration: BoxDecoration(border: Border.all()),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i = 0; i < mainSales.mainItems.length; i++)
                          Text(mainSales.mainItems[i])
                      ],
                    ),
                  ),
                )
              ],
            );
          }
        },
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        padding: EdgeInsets.only(top: 23.0),
        staggeredTileBuilder: (int i) {
          return i >= _tiles.length ? null : _tiles[i];
        }
    );
  }
}

