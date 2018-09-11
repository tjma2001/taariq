import 'dart:html';

import 'package:vue/vue.dart';
import 'package:vue/plugins/vue_router.dart';

import 'header.template.dart';

@VueComponent(
  template: '<<',
  components: [HeaderComponent]
  )
class Article extends VueComponentBase with VueRouterMixin {
  @override
  void lifecycleMounted() {
    print("article: base query ");
    print(Uri.base.queryParameters['id']);
  }

  @computed
  int get id => int.parse($route.params['id']);
}