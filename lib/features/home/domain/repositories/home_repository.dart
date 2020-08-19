import 'package:dartz/dartz.dart';
import 'package:texano/core/error/failures.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<Lauda>>> getLaudasSalvas();
}
