import 'package:jaspr/jaspr.dart';

class Counter extends StatefulComponent {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield DomComponent(tag: 'h1', child: Text('Count : $count'));
    yield DomComponent(
      tag: 'button',
      events: {
        'click': (event) {
          setState(() {
            count = count + 1;
          });
        }
      },
      child: Text('add to counter'),
    );
  }
}
