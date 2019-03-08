import 'dart:async';

class Cake {}

class Order {
  String type;

  Order(this.type);
}

void main() {
  final controller = StreamController();

  final order = Order('chocolate');

  final baker = StreamTransformer.fromHandlers(handleData: (cakeType, sink) {
    if (cakeType == 'chocolate') {
      sink.add(Cake());
    } else {
      sink.addError('I cant bake that type!!!');
    }
  });

  final order2 = Order('chocolate');
  final order3 = Order('chocolate');

  controller.sink.add(order);
  controller.sink.add(order2);
  controller.sink.add(order3);

  controller.stream.map((order) => order.type).transform(baker).listen(
        (cake) => print('Heres your cake $cake'),
        onError: (err) => print(err),
      );

  controller.close();
}
