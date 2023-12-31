part of 'counter_bloc.dart';

sealed class CounterEvent {}

final class Incremented extends CounterEvent {}

final class Decremented extends CounterEvent {}
