import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class OpenCamera extends StatefulWidget {
  _CameraSrate createState() => _CameraSrate();
}

class _CameraSrate extends State<OpenCamera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gía de Crear un Video"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: _optionsDialogBox,
          child: Text('No volver a repetir!'),
        ),
      ),
    );
  }

  //void _openCamera() {
  //  var picture = ImagePicker.pickVideo(
  //    source: ImageSource.camera,
  //  );
  //}

  void _openVideo() {
    var picture = ImagePicker.pickVideo(
      source: ImageSource.camera,
    );
  }

  Future<void> _optionsDialogBox() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: new SingleChildScrollView(
              child: new ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: new Text('Captura una foto'),
                    onTap: _openVideo,
                  ),
                ],
              ),
            ),
          );
        }
      );
  }
}
