import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:layout_prac/model/main_screen_data.dart';


const List<StaggeredTile> _tiles2 = <StaggeredTile>[
  StaggeredTile.count(1, 1),
  StaggeredTile.count(3, 0.335),
  StaggeredTile.count(3, 0.335),
  StaggeredTile.count(3, 0.335),
];

class SubPart2 extends StatelessWidget {
  final MainPurchasesModel mainPurchase;
  const SubPart2({Key? key, required this.mainPurchase}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: _tiles2.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Container(
              decoration: BoxDecoration(border: Border.all()),
              alignment: Alignment.center,
              child: Text(mainPurchase.company, textAlign: TextAlign.center,),
            );
          } else if (index == 1) {
            return Container(
              child: Center(child: Text("이번달 매출액: ${mainPurchase.thisRevenue}원", style: TextStyle(fontSize: 12.5),)),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(),
                  bottom: BorderSide(),
                ),
              ),
            );
          } else if (index == 2) {
            return Container(
              child: Center(child: Text("지난달 매출액: ${mainPurchase.lastRevenue}원", style: TextStyle(fontSize: 12.5),)),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(),
                ),
              ),
            );
          } else {
            return Container(
              child: Center(child: Text("미지급금: ${mainPurchase.unpaid}원", style: TextStyle(fontSize: 12.5),)),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide()
                  )
              ),
            );
          }

        },
        crossAxisSpacing: 13.0,
        staggeredTileBuilder: (int i) {
          return i >= _tiles2.length ? null : _tiles2[i];
        }
    );
  }
}