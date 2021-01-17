import 'package:flutter/material.dart';
import 'package:instagram_ui/authentication_service.dart';
import 'package:instagram_ui/insta_body.dart';
import 'package:provider/provider.dart';
class InstaHome extends StatelessWidget {

  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0,child: Image.asset("assets/images/insta_logo.png")
    ),
    actions: <Widget>[
      Padding(
          padding:  EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child:  BottomAppBar(
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
               IconButton(
                icon: Icon(
                  Icons.home,
                ),
                onPressed: (){},
              ),
               IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: null,
              ),
               IconButton(
                icon: Icon(
                  Icons.add_box,
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                ),
                onPressed: null,
              ),
               IconButton(
                icon: Icon(
                  Icons.account_box,
                ),
                onPressed: (){
                  context.read<AuthenticationService>().signOut();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
