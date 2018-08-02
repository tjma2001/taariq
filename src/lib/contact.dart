import 'package:vue/vue.dart';
import 'package:vue/plugins/vue_router.dart';

import 'header.template.dart';

@VueComponent(
  template: '<<',
  components: [HeaderComponent]
  )
class Contact extends VueComponentBase with VueRouterMixin {
  @computed
  int get id => int.parse($route.params['id']);
}