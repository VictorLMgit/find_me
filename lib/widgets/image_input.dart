// ignore_for_file: deprecated_member_use

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({Key? key}) : super(key: key);

  @override
  State<ImageInput> createState() => ImageInputState();
}

class ImageInputState extends State<ImageInput> {
  @override
  Widget build(BuildContext context) {
    
    var image_input = Row(
      children: <Widget>[
        Container(
          width: 180,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey)
          ),
          alignment: Alignment.center,
          child: Text("Nenhuma Imagem"),
        ),
        SizedBox(width: 10,),
        Expanded(
          child: FlatButton.icon(
            onPressed: (){}, 
            textColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.camera), 
            label: Text("Nova Foto")
          ),
        ),
        

        
      ],
    );

    return image_input;
  }
}
