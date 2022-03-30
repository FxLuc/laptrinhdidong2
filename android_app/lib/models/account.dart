class AccountModel {
  String? address;
  String? mnemonic;
  String? privateKey;

  AccountModel({this.address, this.mnemonic, this.privateKey});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['address'] = address;
    data['mnemonic'] = mnemonic;
    return data;
  }

  AccountModel.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    mnemonic = json['mnemonic'];
    return data;
  }

}