import 'package:meta/meta.dart';
import 'package:portfolio/models/chuck_norris_fact.dart';

@immutable
abstract class ChucknorrisState {}

class InitialChucknorrisState extends ChucknorrisState {}

class ChucknorrisStateEmpty extends ChucknorrisState {}

class ChucknorrisStateLoading extends ChucknorrisState {}

class ChucknorrisStateLoaded extends ChucknorrisState {
  ChucknorrisStateLoaded({@required this.chuckNorrisFact});

  final ChuckNorrisFact chuckNorrisFact;
}

class ChucknorrisStateError extends ChucknorrisState {}
