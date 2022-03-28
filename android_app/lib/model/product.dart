class Product {
  String? sId;
  String? name;
  int? price;
  String? owner;
  String? picture;

  Product({this.sId, this.name, this.price, this.owner, this.picture});

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    price = json['price'];
    owner = json['owner'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['price'] = this.price;
    data['owner'] = this.owner;
    data['picture'] = this.picture;
    return data;
  }
}
