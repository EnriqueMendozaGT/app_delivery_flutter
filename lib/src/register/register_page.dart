import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../utils/my_Colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
                top: -80,
                left: -100,
                child: _circleLogin()
            ),
            Positioned(
                top: 60,
                left: 35,
                child: _textLogin()),
            Positioned(
                top: 50,
                left: 0,
                child: _iconBack()),
            Container(
              margin: EdgeInsets.only(top: 150),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _imageUser(),
                    //_imageBanner(),
                    SizedBox(height: 20,),
                    _textFielEmail(),
                    _textFielName(),
                    _textFielLastName(),
                    _textFielPhone(),
                    _textFielPassword(),
                    _textFielConfirmPassword(),
                    _buttonLogin(),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }

  Widget _imageUser(){
    return  CircleAvatar(
      backgroundImage: AssetImage('assets/img/user_profile_2.png'),
      radius: 60,
      backgroundColor: Colors.grey[200],
    );
  }
  Widget _textLogin(){
    return Text('Registro', style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 30,
      fontFamily: 'NimbusSans',
    ),);
  }
  
  Widget _iconBack(){
    return IconButton(
        onPressed: (){},
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        )
    );
  }

  Widget _circleLogin(){
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: MyColors.primaryColor
      ),
    );
  }

  Widget _textFielEmail(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText:
            'Correo electronico',
            hintStyle: TextStyle(
                color: MyColors.primaryColorDark
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(Icons.email, color: MyColors.primaryColor,)
        ),
      ),
    );
  }

  Widget _textFielName(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText:
            'Nombre',
            hintStyle: TextStyle(
                color: MyColors.primaryColorDark
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(Icons.person, color: MyColors.primaryColor,)
        ),
      ),
    );
  }

  Widget _textFielLastName(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText:
            'Apellido',
            hintStyle: TextStyle(
                color: MyColors.primaryColorDark
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(Icons.person_outline, color: MyColors.primaryColor,)
        ),
      ),
    );
  }

  Widget _textFielPhone(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText:
            'Telefono',
            hintStyle: TextStyle(
                color: MyColors.primaryColorDark
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(Icons.phone, color: MyColors.primaryColor,)
        ),
      ),
    );
  }

  Widget _textFielPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText:
            'Contraseña',
            hintStyle: TextStyle(
                color: MyColors.primaryColorDark
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(Icons.person_outline, color: MyColors.primaryColor,)
        ),
      ),
    );
  }

  Widget _textFielConfirmPassword(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      decoration: BoxDecoration(color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText:
            'Confirmar contraseña',
            hintStyle: TextStyle(
                color: MyColors.primaryColorDark
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            prefixIcon: Icon(Icons.lock, color: MyColors.primaryColor,)
        ),
      ),
    );
  }

  Widget _buttonLogin(){
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
      child: ElevatedButton(onPressed: () {}, child: Text('Registrarse'),
        style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.primaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: EdgeInsets.symmetric(vertical: 15)
        ),),
    );
  }
}
