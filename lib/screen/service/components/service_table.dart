import 'package:flutter/material.dart';
import 'package:layout_prac/model/service_screen_data.dart';

Table service_table_1() {
  return Table(
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    border: TableBorder.all(),
    columnWidths: const {
      0: FixedColumnWidth(140.0),
      1: FixedColumnWidth(140.0),
      2: FixedColumnWidth(101.0),
      3: FixedColumnWidth(126.0),
      4: FixedColumnWidth(136.0),
      5: FixedColumnWidth(367.0),
      6: FixedColumnWidth(87.0),
      7: FixedColumnWidth(88.0),
      8: FixedColumnWidth(75.0),
    },
    children: [
      TableRow(
          decoration: const BoxDecoration(color: Colors.black12),
          children: [
            Container(
                height: 40,
                alignment: Alignment.center,
                child: const Text('거래처코드', textAlign: TextAlign.center,)
            ),
            const Text('거래처이름', textAlign: TextAlign.center,),
            const Text('대표자', textAlign: TextAlign.center,),
            const Text('사업자등록번호', textAlign: TextAlign.center,),
            const Text('법인번호', textAlign: TextAlign.center,),
            const Text('주소', textAlign: TextAlign.center,),
            const Text('업태', textAlign: TextAlign.center,),
            const Text('종목', textAlign: TextAlign.center,),
            const Text('법인/개인', textAlign: TextAlign.center,),
          ]),
      TableRow(
          children: [
            Container(
                height: 40,
                alignment: Alignment.center,
                child: Text('${NChen.code}', textAlign: TextAlign.center,)),
            Text(NChen.account, textAlign: TextAlign.center,),
            Text(NChen.representative, textAlign: TextAlign.center,),
            Text(NChen.comRegistNum, textAlign: TextAlign.center,),
            Text(NChen.corpNum, textAlign: TextAlign.center,),
            Text(NChen.address, textAlign: TextAlign.center,),
            Text(NChen.businessCon, textAlign: TextAlign.center,),
            Text(NChen.item, textAlign: TextAlign.center,),
            Text(NChen.corpPer, textAlign: TextAlign.center,),
          ])
    ],
  );
}



Table service_table_3() {
  return Table(
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    columnWidths: const {0: FixedColumnWidth(152), 1: FixedColumnWidth(614), 2: FixedColumnWidth(194), 3: FixedColumnWidth(300)},
    border: TableBorder.all(),
    children: [
      TableRow(
          children: [
            Container(
                height: 29,
                alignment: Alignment.center,
                child: const Text('배송지', textAlign: TextAlign.center,)
            ),
            const Text('주소', textAlign: TextAlign.center,),
            const Text('전화번호', textAlign: TextAlign.center,),
            const Text('담당자/휴대전화', textAlign: TextAlign.center,),
          ]),
      TableRow(
          children: [
            Container(
                height: 29,
                alignment: Alignment.center,
                child: Text(Head.shippingAddress, textAlign: TextAlign.center,)),
            Text(Head.address, textAlign: TextAlign.center,),
            Text(Head.phoneNum, textAlign: TextAlign.center,),
            Text(Head.manager, textAlign: TextAlign.center,),
          ])
    ],
  );
}

Table service_table_4() {
  return Table(
    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    // columnWidths: {0: FixedColumnWidth(152), 1: FixedColumnWidth(614), 2: FixedColumnWidth(194), 3: FixedColumnWidth(300)},
    border: TableBorder.all(),
    children: [
      TableRow(
          children: [
            Container(
                height: 29,
                alignment: Alignment.center,
                child: const Text('2021 매출액', textAlign: TextAlign.center,)
            ),
            const Text('2021 매입액', textAlign: TextAlign.center,),
            const Text('미수금', textAlign: TextAlign.center,),
            const Text('미지급금', textAlign: TextAlign.center,),
            const Text('마지막 거래일', textAlign: TextAlign.center,),
            const Text('기타', textAlign: TextAlign.center,),
          ]),
      TableRow(
          children: [
            Container(
                height: 29,
                alignment: Alignment.center,
                child: Text('${First.sales}', textAlign: TextAlign.center,)),
            Text('${First.purchases}', textAlign: TextAlign.center,),
            Text('${First.unpaid}', textAlign: TextAlign.center,),
            const Text('', textAlign: TextAlign.center,),
            Text(First.lastBusiDay, textAlign: TextAlign.center,),
            const Text('', textAlign: TextAlign.center,),
          ])
    ],
  );
}