import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Device extends Equatable {
  Device({
    @required this.name,
    @required this.id,
  });

  final String name;
  final String id;

  @override
  List<Object> get props => [name, id];
}
