import 'package:delivery_app/src/login/login_controller.dart';
import 'package:delivery_app/src/utils/my_Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  LoginController _con = new LoginController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });
  }
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
                left: 25,
                child: _textLogin()),
            SingleChildScrollView(
              child: Column(
                children: [
                  //_imageBanner(),
                  _lottieAnimation(),
                  _textFielEmail(),
                  _textFielPassword(),
                  _buttonLogin(),
                  _textDontHaveAccount(),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }

  Widget _lottieAnimation(){
    return Container(
      margin: EdgeInsets.only(
          top: 150,
          bottom: MediaQuery.of(context).size.height * 0.15),
      child: Lottie.asset('assets/json/delivery.json',
        width: 300,
        height: 200,
        fit: BoxFit.fill
      ),
    );
  }

  Widget _textLogin(){
    return Text('LOGIN', style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
        fontFamily: 'NimbusSans',
    ),);
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

  Widget _imageBanner(){
    return Container(
      margin: EdgeInsets.only(
          top: 100,
          bottom: MediaQuery.of(context).size.height * 0.22),
      child: Image.asset(
        'assets/img/delivery.png',
        width: 200,
        height: 200,
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
            prefixIcon: Icon(Icons.lock, color: MyColors.primaryColor,)
        ),
      ),
    );
  }

  Widget _buttonLogin(){
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
      child: ElevatedButton(onPressed: () {}, child: Text('Ingresar'),
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.symmetric(vertical: 15)
      ),),
    );
  }

  Widget _textDontHaveAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('No tienes cuenta', style: TextStyle(
            color: MyColors.primaryColor
        ),),
        SizedBox(
          width: 7,
        ),
        GestureDetector(
          onTap: _con.goToRegisterPage,
          child: Text('Registrate', style: TextStyle(
              fontWeight: FontWeight.bold,
              color: MyColors.primaryColor
          ),),
        )
      ],);
  }
}
