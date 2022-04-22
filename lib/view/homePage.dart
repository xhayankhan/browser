import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:browser/controller/browser_controller.dart';
import 'package:browser/view/browsing_page.dart';
import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled)=>[
       SliverAppBar(
         floating: true,
        snap: true,
        shadowColor: Colors.white,



        leading: Icon(Icons.search,color: Colors.white,),
        backgroundColor: Colors.black,
        title: Container(
          child: TextField(
            autofocus: false,
            controller: controller,
            cursorColor: Colors.white,
            cursorWidth: 0.5,
            textInputAction: TextInputAction.go,
            onSubmitted: (url)
            {
              launchUrl();
              Get.to(MyApp());
            },
            style: GoogleFonts.poppins(
          textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
      ),
            decoration: InputDecoration(
                hintText: "Search Here",
                hintStyle: TextStyle(

                  color: Colors.white,
                )
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                launchUrl();
              }),


          new IconButton(
            color: Colors.white,
            icon: Icon(Icons.autorenew),
            onPressed: () {
              flutterWebviewPlugin.reload();
            },

          ),

            new IconButton(
                color: Colors.white,
                onPressed:(){
                  // Get.to(homePage());
                  Get.off(()=>homePage());},
                icon: Icon(Icons.home)
            ),
        ],

        ),],
      body: Container(
        height: MediaQuery.of(context).size.height*0.02,
        width: MediaQuery.of(context).size.width*0.02,
        child: Column(
          children:<Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children:<Widget> [

                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          color: Colors.white,
                          height: 36,
                          thickness: 2,
                        )),
                  ),
                  Text("Main",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                      fontSize: 20),
                    ),),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Colors.white,
                          height: 36,
                          thickness: 2,
                        )),),

                ],
              ),
            ),
            new Row(

            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(left: 20.0,top:10),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("images/google.png"),

                    ),),
                    height: 80,
                    width: 80,

                    child: GestureDetector(
                      onTap: ()
                      {

                        launchGoogle();
                        Get.to(()=>MyApp());
                      },
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("Google",
                        textAlign: TextAlign.center,

                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                              ),
                        ),),
                    ),
                  ],
                ),
              ),


              Column(
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.only(left:40.0, top:10),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("images/gmail.png"),

                        ),),
                      height: 80,
                      width: 80,

                      child: GestureDetector(
                        onTap: ()
                        {
                          launchGmail();

                          Get.to(()=>MyApp());
                        },
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 40),
                    child: Text("Gmail",
                      textAlign: TextAlign.center,

                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                            ),
                      ),),
                  ),
                ],),

              Column(
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.only(left:40.0, top:10),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("images/wikipedia.jpg"),

                        ),),
                      height: 80,
                      width: 80,

                      child: GestureDetector(
                        onTap: ()
                        {
                          launchWikipedia();
                          //url: wiki;
                          Get.to(()=>MyApp());
                        },
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 40),
                    child: Text("Wikipedia",
                      textAlign: TextAlign.center,

                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                            ),
                      ),),
                  ),
                ],),


    ],

          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children:<Widget> [

                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          color: Colors.white,
                          height: 36,
                          thickness: 2,
                        )),
                  ),
                  Text("Shop",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                          fontSize: 20),
                    ),),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Colors.white,
                          height: 36,
                          thickness: 2,
                        )),),

                ],
              ),
            ),
           new Row(

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,top:10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("images/GM.png"),

                          ),),
                        height: 80,
                        width: 80,

                        child: GestureDetector(
                          onTap: ()
                          {

                            launchGMSearch();

                            Get.to(()=>MyApp());
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          children:<Widget> [
                            Text("Gamers",
                              textAlign: TextAlign.center,

                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                                    ),
                              ),),
                            new Text(
                              "Multiverse",
                                style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                                ),
                      ),),
                          ],

                        ),
                      ),
                    ],


                  ),


                ),


                Column(
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.only(left:40.0, top:10),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("images/amazon.png"),

                          ),),
                        height: 80,
                        width: 80,

                        child: GestureDetector(
                          onTap: ()
                          {
                            launchAmazonSearch();

                            Get.to(()=>MyApp());
                          },
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 40),
                      child: Text("Amazon",
                        textAlign: TextAlign.center,

                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                              ),
                        ),),
                    ),
                  ],),

                Column(
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.only(left:40.0, top:10),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("images/daraz.png"),

                          ),),
                        height: 80,
                        width: 80,

                        child: GestureDetector(
                          onTap: ()
                          {
                            launchDarazSearch();
                            //url: wiki;
                            Get.to(()=>MyApp());
                          },
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 40),
                      child: Text("Daraz",
                        textAlign: TextAlign.center,

                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                              ),
                        ),),
                    ),
                  ],),


              ],

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children:<Widget> [

                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          color: Colors.white,
                          height: 36,
                          thickness: 2,
                        )),
                  ),
                  Text("News",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                          fontSize: 20),
                    ),),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Colors.white,
                          height: 36,
                          thickness: 2,
                        )),),

                ],
              ),
            ),
            new Row(

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40.0,top:10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("images/times.png"),

                          ),),
                        height: 80,
                        width: 80,

                        child: GestureDetector(
                          onTap: ()
                          {

                            launchTimesSearch();
                            Get.to(()=>MyApp());
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Times",
                          textAlign: TextAlign.center,

                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                                ),
                          ),),
                      ),
                    ],


                  ),


                ),


                Column(
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.only(left:40.0, top:10),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("images/CNN.png"),

                          ),),
                        height: 80,
                        width: 80,

                        child: GestureDetector(
                          onTap: ()
                          {
                            launchCNNSearch();

                            Get.to(()=>MyApp());
                          },
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 40),
                      child: Text("CNN",
                        textAlign: TextAlign.center,

                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                              ),
                        ),),
                    ),
                  ],),

                Column(
                  children: <Widget> [
                    Padding(
                      padding: const EdgeInsets.only(left:40.0, top:10),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("images/BBC.png"),

                          ),),
                        height: 80,
                        width: 80,

                        child: GestureDetector(
                          onTap: ()
                          {
                            launchBBCSearch();
                            //url: wiki;
                            Get.to(()=>MyApp());
                          },
                        ),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 40),
                      child: Text("BBC",
                        textAlign: TextAlign.center,

                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.white, letterSpacing: .5,
                              ),
                        ),),
                    ),
                  ],),


              ],

            ),
        ],),
      ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     children: <Widget>[
      //       Container(
      //         width: MediaQuery.of(context).size.width*0.33,
      //         child: IconButton(
      //           color: Colors.white,
      //           icon:Icon(Icons.arrow_back_ios),
      //           onPressed: (){
      //             flutterWebviewPlugin.goBack();
      //           },
      //         ),
      //       ),
      //        Container(
      //          width: MediaQuery.of(context).size.width*0.33,
      //          child: IconButton(
      //             color: Colors.white,
      //             onPressed:(){
      //               // Get.to(homePage());
      //               Get.off(()=>homePage());},
      //             icon: Icon(Icons.home)
      //       ),
      //        ),
      //       Container(
      //         width: MediaQuery.of(context).size.width*0.33,
      //         child: IconButton(
      //           color: Colors.white,
      //           icon: Icon(Icons.arrow_forward_ios),
      //           onPressed: (){
      //             flutterWebviewPlugin.goForward();
      //           },),
      //       ),
      //
      //
      //
      //     ],
      //   ),
      //   color: Colors.black,
      // ),
    );
  }
}
