import 'package:flutter/material.dart';

void main() => runApp(const AppInmobiliaria());

class AppInmobiliaria extends StatelessWidget {
  const AppInmobiliaria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inmobiliaria Diego',
      home: const Empleados(),
    );
  }
} // Fin clase AppInmobiliaria

class Empleados extends StatelessWidget {
  const Empleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inmobiliaria Diego',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Color.fromARGB(255, 255, 255, 255)),
          onPressed: () {
            // Acción de la cámara
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.white),
            onPressed: () {
              // Acción del corazón
            },
          ),
          IconButton(
            icon: const Icon(Icons.edit, color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {
              // Acción del lápiz
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          crearTarjeta(
            'https://raw.githubusercontent.com/DiegoCruz0475/Imagenes-para-flutter6-J-11-02-2026/refs/heads/main/inmo1.jpg',
            'Juliana Reyes',
            'Explora los picos más altos',
          ),
          crearTarjeta(
            'https://raw.githubusercontent.com/DiegoCruz0475/Imagenes-para-flutter6-J-11-02-2026/refs/heads/main/inmo2.jpg',
            'Yared Peralta',
            'Casa en el agua',
          ),
          crearTarjeta(
            'https://raw.githubusercontent.com/DiegoCruz0475/Imagenes-para-flutter6-J-11-02-2026/refs/heads/main/inmo3.jpg',
            'Osvaldo Salinas',
            'Casa con la naturaleza virgen',
          ),
        ],
      ),
    );
  }

  // --- Función para crear las tarjetas corregida ---
  Widget crearTarjeta(String urlAvatar, String titulo, String subtitulo) {
    return Card(
      color: const Color.fromARGB(255, 28, 107, 243),
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(urlAvatar),
            ),
            title: Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(subtitulo),
            trailing: const Icon(Icons.favorite, size: 16),
          ),
        ],
      ),
    );
  }
} // Fin clase Empleados