import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:practica_19/ui/details_container.dart';
import 'package:practica_19/ui/head_container.dart';
import 'package:practica_19/src/pdf_preview.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class DetailsPage extends StatefulWidget {
  final String datosName;
  final String datosGender;
  final String? datosImage;

  const DetailsPage({
    super.key,
    required this.datosName,
    required this.datosGender,
    this.datosImage,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  String? _path;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.datosName} Details'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Color(0xFF272A3C),
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            MyHeadContainer(imagerec: widget.datosImage),
            MyDetailContainer(nom: widget.datosName, sexo: widget.datosGender),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFFF422C),
        onPressed: _isLoading
            ? null
            : () async {
                setState(() {
                  _isLoading = true;
                });

                await _downloadImage();

                setState(() {
                  _isLoading = false;
                });

                if (_path != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PdfPageP(
                        nombre: widget.datosName,
                        genero: widget.datosGender,
                        imagenurl: _path,
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Error al descargar la imagen.")),
                  );
                }
              },
        child: _isLoading
            ? Center(child: CircularProgressIndicator())
            : Icon(Icons.print_outlined),
      ),
    );
  }

  Future<void> _downloadImage() async {
    try {
      if (widget.datosImage == null) return;

      final response = await http.get(Uri.parse(widget.datosImage!));

      if (response.statusCode == 200) {
        final Uint8List bytes = response.bodyBytes;

        final directory = await getApplicationDocumentsDirectory();
        final filePath = '${directory.path}/imagen_descargada.jpg';

        final file = File(filePath);
        await file.writeAsBytes(bytes);

        _path = filePath;
        print("✅ Imagen descargada y guardada en: $_path");
      } else {
        print("❌ Error al descargar: ${response.statusCode}");
        _path = null;
      }
    } catch (error) {
      print("❌ Error: $error");
      _path = null;
    }
  }
}
