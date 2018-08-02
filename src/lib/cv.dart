import 'dart:js';

import 'package:vue/vue.dart';
import 'package:vue/plugins/vue_router.dart';

import 'header.template.dart';

@VueComponent(
  template: '<<',
  components: [HeaderComponent]
  )
class Cv extends VueComponentBase with VueRouterMixin {
  @override
  void lifecycleMounted() {
    print('cv mounted!');
    context
      .callMethod(r'$',['.tabular.menu .item'])
      .callMethod('tab',['tab-name']);
  }

  @method
  select(int _selection) => selection = _selection;

  @data
  int selection = 1;

  @computed
  int get id => int.parse($route.params['id']);
}