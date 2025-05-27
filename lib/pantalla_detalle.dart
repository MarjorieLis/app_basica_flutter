import 'package:flutter/material.dart';

class PantallaDetalle extends StatefulWidget {
  const PantallaDetalle({super.key});

  @override
  State<PantallaDetalle> createState() => _PantallaDetalleState();
}

class _PantallaDetalleState extends State<PantallaDetalle> {
  bool activo = false; // Estado dinámico para el botón

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina de Detalle'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Detalles sobre Flutter',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 20),

              // Imagen con estilo
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                shadowColor: Colors.blueAccent.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      const Text(
                        'Ilustracion explicativa',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent.withOpacity(0.3)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/imagen_detalle.png',
                            fit: BoxFit.contain,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Texto
              const Text(
                'Flutter es un framework creado por Google que permite construir aplicaciones nativas para movil, web y escritorio usando un solo codigo base.',
                style: TextStyle(fontSize: 18, height: 1.6),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                'El lenguaje que usa es Dart, que es rapido y facil de aprender. Los widgets son la base para crear interfaces visuales atractivas y dinamicas.',
                style: TextStyle(fontSize: 18, height: 1.6),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 30),

              // Botón con estado dinámico
              Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          activo = !activo;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: activo ? Colors.green : Colors.grey,
                      ),
                      child: Text(
                        activo ? 'Activo' : 'Inactivo',
                        style: const TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.arrow_back),
                      label: const Text('Volver a Inicio'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        backgroundColor: Colors.blueAccent,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),
              const Divider(thickness: 2),
              const SizedBox(height: 10),

              // Tip
              Row(
                children: const [
                  Icon(Icons.lightbulb_outline, color: Colors.blueAccent),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Tip: Aprovecha la comunidad Flutter para aprender y compartir tus proyectos.',
                      style: TextStyle(fontSize: 16),
                    ),
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
