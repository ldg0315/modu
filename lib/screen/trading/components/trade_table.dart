import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';



const List<StaggeredTile> _tiles = <StaggeredTile>[
  // 0~4
  const StaggeredTile.count(2, 0.3),
  const StaggeredTile.count(3, 0.3),
  const StaggeredTile.count(6, 1.3),
  const StaggeredTile.count(2, 0.5),
  const StaggeredTile.count(10, 0.5),
  // 5~10
  const StaggeredTile.count(2, 0.3),
  const StaggeredTile.count(3, 0.3),
  const StaggeredTile.count(2, 0.4),
  const StaggeredTile.count(6, 0.4),
  const StaggeredTile.count(1, 0.4),
  const StaggeredTile.count(3, 0.4),
  // 11~14
  const StaggeredTile.count(2, 0.7),
  const StaggeredTile.count(3, 0.7),
  const StaggeredTile.count(2, 0.4),
  const StaggeredTile.count(10, 0.4),
  // 15~20
  const StaggeredTile.count(5, 0.6),
  const StaggeredTile.count(6, 0.6),
  const StaggeredTile.count(2, 0.3),
  const StaggeredTile.count(4, 0.3),
  const StaggeredTile.count(2, 0.3),
  const StaggeredTile.count(4, 0.3),
  // 21~
  const StaggeredTile.count(2, 0.3),
  const StaggeredTile.count(4, 0.3),
  const StaggeredTile.count(2, 0.3),
  const StaggeredTile.count(4, 0.3),

  // const StaggeredTile.count(1, 0.3),
  // const StaggeredTile.count(2, 0.3),
  // const StaggeredTile.count(1, 0.3),
  // const StaggeredTile.count(2, 0.3),
  // const StaggeredTile.count(1, 0.3),
  // const StaggeredTile.count(2, 0.3),
  // const StaggeredTile.count(2, 0.3),
  // const StaggeredTile.count(2, 0.3),
];

StaggeredGridView tradeTable() {
  return StaggeredGridView.countBuilder(
    crossAxisCount: 23,
    itemCount: _tiles.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black)
        ),
        // child: Center(
        //   child: CircleAvatar(
        //     child: Text('$index'),
        //   ),
        // ),
      );
    },
    // mainAxisSpacing: 4.0,
    // crossAxisSpacing: 4.0,
    padding: EdgeInsets.symmetric(horizontal: 4.0),
    staggeredTileBuilder: (int i) {
      return i >= _tiles.length ? null : _tiles[i];
    },
  );
}