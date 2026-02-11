import 'package:flutter/material.dart';

void main() => runApp(const AppEstudioFotografico());

class AppEstudioFotografico extends StatelessWidget {
  const AppEstudioFotografico({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Lasfotografias(),
    );
  }
} // fin clase AppEstudioFotografico

class Lasfotografias extends StatelessWidget {
  const Lasfotografias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Estudio Fotografico de Herrera',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true, // Centra el título
        backgroundColor: Colors.grey[850], // Un gris oscuro y moderno
        leading: IconButton(
          icon: const Icon(Icons.camera_alt, color: Colors.white),
          onPressed: () {
            // Acción para el ícono de la cámara
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_library, color: Colors.grey[400]),
            onPressed: () {
              // Acción para el ícono de fotos
            },
          ),
          IconButton(
            icon: Icon(Icons.photo_album, color: Colors.grey[400]),
            onPressed: () {
              // Acción para el ícono de sesiones de fotos
            },
          ),
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.grey[400]),
            onPressed: () {
              // Acción para el ícono de la cámara
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: <Widget>[
            _buildCard('https://raw.githubusercontent.com/valeria4c/imagenes-para.fluter-6-I-11-Feb-26/refs/heads/main/foto1.png', 'Fotografía de Paisaje', 'Sesión al amanecer'),
            _buildCard('https://raw.githubusercontent.com/valeria4c/imagenes-para.fluter-6-I-11-Feb-26/refs/heads/main/foto2.jpg', 'Retrato Profesional', 'Estudio con fondo neutro'),
            _buildCard('https://raw.githubusercontent.com/valeria4c/imagenes-para.fluter-6-I-11-Feb-26/refs/heads/main/foto3.png', 'Fotografía de Producto', 'Iluminación para e-commerce'),
            _buildCard('https://raw.githubusercontent.com/valeria4c/imagenes-para.fluter-6-I-11-Feb-26/refs/heads/main/foto4.png', 'Evento Social', 'Cobertura de boda'),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String imageUrl, String title, String subtitle) {
    return Card(
      elevation: 8.0,
      shadowColor: Colors.black87,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            colors: [Colors.blue.shade900, Colors.grey.shade800],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(imageUrl),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(width: 15.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.favorite,
                color: Colors.blue.shade300,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
} // fin clase Lasfotografias
