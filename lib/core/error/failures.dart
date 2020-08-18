import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class Failure extends Equatable {
  Failure({@required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}

class DataBaseFailure extends Failure {
  DataBaseFailure({
    String message = 'Erro ao acessar o banco de dados.',
  }) : super(message: message);
}
