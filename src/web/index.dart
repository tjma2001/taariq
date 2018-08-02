import 'package:vue/vue.dart';
import 'package:vue/plugins/vue_router.dart';

import 'package:taariq/cv.dart';
import 'package:taariq/contact.dart';
import 'package:taariq/header.dart';
import 'package:taariq/home.dart';


import 'dart:async';
import 'dart:html';


@VueApp(el: '#app', components: [HeaderComponent])
class App extends VueAppBase with VueRouterMixin {
  @override
  void lifecycleMounted() {
    print('mounted!');
    $nextTick().then((_) {
      print('nextTick called');
    });
  }
}
 
App app;

Future main() async {
  final router = VueRouter(routes: [
    VueRoute(path: '/', component: Home()),
    VueRoute(path: '/cv', component: Cv()),
    // VueRoute(path: '/contact', component: Contact()),
  ],
);

  app = new App();
  app.create(options: [router]);
}