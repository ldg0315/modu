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

class ContentsPart2 extends StatelessWidget {
  final MainPurchasesModel mainPurchase;

  const ContentsPart2({Key? key, required this.mainPurchase, }) : super(key: key);

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
              child: Text(mainPurchase.company, textAlign: TextAlign.center,),
            );
          }
          if (index == 1) {
            return Container(
              decoration: BoxDecoration(border: Border.all()),
              alignment: Alignment.center,
              child: Text("이번달 매입액: ${mainPurchase.thisRevenue}원", textAlign: TextAlign.center,),
            );
          }
          if (index == 2) {
            return Container(
              decoration: BoxDecoration(border: Border.all()),
              alignment: Alignment.center,
              child: Text("지난달 매입액: ${mainPurchase.lastRevenue}원", textAlign: TextAlign.center,),
            );
          }
          if (index == 3) {
            return Container(
              decoration: BoxDecoration(border: Border.all()),
              alignment: Alignment.center,
              child: Text("미지급금: ${mainPurchase.unpaid}원", textAlign: TextAlign.center,),
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
                        for (int i = 0; i < mainPurchase.mainItems.length; i++)
                          Text(mainPurchase.mainItems[i])
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

