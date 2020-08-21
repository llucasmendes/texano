import 'package:texano/core/utils/injection_container.dart';
import 'package:texano/features/run/presentation/cubit/run_cubit.dart';

initRun() {
  // Blocs
  dep.registerFactory(
    () => RunCubit(),
  );
}
