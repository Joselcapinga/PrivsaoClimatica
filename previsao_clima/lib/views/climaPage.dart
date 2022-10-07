// import 'package:cripto_moeda/models/clima.dart';
// import 'package:cripto_moeda/pages/climaDetalhesPage.dart';
// import 'package:cripto_moeda/repositories/clima_repository.dart';
// import 'package:flutter/material.dart';

import 'package:previsao_clima/models/clima.dart';
import 'package:previsao_clima/views/climaDetalhesPage.dart';
import 'package:previsao_clima/repositoreis/clima_repository.dart';
import 'package:flutter/material.dart';

class ClimaPage extends StatefulWidget {
  const ClimaPage({Key? key}) : super(key: key);

  @override
  State<ClimaPage> createState() => _ClimaPageState();
}

class _ClimaPageState extends State<ClimaPage> {
  mostrarDetalhes(Clima clima) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ClimaDetalhesPage(clima: clima),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tabela = ClimaRepository.table;
    List<Clima> selecionadas = [];

    return Scaffold(
        appBar: AppBar(
          title: Text('Previsão de Tempo'),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int clima) {
              return ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                leading: SizedBox(
                  child: Image.asset(tabela[clima].icon),
                  width: 40,
                ),
                title: Text(
                  tabela[clima].cidade,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Text(tabela[clima].data),
                selected: selecionadas.contains(tabela[clima]),
                selectedColor: Colors.indigoAccent[50],
                onLongPress: () {
                  setState(() {
                    //if ternario
                    (selecionadas.contains(tabela[clima]))
                        ? selecionadas.remove(tabela[clima])
                        : selecionadas.add(tabela[clima]);
                  });
                },
                onTap: () => mostrarDetalhes(tabela[clima]),
              );
            },
            padding: EdgeInsets.all(16),
            separatorBuilder: (_, __) => Divider(),
            itemCount: tabela.length)

        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        // ),

        //tags do fim
        );
  }
}
