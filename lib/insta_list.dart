import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize= MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context,index)=>index == 0 ? SizedBox(
        child:  InstaStories(),
        height: deviceSize.height *0.16,
      ) : Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //1st row
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                     Container(
                      height: 40.0,
                      width: 40.0,
                      decoration:  BoxDecoration(
                        shape: BoxShape.circle,
                        image:  DecorationImage(
                            fit: BoxFit.fill,
                            image:  AssetImage("assets/images/profile.jpeg")),
                      ),
                    ),
                     SizedBox(
                      width: 10.0,
                    ),
                     Text(
                      "The_Debuger",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: null,
                )
              ],
            ),
          ),
          //2nd row
          Flexible(
            fit: FlexFit.loose,
              child: Image.asset("assets/images/photo.jpg",fit: BoxFit.cover,),
          ),
          //3rd row
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.heart,
                    ),
                     SizedBox(
                      width: 16.0,
                    ),
                     Icon(
                      FontAwesomeIcons.comment,
                    ),
                     SizedBox(
                      width: 16.0,
                    ),
                    Icon(FontAwesomeIcons.paperPlane),
                  ],
                ),
                 Icon(FontAwesomeIcons.bookmark)
              ],
            ),
          ),
          //4th row
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(''
                'Liked by sauravjakhar_ , Yattu_420 and 52 others',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
              ),

            ),
          ),

          //5th row
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image:  DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/profile.jpeg"),
                    ),
                  ),
                ),
                 SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child:  TextField(
                    decoration:  InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a comment...",
                    ),
                  ),
                ),
              ],
            ),
          ),

          //6th row
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '1 Day ago',
              style: TextStyle(
                color: Colors.grey
              ),
            ),
          ),
        ],
      ),
    );
  }
}
