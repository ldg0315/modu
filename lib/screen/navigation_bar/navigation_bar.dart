import 'package:flutter/material.dart';
import 'package:layout_prac/screen/main/main_screen.dart';
import 'package:layout_prac/screen/service/service_screen.dart';
import 'package:layout_prac/screen/trading/trading_screen.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: 1800,
        height: 120,
        decoration: BoxDecoration(border: Border.all()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: const Text(
                '네이첸',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38.0),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ServiceScreen()));
              },
            ),
            Row(
              children: [
                Text(
                  '상품 관리',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                ),
                SizedBox(
                  width: 36,
                ),
                InkWell(
                  child: Text(
                    '거래처 관리',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Layout_1()));
                  },
                ),
              ],
            ),
            InkWell(
              child: Text(
                '모두의거래@네이첸',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45.0,
                    color: Colors.indigo),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
            ),
            Row(
              children: const [
                Text(
                  '고객센터',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                ),
                SizedBox(
                  width: 36,
                ),
                Text(
                  '로그아웃',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                ),
              ],
            ),
            const Text('')
          ],
        ),
      ),
    );
  }
}
