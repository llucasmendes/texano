import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:texano/core/error/failures.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';
import 'package:texano/features/home/domain/repositories/home_repository.dart';

class GetLaudasSalvas {
  GetLaudasSalvas({@required this.homeRepository});

  final HomeRepository homeRepository;

  Future<Either<Failure, List<Lauda>>> call() async {
    return await homeRepository.getLaudasSalvas();
  }
}
