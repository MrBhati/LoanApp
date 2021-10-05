class Plans {
  String? sId;
  String? price;
  String? url;
  int? iV;

  Plans({this.sId, this.price, this.url, this.iV});

  Plans.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    price = json['price'];
    url = json['url'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['price'] = this.price;
    data['url'] = this.url;
    data['__v'] = this.iV;
    return data;
  }
}
