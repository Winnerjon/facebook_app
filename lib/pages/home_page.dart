import 'package:facebook_app/models/products_class.dart';
import 'package:facebook_app/pages/message_ui_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "/home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ItemList.isDark ? Colors.black : Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: ItemList.isDark ? Colors.black : Colors.white,
        elevation: 0,
        title: Text(
          "facebook",
          style: TextStyle(
              color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search_outlined,
              color:
                  ItemList.isDark ? Colors.grey.shade300 : Colors.grey.shade700,
              size: 30,
            ),
            onPressed: () {
              setState(() {
                ItemList.isDark = !ItemList.isDark;
              });
            },
          ),
          SizedBox(
            width: 3,
          ),
          IconButton(
            icon: Icon(
              Icons.maps_ugc,
              color:
                  ItemList.isDark ? Colors.grey.shade300 : Colors.grey.shade700,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(MessageUIPage.id);
            },
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 46,
              color: ItemList.isDark ? Colors.black : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  //#profile
                  CircleAvatar(
                    radius: 22.5,
                    backgroundColor: Colors.red,
                    backgroundImage: AssetImage("assets/images/images_3.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //#searching
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: ItemList.isDark ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(23),
                        border:
                            Border.all(width: 1, color: Colors.grey.shade500)),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "What's on your main?",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              color: ItemList.isDark ? Colors.black : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Live",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "|",
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 20,
                    ),
                  ),
                  Expanded(
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                              size: 28,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Photo",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey.shade600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "|",
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 20),
                  ),
                  Expanded(
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 28,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Live",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey.shade600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            //#story
            Container(
              height: 210,
              color:
                  ItemList.isDark ? Colors.grey.shade600 : Colors.grey.shade400,
              alignment: Alignment.center,
              child: Container(
                height: 190,
                alignment: Alignment.center,
                color: ItemList.isDark ? Colors.black : Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 110,
                      margin: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/images_5.jpg"),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 85,
                            width: 100,
                            // color: Colors.red,
                            padding: EdgeInsets.only(
                                left: 10, right: 55, bottom: 30, top: 10),
                            child: Container(
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.blue,
                                  ),
                                  CircleAvatar(
                                    radius: 18,
                                    backgroundImage: AssetImage(
                                        "assets/images/images_2.jpg"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 85,
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "User Five",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  height: 450,
                  color: ItemList.isDark ? Colors.black : Colors.white,
                  child: Column(
                    children: [
                      //#listtile
                      ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.red,
                          backgroundImage:
                              AssetImage("assets/images/images_3.jpg"),
                        ),
                        title: Text(
                          "User Two",
                          style: TextStyle(
                              color:
                                  ItemList.isDark ? Colors.grey : Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "1 hr ago",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            size: 30,
                            color: Colors.grey.shade600,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        height: 50,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(left: 15, right: 30),
                        child: Text(
                          "All the lorem Ipsum generators on the internet tend to repeat predefined",
                          style: TextStyle(
                              color: ItemList.isDark
                                  ? Colors.grey.shade500 : Colors.grey.shade800,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 250,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/images_3.jpg"))),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/images_2.jpg"))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                makeLike(),
                                Transform.translate(
                                    offset: Offset(-5, 0), child: makeLove()),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "2.5K",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey[800]),
                                )
                              ],
                            ),
                            Text(
                              "400 Comments",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey[800]),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Icon(
        Icons.favorite_outlined,
        size: 12,
        color: Colors.white,
      ),
    );
  }

  Widget makeLike() {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Icon(
        Icons.thumb_up_alt,
        size: 12,
        color: Colors.white,
      ),
    );
  }
}
