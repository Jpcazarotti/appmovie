import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 8,
                spreadRadius: 2,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: AppBar(
            title: const Text("Sobre o App Movie"),
            centerTitle: true,
            backgroundColor: Colors.white54,
            elevation: 0,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "App Movie",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Versão: 1.0.0",
              style: TextStyle(
                color: Colors.black38,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Desenvolvedor: João Pedro Cazarotti",
              style: TextStyle(
                color: Colors.black38,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Este aplicativo permite que você explore uma lista de filmes, adicione filmes aos favoritos e veja detalhes sobre cada um.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
