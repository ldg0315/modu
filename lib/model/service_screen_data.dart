class NormalModel {
  int code;
  String account;
  String representative;
  String comRegistNum;
  String corpNum;
  String address;
  String businessCon;
  String item;
  String corpPer;

  NormalModel({
    required this.code,
    required this.account,
    required this.representative,
    required this.comRegistNum,
    required this.corpNum,
    required this.address,
    required this.businessCon,
    required this.item,
    required this.corpPer
  });
}

class BusinessPersonModel {
  String classify;
  String name;
  String companyNum;
  String phoneNum;
  String email;
  bool isMark;
  String role;
  String etc;

  BusinessPersonModel({
    required this.classify,
    required this.name,
    required this.companyNum,
    required this.phoneNum,
    required this.email,
    required this.isMark,
    required this.role,
    required this.etc
  });

}

class Office {
  String shippingAddress;
  String address;
  String phoneNum;
  String manager;

  Office({
    required this.shippingAddress,
    required this.address,
    required this.phoneNum,
    required this.manager
  });
}

class Summary {
  int sales;
  int purchases;
  int unpaid;
  int payable;
  String lastBusiDay;
  int etc;

  Summary({
    required this.sales,
    required this.purchases,
    required this.unpaid,
    required this.payable,
    required this.lastBusiDay,
    required this.etc
  });
}

NormalModel NChen = NormalModel(
    code: 8768600245,
    account: '(주)네이첸',
    representative: '심현주',
    comRegistNum: '876-86-00245',
    corpNum: '110111-5290046',
    address: '울산광역시 울주군 웅촌면 고연공단2길 130',
    businessCon: '도소매',
    item: '도어, 몰딩',
    corpPer: '법인'
);

BusinessPersonModel Sim = BusinessPersonModel(
    classify: '대표자',
    name: '심현주',
    companyNum: '052-265-7856',
    phoneNum: '010-1234-1234',
    email: 'hjshim@naturn.com',
    isMark: true,
    role: '대표자',
    etc: '이메일 사용안함'
);

Office Head = Office(
    shippingAddress: '본점',
    address: '울산광역시 울주군 웅촌면 고연공단2길 130',
    phoneNum: '052-4568-9512',
    manager: '정우성/010-2458-7851'
);

Summary First = Summary(
    sales: 1250000000,
    purchases: 0,
    unpaid: 250000000,
    payable: 0,
    lastBusiDay: '2021.12.12',
    etc: 0
);