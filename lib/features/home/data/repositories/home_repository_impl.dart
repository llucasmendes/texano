import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:texano/core/error/failures.dart';
import 'package:texano/features/home/data/datasource/home_datasouce.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';
import 'package:texano/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl({
    @required this.homeDataSource,
  });

  final HomeDataSource homeDataSource;

  @override
  Future<Either<Failure, List<Lauda>>> getLaudasSalvas() async {
    try {
      final laudas = await homeDataSource.getLaudasSalvas();
      return Right(laudas);
    } catch (_) {
      return Left(DataBaseFailure());
    }
  }

  @override
  Future deleteLauda(Lauda lauda) async {
    try {
      final laudas = await homeDataSource.deleteLauda(lauda);
      return Right(laudas);
    } catch (_) {
      return Left(DataBaseFailure());
    }
  }

  @override
  Future<Either<Failure, int>> insertLauda(Lauda lauda) async {
    try {
      final laudas = await homeDataSource.insertLauda(lauda);
      return Right(laudas);
    } catch (_) {
      return Left(DataBaseFailure());
    }
  }

  @override
  Future updateLauda(Lauda lauda) async {
    try {
      final laudas = await homeDataSource.updateLauda(lauda);
      return Right(laudas);
    } catch (_) {
      return Left(DataBaseFailure());
    }
  }
}
