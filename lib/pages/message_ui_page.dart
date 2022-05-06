import 'package:facebook_app/models/products_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessageUIPage extends StatefulWidget {
  static const String id = "/message_ui_page";

  const MessageUIPage({Key? key}) : super(key: key);

  @override
  _MessageUIPageState createState() => _MessageUIPageState();
}

class _MessageUIPageState extends State<MessageUIPage> {
  bool isOnline = false;
  bool isReadMessage = false;

  void doNothing(BuildContext) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ItemList.isDark ? Colors.black : Colors.white,
      appBar: AppBar(
        toolbarHeight: 108,
        backgroundColor: ItemList.isDark ? Colors.black : Colors.white,
        elevation: 0,
        title: Text(
          "Chats",
          style: TextStyle(
              color: ItemList.isDark ? Colors.white : Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        leading: Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/appbar_img.jpg"),
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: ItemList.isDark
                ? Color(0XFFFFFFFF).withOpacity(0.2)
                : Colors.grey.withOpacity(0.2),
            child: IconButton(
              icon: Icon(
                Icons.camera_alt,
                color: ItemList.isDark ? Color(0xFFFFFFFF) : Color(0xFF000000),
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: ItemList.isDark
                ? Color(0XFFFFFFFF).withOpacity(0.2)
                : Colors.grey.withOpacity(0.2),
            child: IconButton(
              icon: Icon(
                Icons.edit,
                color: ItemList.isDark ? Color(0xFFFFFFFF) : Color(0xFF000000),
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(36),
          child: Container(
            height: 36,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ItemList.isDark
                  ? Color(0xFFFFFFFF).withOpacity(0.2)
                  : Color(0xFF000000).withOpacity(0.05),
            ),
            child: TextField(
              style: TextStyle(fontSize: 15),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF8E8E93),
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Color(0xFF8E8E93))),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Container(
              height: 106,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: ItemList.itemList.length,
                itemBuilder: (context, index) {
                  return itemStory(index);
                },
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: ItemList.itemList.length - 1,
              itemBuilder: (context, index) {
                return Container(
                  height: 76,
                  child: Slidable(
                    startActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: ItemList.isDark
                                ? Color(0xFF19A3FE)
                                : Color(0xFF0084FE),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.camera_alt,
                            color: ItemList.isDark
                                ? Color(0xFFFFFFFF)
                                : Color(0xFF000000),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: ItemList.isDark
                                ? Color(0xFF19A3FE).withOpacity(0.2)
                                : Color(0xFF000000).withOpacity(0.04),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.call,
                            color: ItemList.isDark
                                ? Color(0xFFFFFFFF)
                                : Color(0xFF000000),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: ItemList.isDark
                                ? Color(0xFF19A3FE).withOpacity(0.2)
                                : Color(0xFF000000).withOpacity(0.04),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.videocam_rounded,
                            color: ItemList.isDark
                                ? Color(0xFFFFFFFF)
                                : Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                    endActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: ItemList.isDark
                                ? Color(0xFF19A3FE).withOpacity(0.2)
                                : Color(0xFF000000).withOpacity(0.04),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.menu,
                            color: ItemList.isDark
                                ? Color(0xFFFFFFFF)
                                : Color(0xFF000000),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: ItemList.isDark
                                ? Color(0xFF19A3FE).withOpacity(0.2)
                                : Color(0xFF000000).withOpacity(0.04),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.notifications,
                            color: ItemList.isDark
                                ? Color(0xFFFFFFFF)
                                : Color(0xFF000000),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFFE294D),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.delete,
                            color: ItemList.isDark
                                ? Color(0xFFFFFFFF)
                                : Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage(ItemList.itemList[(index + 1)].images),
                      ),
                      title: Text(
                        "${ItemList.itemList[index + 1].name} ${ItemList.itemList[index + 1].surName}",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: ItemList.isDark
                                ? Color(0xFFFFFFFF)
                                : Color(0xFF000000)),
                      ),
                      subtitle: Text(
                        "You: ${ItemList.itemList[index + 1].lastMessage} 9:40 AM",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      trailing: isReadMessage
                          ? Icon(
                              Icons.remove_circle_outline_sharp,
                              color: Colors.grey,
                              size: 16,
                            )
                          : Icon(
                              Icons.check_circle_outline,
                              color: Colors.grey,
                              size: 16,
                            ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget itemStory(index) {
    return Container(
      height: 77,
      width: 65,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CircleAvatar(
                radius: 26,
                backgroundColor: Colors.grey.shade300,
                backgroundImage: AssetImage(ItemList.itemList[index].images),
              ),
              index == 0
                  ? Text("")
                  : Container(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: ItemList.isDark ? Colors.black : Colors.white,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Flexible(
              child: Text(
            ItemList.itemList[index].name,
            style: TextStyle(
                color: Colors.grey,
                fontSize: 11.5,
                fontWeight: FontWeight.w500),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.fade,
          )),
        ],
      ),
    );
  }
}
