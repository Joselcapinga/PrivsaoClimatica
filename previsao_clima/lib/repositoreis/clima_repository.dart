import 'package:previsao_clima/models/clima.dart';

class ClimaRepository {
  static List<Clima> table = [
    Clima(
        cidade: 'Ponta-Grossa',
        data: '03/10/2022',
        temperatura: '16.10 ºc',
        sensacaoClima: '12.1',
        descricao: 'Nublado',
        icon: 'images/nublado.png'),
    Clima(
        cidade: 'Ponta-Grossa',
        data: '04/10/2022',
        temperatura: '20.6 ºc',
        sensacaoClima: '19.1',
        descricao: 'Sol',
        icon: 'images/sol.png'),
    Clima(
        cidade: 'Ponta-Grossa',
        data: '05/10/2022',
        temperatura: '19.10 ºc',
        sensacaoClima: '18.0',
        descricao: 'Sol e Chuva',
        icon: 'images/sol_chuva.png'),
    Clima(
        cidade: 'Ponta-Grossa',
        data: '06/10/2022',
        temperatura: '19.10 ºc',
        sensacaoClima: '18.0',
        descricao: 'Chuva',
        icon: 'images/chuva.png'),
  ];
}
