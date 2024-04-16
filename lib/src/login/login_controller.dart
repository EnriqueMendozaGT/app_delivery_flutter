import 'package:flutter/material.dart';

class LoginController{
  BuildContext? context;

  Future? init(BuildContext context){
    this.context = context;
    return null;
  }

  void goToRegisterPage(){
      Navigator.pushNamed(context!, 'register'); // Utiliza context con el operador de acceso de opción nula (!)
  }

}