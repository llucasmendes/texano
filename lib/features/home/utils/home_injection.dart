import 'package:texano/core/utils/injection_container.dart';
import 'package:texano/features/home/data/datasource/home_datasouce.dart';
import 'package:texano/features/home/data/repositories/home_repository_impl.dart';
import 'package:texano/features/home/domain/repositories/home_repository.dart';
import 'package:texano/features/home/domain/usecases/get_laudas_salvas.dart';
import 'package:texano/features/home/presentation/cubit/home_cubit.dart';

void initHome() {
  // Blocs
  dep.registerFactory(
    () => HomeCubit(
      getLaudasSalvas: dep(),
    ),
  );

  // Use cases
  dep.registerLazySingleton(() => GetLaudasSalvas(homeRepository: dep()));

  // Repositories
  dep.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(
      homeDataSource: dep(),
    ),
  );

  // Data sources
  dep.registerLazySingleton(() => HomeDataSource());
}
