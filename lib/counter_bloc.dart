import 'dart:async';

class CounterBloc{

  int _value = 0;
  StreamController<int> _valueController = new StreamController<int>();

  void increment() {
    _value++;
    _valueController.sink.add(_value);
  }

  Stream<int> getStream() {
    return _valueController.stream;
  }

  void dispose() {
    _valueController.close();
  }

}