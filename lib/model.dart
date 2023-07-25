import 'package:flutter/cupertino.dart';

class Model
{
  String? image;
  String? text;

  Model(this.image,this.text);
}

List lis = modelDatab.map((e) => Model(e["image"],e["text"])).toList();


var modelDatab = [
  {"image": "asset/iq.jpg","text":"hi"},
  {"image": "asset/mel.jpg","text":"hello"},


];


////class for list one

///class