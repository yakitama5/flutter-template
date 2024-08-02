part of 'package:flutter_app/src/presentation/router/state/router_provider.dart';

class WebPageRoute extends GoRouteData {
  const WebPageRoute();

  static const path = 'web';

  static final $parentNavigatorKey = _rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return WebPage(
      initialUrl: Uri.parse('https://flutter.dev'),
      pop: context.pop,
    );
  }
}
