class ItemPost {
  String? id;
  String? name;
  int? price;
  String? owner;

  ItemPost({this.id, this.name, this.price, this.owner});

  ItemPost.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    name = json['name'];
    price = json['price'];
    owner = json['owner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = id;
    data['name'] = name;
    data['price'] = price;
    data['owner'] = owner;
    return data;
  }
}
