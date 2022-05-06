class Products {
  String name;
  String surName;
  String images;
  String lastMessage;
  bool isOnline = false;

  Products(
      {required this.name,
      required this.surName,
      required this.lastMessage,
      required this.images});
}

class ItemList {
  static bool isDark = false;

  static List<Products> itemList = [
    Products(
        name: "Your Story",
        surName: "",
        lastMessage: "",
        images: "assets/images/images_plus.png"),
    Products(
        name: "Martin",
        surName: "Randolph",
        lastMessage: "What's man!",
        images: "assets/images/images_1.jpg"),
    Products(
        name: "Andrew",
        surName: "Parker",
        lastMessage: "Ok, thenks!",
        images: "assets/images/images_2.jpg"),
    Products(
        name: "Karen",
        surName: "Castillo",
        lastMessage: "Ok,see youin To",
        images: "assets/images/images_4.jpg"),
    Products(
        name: "Maisy",
        surName: "Humphrey",
        lastMessage: "Have a good day, Maisy!",
        images: "assets/images/images_3.jpg"),
    Products(
        name: "Joshua",
        surName: "Lawrence",
        lastMessage: "The business plan loo...",
        images: "assets/images/images_5.jpg"),
  ];
}
