import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Meu app")
        
        ),
        drawer: const Drawer(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dados cadastráis"),
                Divider(),
                SizedBox(height: 10,),
                Text("Termos de uso e privacidade"),
                Divider(),
                SizedBox(height: 10,),
                Text("Configurações")
              ],
            ),
          ),
        ),
      ),
    );
  }
}