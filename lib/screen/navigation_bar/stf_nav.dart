import 'package:flutter/material.dart';
import 'package:layout_prac/screen/service/service_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            children: const [
              Text(
                '상품 관리',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
              SizedBox(
                width: 36,
              ),
              Text(
                '거래처 관리',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
              ),
            ],
          ),
          const MouseRegion(
            child: Text(
              '모두의거래@네이첸',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0,
                  color: Colors.indigo),
            ),
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
    );
  }
}
