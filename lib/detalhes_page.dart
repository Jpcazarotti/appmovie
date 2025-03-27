import 'package:flutter/material.dart';

class DetalhesPage extends StatelessWidget {
  const DetalhesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatar"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 5,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    child: Image.network(
                      "https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
                      fit: BoxFit.cover,
                      width: 350,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Avatar",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
                  textAlign: TextAlign.center,
                ),
              ),
              const Divider(
                color: Colors.black45,
                thickness: 1,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "Ano: 2009\n"
                  "Lançado: 18 Dec 2009\n"
                  "Duração: 162 min\n"
                  "Gênero: 14-Action, Adventure,Fantasy\n"
                  "Escritor(a): James Cameron\n"
                  "Atores: Sam Worthington, Zoe Saldana, Sigourney Weaver, Stephen Lang\n"
                  "Linguagem: English, Spanish\n"
                  "País: USA, UK\n"
                  "Prêmios: Won 3 Oscars. Another 80 wins & 121 nominations.\n"
                  "Pontuação: 83\n"
                  "Avaliação: imdb: 7.9\n"
                  "Votos imdb: 890,617\n"
                  "ID imdb: tt0499549\n",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 220,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 11,
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.ios_share_rounded),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Compartilhar",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
