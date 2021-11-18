// 주요 매출처
// import 'dart:html';

class MainSalesModel {
  String company; // 회사명
  int thisRevenue; // 이번달 매출액
  int lastRevenue; // 지난달 매출액
  int unpaid; // 미수금
  List<String> mainItems; // 주요품목

  MainSalesModel({
    required this.company,
    required this.thisRevenue,
    required this.lastRevenue,
    required this.unpaid,
    required this.mainItems,
  });
}

// 주요 매입처
class MainPurchasesModel {
  String company; // 회사명
  int thisRevenue; // 이번달 매출액
  int lastRevenue; // 지난달 매출액
  int unpaid; // 미지급금
  List<String> mainItems; // 주요품목

  MainPurchasesModel(
      {required this.company,
      required this.thisRevenue,
      required this.lastRevenue,
      required this.unpaid,
      required this.mainItems});
}

MainSalesModel GS = MainSalesModel(
    company: '0. GS건설',
    thisRevenue: 240000000,
    lastRevenue: 140000000,
    unpaid: 800000000,
    mainItems: [
      '3연동중문',
      '3연동중문자동',
      '아트월',
      'AAA',
      'BBB',
      'CCC',
      'DDD',
      'EEE',
      'FFF'
    ]);

MainSalesModel HB = MainSalesModel(
    company: '1. 호반건설',
    thisRevenue: 970000000,
    lastRevenue: 110000000,
    unpaid: 65000000,
    mainItems: [
      'AAA',
      'BBB',
      'CCC',
      'DDD',
      'EEE',
      'FFF'
    ]);

MainSalesModel Joon = MainSalesModel(
    company: '2. 준하우스',
    thisRevenue: 850000000,
    lastRevenue: 600000000,
    unpaid: 200000000,
    mainItems: [
      'DDD',
      'EEE',
      'FFF'
    ]);

MainSalesModel Joon2 = MainSalesModel(
    company: '3. 준',
    thisRevenue: 850000000,
    lastRevenue: 600000000,
    unpaid: 200000000,
    mainItems: [
      'DDD',
      'EEE',
      'FFF'
    ]);

MainPurchasesModel MS = MainPurchasesModel(
    company: '0. 명신유리',
    thisRevenue: 50000000,
    lastRevenue: 20000000,
    unpaid: 100000000,
    mainItems: [
      '강화유리',
      '일반유리',
      '강화유리(그레이)',
      'AAA',
      'BBB',
      'CCC',
      'DDD',
      'EEE',
      'FFF'
    ]);

MainPurchasesModel NS = MainPurchasesModel(
    company: '1. 남선알미늄',
    thisRevenue: 20000000,
    lastRevenue: 10000000,
    unpaid: 5000000,
    mainItems: [
      '강화유리',
      '일반유리',
      '강화유리(그레이)',
    ]);

MainPurchasesModel EL = MainPurchasesModel(
    company: '2. 고속물류',
    thisRevenue: 5000000,
    lastRevenue: 6000000,
    unpaid: 0,
    mainItems: [
      'EEE',
      'FFF'
    ]);

