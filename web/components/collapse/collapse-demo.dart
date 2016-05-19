import "package:angular2/angular2.dart";
import 'package:ng_bootstrap/collapse/collapse.dart';


@Component(
    selector: "collapse-demo",
    templateUrl: 'collapse-demo.html',
    directives: const [N2sCollapse])
class CollapseDemo {
  bool isCollapsed = false;
}
