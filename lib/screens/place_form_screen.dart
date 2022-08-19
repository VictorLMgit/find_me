// ignore_for_file: prefer_const_constructors


import 'package:find_me/providers/great_places.dart';
import 'package:find_me/widgets/image_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'dart:io';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({Key? key}) : super(key: key);

  @override
  State<PlaceFormScreen> createState() => PlaceFormScreenState();
}

class PlaceFormScreenState extends State<PlaceFormScreen> {
  final _titleController = TextEditingController();
  File? _pickedImage;

  void onSelectedImage(File pickedImage) {
    _pickedImage = pickedImage;
  }

  void _submitForm() {
    if (_titleController.text.isEmpty || _pickedImage == null) return;

   Provider.of<GreatPlaces>(context, listen:false).addPlace(
      _titleController.text, 
      _pickedImage!
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final _appBar = AppBar(
      title: Text("Novo Lugar"),
    );

    var _body = SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Título"),
              controller: _titleController,
            ),
            SizedBox(
              height: 10,
            ),
            ImageInput(this.onSelectedImage)
          ],
        ),
      ),
    );

    final _floatActionButton = FloatingActionButton.extended(
      icon: Icon(
        Icons.add,
        color: Theme.of(context).primaryColor,
      ),
      label: Text(
        "Adicionar",
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
      backgroundColor: Colors.white,
      elevation: 10,
      onPressed: _submitForm,
    );

    return Scaffold(
      appBar: _appBar,
      body: _body,
      floatingActionButton: _floatActionButton,
    );
  }
}
