import 'package:flutter/material.dart';

class messenger extends StatelessWidget {
  const messenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.separated(itemBuilder: (context,index)=>buildChat(),
            separatorBuilder: (context,index)=>SizedBox(height: 10,), itemCount: 15),

      ),
    );
  }

  Widget buildChat (){
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://www.incimages.com/uploaded_files/image/1920x1080/getty_517194189_373099.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(bottom: 3, end: 3),
                      child: CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 150,
                  child: Column(
                    children: [
                      Text(
                        "Tasniem Seiam",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 3.0),
                      Text(
                        "this is your massege mmmmmmm",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 50),
                  child: Container(
                      child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 3.5,
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text("8:12 Am")
                    ],
                  )),
                ),
              ],
            )
          ],
        );
  }
}
