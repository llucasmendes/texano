import 'package:dartz/dartz.dart';
import 'package:texano/core/error/failures.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';
import 'package:texano/features/home/domain/entities/preferencia.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<Lauda>>> getLaudasSalvas();

  Future<Either<Failure, int>> insertLauda(Lauda lauda);

  Future deleteLauda(Lauda lauda);

  Future updateLauda(Lauda lauda);

  Future<Either<Failure, List<Preferencia>>> getPreferenciasSalvas();

  Future<Either<Failure, int>> insertPreferencia(Preferencia preferencia);

  Future deletePreferencia(Preferencia preferencia);

  Future updatePreferencia(Preferencia preferencia);
}
