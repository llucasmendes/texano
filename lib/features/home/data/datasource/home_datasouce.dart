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
          titulo: 'Lorem ipsum',
          conteudo:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc auctor, elit non pretium fringilla, eros elit vehicula justo, vel iaculis ante odio eget justo. Nam bibendum euismod neque, et pulvinar elit pharetra in. Aliquam lobortis sit amet nulla vel bibendum. Nunc eleifend faucibus lectus ut iaculis. Morbi vehicula arcu metus, ut egestas eros aliquet vitae. Donec facilisis ex vitae urna sodales, a condimentum ex sodales. Mauris dictum velit nec felis pellentesque malesuada. Etiam volutpat tortor in vehicula faucibus. Fusce condimentum nec lectus nec fringilla. Vivamus accumsan erat vel eros bibendum interdum. Donec porta dui rutrum justo varius luctus. Donec neque metus, convallis sed efficitur quis, accumsan nec quam. Vivamus convallis quis felis vitae auctor.\n\n'
              'Cras ac nulla dictum, lacinia tortor ac, ultrices nunc. Etiam maximus diam ut lacus sollicitudin blandit. Integer sollicitudin in ipsum id facilisis. Sed sit amet ex odio. Praesent fringilla scelerisque turpis, feugiat semper nisl aliquet eget. Duis dignissim ipsum pellentesque ligula feugiat volutpat. Etiam fermentum ex metus, eget tincidunt sem condimentum fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam nunc augue, euismod congue nisi nec, facilisis auctor nulla. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\n'
              'Vestibulum dictum sit amet lacus vel ullamcorper. Ut sodales, justo sed vulputate feugiat, tellus sapien commodo ligula, vel aliquet quam libero non erat. Pellentesque eleifend luctus tortor vel porta. Quisque non finibus ligula. Mauris ac ligula ac tellus rutrum interdum. Phasellus euismod metus vel consectetur luctus. Curabitur vestibulum urna non sem fermentum, varius sagittis dui iaculis. Donec posuere felis non iaculis ullamcorper. Pellentesque ultricies sed ante at luctus. Donec a congue lectus.\n\n'
              'Nulla blandit ultrices bibendum. Nunc dolor tellus, pellentesque sit amet blandit quis, dapibus id velit. Pellentesque id risus at quam varius bibendum et id ligula. Quisque hendrerit imperdiet mi, ac sodales nulla ullamcorper vel. Nam imperdiet risus sit amet lacus lacinia sollicitudin. Aenean gravida turpis lectus, vehicula luctus neque viverra nec. In sed bibendum lacus, non auctor elit. Cras luctus malesuada dignissim. Suspendisse potenti. Etiam sed sagittis ex, sed sodales turpis. Nam tristique neque metus, id sagittis elit luctus quis. Duis laoreet congue quam, nec vestibulum lorem faucibus quis. Maecenas consequat nisi sit amet neque egestas, et egestas justo elementum. Suspendisse eget imperdiet eros. Duis quis ullamcorper mi, a faucibus ante.\n\n'
              'Curabitur egestas quam id elit finibus imperdiet. Maecenas sed suscipit est. Nulla tincidunt nibh enim, quis facilisis ipsum maximus et. Sed consequat ipsum sit amet dui feugiat finibus. Suspendisse cursus risus eget convallis imperdiet. Vestibulum metus nisi, porttitor quis turpis id, feugiat maximus magna. Quisque in gravida arcu. Vestibulum ultricies porta metus in tristique. Pellentesque mattis varius lacus, quis efficitur purus sodales a.\n\n'
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc auctor, elit non pretium fringilla, eros elit vehicula justo, vel iaculis ante odio eget justo. Nam bibendum euismod neque, et pulvinar elit pharetra in. Aliquam lobortis sit amet nulla vel bibendum. Nunc eleifend faucibus lectus ut iaculis. Morbi vehicula arcu metus, ut egestas eros aliquet vitae. Donec facilisis ex vitae urna sodales, a condimentum ex sodales. Mauris dictum velit nec felis pellentesque malesuada. Etiam volutpat tortor in vehicula faucibus. Fusce condimentum nec lectus nec fringilla. Vivamus accumsan erat vel eros bibendum interdum. Donec porta dui rutrum justo varius luctus. Donec neque metus, convallis sed efficitur quis, accumsan nec quam. Vivamus convallis quis felis vitae auctor.\n\n'
              'Cras ac nulla dictum, lacinia tortor ac, ultrices nunc. Etiam maximus diam ut lacus sollicitudin blandit. Integer sollicitudin in ipsum id facilisis. Sed sit amet ex odio. Praesent fringilla scelerisque turpis, feugiat semper nisl aliquet eget. Duis dignissim ipsum pellentesque ligula feugiat volutpat. Etiam fermentum ex metus, eget tincidunt sem condimentum fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam nunc augue, euismod congue nisi nec, facilisis auctor nulla. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\n'
              'Vestibulum dictum sit amet lacus vel ullamcorper. Ut sodales, justo sed vulputate feugiat, tellus sapien commodo ligula, vel aliquet quam libero non erat. Pellentesque eleifend luctus tortor vel porta. Quisque non finibus ligula. Mauris ac ligula ac tellus rutrum interdum. Phasellus euismod metus vel consectetur luctus. Curabitur vestibulum urna non sem fermentum, varius sagittis dui iaculis. Donec posuere felis non iaculis ullamcorper. Pellentesque ultricies sed ante at luctus. Donec a congue lectus.\n\n'
              'Nulla blandit ultrices bibendum. Nunc dolor tellus, pellentesque sit amet blandit quis, dapibus id velit. Pellentesque id risus at quam varius bibendum et id ligula. Quisque hendrerit imperdiet mi, ac sodales nulla ullamcorper vel. Nam imperdiet risus sit amet lacus lacinia sollicitudin. Aenean gravida turpis lectus, vehicula luctus neque viverra nec. In sed bibendum lacus, non auctor elit. Cras luctus malesuada dignissim. Suspendisse potenti. Etiam sed sagittis ex, sed sodales turpis. Nam tristique neque metus, id sagittis elit luctus quis. Duis laoreet congue quam, nec vestibulum lorem faucibus quis. Maecenas consequat nisi sit amet neque egestas, et egestas justo elementum. Suspendisse eget imperdiet eros. Duis quis ullamcorper mi, a faucibus ante.\n\n'
              'Curabitur egestas quam id elit finibus imperdiet. Maecenas sed suscipit est. Nulla tincidunt nibh enim, quis facilisis ipsum maximus et. Sed consequat ipsum sit amet dui feugiat finibus. Suspendisse cursus risus eget convallis imperdiet. Vestibulum metus nisi, porttitor quis turpis id, feugiat maximus magna. Quisque in gravida arcu. Vestibulum ultricies porta metus in tristique. Pellentesque mattis varius lacus, quis efficitur purus sodales a.\n\n',
          data: DateTime.now(),
        ),
      ],
    );
  }
}
