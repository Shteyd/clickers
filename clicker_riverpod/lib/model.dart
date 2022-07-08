class Counter {
  Counter({this.value = 0});
  final int value;

  Counter copyWith({int? value}) {
    return Counter(
      value: value ?? this.value,
    );
  }
}
