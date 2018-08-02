import 'package:vue/vue.dart';
import 'package:vue/plugins/vue_router.dart';

@VueComponent(template: ''' 
<div>
  Page content
</div>
''')
class Page extends VueComponentBase with VueRouterMixin {
  @computed
  int get id => int.parse($route.params['id']);
}