import 'package:flutter/material.dart';

class DuvidasPage extends StatelessWidget {
  const DuvidasPage({super.key});

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
            title: const Text("Dúvidas"),
            centerTitle: true,
            backgroundColor: Colors.white54,
            elevation: 0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Perguntas Frequentes (FAQ)",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  buildExpansionTile(
                    '1. Como posso adicionar um filme aos favoritos?',
                    'Para adicionar um filme aos favoritos, basta clicar no ícone de estrela ao lado do título fo filme.',
                  ),
                  buildExpansionTile(
                    '2. Como posso ver os detalhes de um filme?',
                    'Para ver os detalhes de um filme, basta clicar sobre o título do filme na lista. Você verá informações como sinopse, ano de lançamento e gênero.',
                  ),
                  buildExpansionTile(
                    '3. Onde posso ver a lista completa de filmes?',
                    'A lista completa de filmes está disponível na tela incial do aplicativo, onde você pode navegar pelos filmes listados.',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildExpansionTile(String title, String content) {
  return Card(
    elevation: 5,
    margin: const EdgeInsets.symmetric(vertical: 5),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: ExpansionTile(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            content,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
        ),
      ],
    ),
  );
}
