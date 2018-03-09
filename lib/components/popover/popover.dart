import 'package:angular/angular.dart';
import 'package:ng_bootstrap/components/tooltip/tooltip.dart';
import 'dart:html';

@Component(
    selector: 'bs-popover',
    template: '''
<div class="arrow"></div>
<h3 class="popover-header">
  {{heading}}
  <ng-content select="header"></ng-content>
</h3>
<div class="popover-body">
  <ng-content></ng-content>
</div>''',
    host: const {
      '[class.bs-popover-top]': 'placement == "top"',
      '[class.bs-popover-left]': 'placement == "left"',
      '[class.bs-popover-right]': 'placement == "right"',
      '[class.bs-popover-bottom]': 'placement == "bottom"'
    },
    directives: const [coreDirectives])
class BsPopoverComponent extends BsTooltipComponent {
  /// Header of the popover
  @Input() String heading;

  /// Constructs a new [BspopoverComponent]
  /// injecting its [elementRef] and the [options]
  BsPopoverComponent(HtmlElement elementRef) : super(elementRef) {
    showEvent = 'focus';
    hideEvent = 'blur';
  }
}
