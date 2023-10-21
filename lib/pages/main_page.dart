import 'package:flutter/material.dart';
import 'package:santandemapp/pages/dados_cadastrais.dart';
import 'package:santandemapp/pages/pagina1.dart';
import 'package:santandemapp/pages/pagina2.dart';
import 'package:santandemapp/pages/pagina3.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int posicaoPagina = 0;
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Main Page")
        
        ),
        drawer:  Drawer(
          child: Padding(
            padding:  const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text("Dados cadastráis")),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context)=> const DadosCadastrais(
                      texto: "Meus dados",
                      dados: ["Nome", "Endereço"],
                    )));
                },
                ),
                const Divider(),
                const SizedBox(height: 10,),
                 InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text("Termos de uso e privacidade")),
                onTap: () {},
                ),
                const Divider(),
                const SizedBox(height: 10,),
                const Text("Configurações")
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    posicaoPagina = value;  
                  });
                },
                children: const [
                  Pagina1Page(),
                  Pagina2Page(),
                  Pagina3Page(),
                ],
              ),
            ),
            BottomNavigationBar(
              onTap: (value) {
                controller.jumpToPage(value);
              },
              currentIndex: posicaoPagina,
              items: const [BottomNavigationBarItem(
                label: "Pag1", icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                label: "Pag2", icon: Icon(Icons.add)),
                BottomNavigationBarItem(
                label: "Page3", icon: Icon(Icons.person))
                ])
          ],
        ),
      ),
    );
  }
}