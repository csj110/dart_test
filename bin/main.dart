void main(List<String> arguments) {
  var f2 = Future(() => Future.delayed(Duration(seconds: 1),()=>print('2---!')));
  var f1 = Future(() => print('1---!'));
  var f3 = Future(() => print('3---!'));
  print('_________________');
  Process(f1, f2, f3);
  print('end');
}

void Process(Future<void> a, Future<void> b, Future<void> c) async {
  print('process_start');
  c.then((_) => print('3!'));
  await Future.delayed(Duration(seconds: 1), () => print('delay'));
  a.then((_) => print('1!'));
  b.then((_) => print('2!'));
  print('process_end');
}
