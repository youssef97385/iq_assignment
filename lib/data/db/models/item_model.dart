class Item {
  Item({
    this.title,
    this.sectionType,
    this.currency,
    this.subTitle,
    this.price,
    this.image
  });

  String title;
  String subTitle;
  String image;
  String price;
  String currency;
  String sectionType;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    title: json["title"],
    subTitle: json["subtitle"],
    currency: json["currency"],
    price: json["price"],
    image: json["image"],
    sectionType: json["sectionType"]
  );


  Map<String, dynamic> toJson() => {
    "title": title,
    "subtitle": subTitle,
    "currency": currency,
    "sectionType": sectionType,
    "image": image,
    "price":price
  };
}