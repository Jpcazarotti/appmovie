import 'package:appmovie/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lista de Filmes",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black26,
        ),
      ),
      home: const HomePage(),
    ),
  );
}
