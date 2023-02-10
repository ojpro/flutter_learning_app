// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MessangerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                      "https://source.unsplash.com/random/300×300/?person"),
                ),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.redAccent,
                  child: Text(
                    "1",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 12),
            Text(
              "Chats",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            iconSize: 32,
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey[500],
              child: Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
                size: 20,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            iconSize: 32,
            icon: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.grey[500],
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 20,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 100.0,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) =>
                        buildStoryItem(),
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(
                          width: 1,
                        ),
                    itemCount: 12),
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) =>
                      buildChatItem(),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                        height: 3,
                      ),
                  itemCount: 10)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStoryItem() => SizedBox(
        width: 80.0,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://source.unsplash.com/random/300×300/?person"),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: Colors.black87,
                        width: 2,
                      )),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.greenAccent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Moussa Essalhi",
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );

  Widget buildChatItem() => Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(
                      "https://source.unsplash.com/random/300×300/?person"),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: Colors.black87,
                        width: 2,
                      )),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Ahmed Ali",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                      ),
                      child: CircleAvatar(
                        radius: 4,
                      ),
                    ),
                  ],
                ),
                Text(
                  "This is a log chat message from someone in messanger",
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      );
}
