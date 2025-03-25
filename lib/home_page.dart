import 'package:appmovie/menu_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            Expanded(
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Image.network(
                          "https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
                          fit: BoxFit.cover,
                        ),
                        title: const Text(
                          "Avatar",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        subtitle: const Text(
                          "A paraplegic marine dispatched to the moon Pandora on a unique mission beco...",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        onTap: () {},
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
