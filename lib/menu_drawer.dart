import 'package:appmovie/duvidas_page.dart';
import 'package:appmovie/sobre_page.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Olá, João Pedro",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Card(
            elevation: 0.5,
            child: ListTile(
              leading: const Icon(Icons.help_outlined),
              title: const Text(
                "Dúvidas",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DuvidasPage(),
                  ),
                );
              },
            ),
          ),
          Card(
            elevation: 0.5,
            child: ListTile(
              leading: const Icon(Icons.info_sharp),
              title: const Text(
                "Sobre o App Movie",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SobrePage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
