import 'dart:convert';
import 'package:appmovie/detalhes_page.dart';
import 'package:appmovie/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> movies = [];
  TextEditingController buscarMovie = TextEditingController();
  bool isLoading = true;
  List listMovies = [];

  @override
  void initState() {
    super.initState();
    listarFilmes();
  }

  Future<void> listarFilmes() async {
    try {
      final response = await http.get(
        Uri.parse(
            "https://gist.githubusercontent.com/saniyusuf/406b843afdfb9c6a86e25753fe2761f4/raw/523c324c7fcc36efab8224f9ebb7556c09b69a14/Film.JSON"),
      );
      if (response.statusCode == 200) {
        setState(() {
          movies = json.decode(response.body);
          listMovies = movies;
          isLoading = false;
        });
      } else {
        mostrarErro("Falha ao processar dados.");
      }
    } catch (e) {
      mostrarErro("Erro: $e");
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  void mostrarErro(String mensagem) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensagem),
        backgroundColor: Colors.red,
      ),
    );
  }

  void filtrarMovies() {
    String pesquisa = buscarMovie.text.toLowerCase();
    setState(() {
      listMovies = movies.where((movie) {
        return movie['Title'].toLowerCase().contains(pesquisa);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Filmes"),
        centerTitle: true,
      ),
      drawer: const MenuDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: buscarMovie,
                decoration: const InputDecoration(
                  label: Text("Buscar Filme"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  suffixIcon: Icon(Icons
                      .search), // 'prefixIcon' -> lado esquerdo; 'suffixIcon' -> lado direito
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    var movie = movies[index];
                    return Card(
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          child: Image.network(
                            movie["Images"][0],
                            fit: BoxFit.cover,
                            width: 100,
                            height: 60,
                          ),
                        ),
                        title: Text(
                          movie["Title"],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        subtitle: Text(
                          movie["Plot"],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetalhesPage(),
                            ),
                          );
                        },
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
