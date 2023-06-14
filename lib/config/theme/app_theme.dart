import 'package:flutter/material.dart';


const Color _customColor = Color(0x0035E163);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,


];


///1. El primer paso va a ser crear una clase AppTheme
class AppTheme{
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert( selectedColor >= 0 && selectedColor <= _colorThemes.length -1,
  
     'Colors must be between 0 and ${_colorThemes.length}' );

///2. Luego internamente voy a crear un metodo que devuelva algo de tipo ThemeData, lo cual
///se importa desde material .
///¿Porque ThemeData?-> Porque es lo que esta esperando theme en el main
  ThemeData theme(){ //Este es el metodo que va a construir el tema
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.dark
    );
  }

}