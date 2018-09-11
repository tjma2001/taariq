import 'package:vue/vue.dart';

import 'dart:convert';
import 'dart:html';
import 'dart:js';

@VueComponent(template: '<<')
class HeaderComponent extends VueComponentBase {
  void createDropDown() {
    context
      .callMethod(r'$',['.ui.dropdown'])
      .callMethod('dropdown');
  }

  void loadMenu() async {
    try {
      final menuString = await HttpRequest.getString('menu.json');
      processResponse(menuString);
    } catch (e) {
      print(e);
      print("error occurred in loading menustring");
    }
  }

  void processResponse(String menuString) {
    print("menustring");
    print(json.decode(menuString)["articles"]);
    articleMenu = json.decode(menuString)["articles"];
  }

  @data
  List articleMenu; // = [{ "title": "ass"}, { "title": "ass2" }];

  @method
  String getLinkText(value) {
    print("value: ");
    print(value);
    return value["title"];
  }

  @override
  void lifecycleMounted() {
    loadMenu();
    createDropDown();
  }
}