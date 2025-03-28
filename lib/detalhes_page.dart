import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class DetalhesPage extends StatelessWidget {
  final Map movie;
  const DetalhesPage({super.key, required this.movie});

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
            title: Text(movie['Title']),
            centerTitle: true,
            backgroundColor: Colors.white54,
            elevation: 0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
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
                        movie["Images"][0],
                        errorBuilder: (BuildContext context, Object exception,
                            StackTrace? stackTrace) {
                          return Image.asset(
                            "assets/carretelFilme.avif",
                            fit: BoxFit.cover,
                            width: 350,
                          );
                        },
                        fit: BoxFit.cover,
                        width: 350,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  movie['Title'],
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  movie['Plot'],
                  textAlign: TextAlign.center,
                ),
              ),
              const Divider(
                color: Colors.black45,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "Ano: ${movie['Year']}\n"
                  "Lançado: ${movie['Released']}\n"
                  "Duração: ${movie['Runtime']}\n"
                  "Gênero: ${movie['Genre']}\n"
                  "Escritor(a): ${movie['Director']}\n"
                  "Atores: ${movie['Actors']}\n"
                  "Linguagem: ${movie['Language']}\n"
                  "País: ${movie['Country']}\n"
                  "Prêmios: ${movie['Awards']}\n"
                  "Pontuação: ${movie['Metascore']}\n"
                  "Avaliação: imdb: ${movie['imdbRating']}\n"
                  "Votos imdb: ${movie['imdbVotes']}\n"
                  "ID imdb: ${movie['imdbID']}",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 220,
                  child: ElevatedButton(
                    onPressed: () {
                      Share.share(
                          'Confira este filme, ${movie['Title']}!\n'
                          '${movie['Plot']}\n'
                          "Lançado: ${movie['Released']}\n"
                          "Duração: ${movie['Runtime']}\n"
                          "Gênero: ${movie['Genre']}\n"
                          "Atores: ${movie['Actors']}\n"
                          "Linguagem: ${movie['Language']}\n"
                          "Avaliação: imdb: ${movie['imdbRating']}\n"
                          'https://www.youtube.com/results?search_query=${movie['Title'].toLowerCase()}',
                          subject: 'Dê uma olhada nisso!');
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
