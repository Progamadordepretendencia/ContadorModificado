import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    flex: 5,
                    child: Image.network("http://hermes.digitalinnovation.one/assets/diome/logo.png"),
                  ),
                  Expanded(child: Container()),
                ],
              
              ),

              const SizedBox(
                height: 20,
              ),
              const Text("Ja tem cadastro?", 
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Faça seu login e make the change_", style: TextStyle(fontSize: 14, color: Colors.white),),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2, 
                    child: Text(
                      "Informe seu email:", 
                      style: TextStyle(color: Colors.white),)),
                    Expanded(
                      flex: 3, 
                      child: Text(
                        "Email", 
                        style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe a senha:", style: TextStyle(color: Colors.white),)),
                    Expanded(flex: 3, child: Text("Senha",style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                height: 30,
                alignment: Alignment.center,
                child: const Text("Login"),
              ),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Text("Esqueci minha senha", style: TextStyle(
                  color: Colors.amber, fontWeight: FontWeight.w400
                ),
                ),
              ),
               Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Text("Criar conta", style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.w400),),
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}