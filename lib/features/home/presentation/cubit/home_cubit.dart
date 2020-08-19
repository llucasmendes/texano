import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:texano/features/home/domain/entities/lauda.dart';
import 'package:texano/features/home/domain/usecases/get_laudas_salvas.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({@required this.getLaudasSalvas}) : super(HomeInitial());

  final GetLaudasSalvas getLaudasSalvas;

  void getLaudas() async {
    emit(HomeLaudasCarregando());
    final result = await getLaudasSalvas();
    emit(
      result.fold(
        (failure) => HomeLaudasFalha(mensagem: failure.message),
        (laudas) => HomeLaudasCarregadas(laudas: laudas),
      ),
    );
  }
}
