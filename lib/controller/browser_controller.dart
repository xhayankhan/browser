
import 'package:browser/view/homePage.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/material.dart';

TextEditingController controller=TextEditingController();
FlutterWebviewPlugin flutterWebviewPlugin=FlutterWebviewPlugin();
var UrlString='';
var newUrl;
bool showLoading =false;

bool isLoading=true;
bool scrollBar=false;
var http="http://";
var googleSearch="https://www.google.com/search?q=";
var gmailSearch="https://www.gmail.com";
var wikipediaSearch="https://www.wikipedia.com";
var gamersMultiverseSearch="https://www.gamersmultiverse.com";
var amazonSearch="https://www.amazon.com";
var darazSearch="https://www.daraz.pk";
var timesSearch="https://www.thetimes.co.uk/";
var cnnSearch="https://edition.cnn.com/";
var bbcSearch="https://www.bbc.com/";

Future launchUrl() async{

  UrlString= controller.text;
  await flutterWebviewPlugin.reloadUrl('$UrlString');

  if(!UrlString.startsWith("https://www.") &&!UrlString.endsWith(".com")){
    UrlString=googleSearch+UrlString;
    print("google Search is running");
  }
  else if(!UrlString.startsWith("https://") ){
    UrlString = "https://" + UrlString;
  }

showLoading=true;
  scrollBar=true;
  return flutterWebviewPlugin.reloadUrl(UrlString);
}
Future launchGoogle() async{
  UrlString=googleSearch;
  await flutterWebviewPlugin.reloadUrl(googleSearch);
  showLoading=true;
  return flutterWebviewPlugin.reloadUrl(googleSearch);

}
Future launchGmail() async{
  UrlString=gmailSearch;
  await flutterWebviewPlugin.reloadUrl(gmailSearch);
  showLoading=true;
  return flutterWebviewPlugin.reloadUrl(gmailSearch);

}
Future launchWikipedia() async{
  UrlString=wikipediaSearch;
  await flutterWebviewPlugin.reloadUrl(wikipediaSearch);
  showLoading=true;
  return flutterWebviewPlugin.reloadUrl(wikipediaSearch);

}
Future launchGMSearch() async{
  UrlString=gamersMultiverseSearch;
  await flutterWebviewPlugin.reloadUrl(gamersMultiverseSearch);
  showLoading=true;
  return flutterWebviewPlugin.reloadUrl(gamersMultiverseSearch);

}
Future launchAmazonSearch() async{
  UrlString=amazonSearch;
  await flutterWebviewPlugin.reloadUrl(amazonSearch);
  showLoading=true;
  return flutterWebviewPlugin.reloadUrl(amazonSearch);

}
Future launchDarazSearch() async{
  UrlString=darazSearch;
  await flutterWebviewPlugin.reloadUrl(darazSearch);
  showLoading=true;
  return flutterWebviewPlugin.reloadUrl(darazSearch);

}
Future launchTimesSearch() async{
  UrlString=timesSearch;
  await flutterWebviewPlugin.reloadUrl(timesSearch);
  showLoading=true;
  return flutterWebviewPlugin.reloadUrl(timesSearch);

}
Future launchCNNSearch() async{
  UrlString=cnnSearch;
  await flutterWebviewPlugin.reloadUrl(cnnSearch);
  showLoading=true;
  return flutterWebviewPlugin.reloadUrl(cnnSearch);

}
Future launchBBCSearch() async{
  UrlString=bbcSearch;
  await flutterWebviewPlugin.reloadUrl(bbcSearch);
  showLoading=true;
  return flutterWebviewPlugin.reloadUrl(bbcSearch);

}
