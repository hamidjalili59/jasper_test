import 'package:hamid_web_app/src/counter.dart';
import 'package:jaspr/jaspr.dart';

part 'app.g.dart';

@client
class App extends StatelessComponent with _$App {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(
      tag: 'h1',
      child: Text('--------------------'),
    );
    yield DomComponent(
      tag: 'h1',
      child: Counter(),
    );
  }
}
