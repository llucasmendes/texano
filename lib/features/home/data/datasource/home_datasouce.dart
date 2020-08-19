import 'package:texano/features/home/domain/entities/lauda.dart';

class HomeDataSource {
  Future<List<Lauda>> getLaudasSalvas() async {
    // requisição banco de dados
    return Future<List<Lauda>>.delayed(
      Duration(milliseconds: 3000),
      () => [
        Lauda(
          id: 1,
          titulo: 'Reflexões sobre a vida no campo',
          conteudo: 'x',
          data: DateTime.now(),
        ),
        Lauda(
          id: 2,
          titulo: 'O que há além da atmosfera terrestre?',
          conteudo: 'x',
          data: DateTime.now(),
        ),
        Lauda(
          id: 3,
          titulo: 'Não há nada além mar, além mar não há nada',
          conteudo: 'x',
          data: DateTime.now(),
        ),
        Lauda(
          id: 4,
          titulo: 'O passado é a ferida da virtude',
          conteudo: 'x',
          data: DateTime.now(),
        ),
      ],
    );
  }
}
