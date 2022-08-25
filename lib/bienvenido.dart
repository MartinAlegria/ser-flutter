import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class Bienvenido extends StatefulWidget {
  @override
  _BienvenidoState createState() => _BienvenidoState();
}

class _BienvenidoState extends State<Bienvenido> {
  //Adding the main color of the app
  Color mainColor = Color.fromARGB(255, 31, 159, 138);
  Color secColor = Color.fromARGB(255, 1, 90, 75);
  var containerRadius = Radius.circular(30.0);
  //Adding a list of image URL to simulate the avatar picture
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        children: [
          //First let's create the Story time line container
          Container(
            height: 60.0,
            child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 10.0),
                child: Text(
                  "Bienvenido",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )),
          ),

          //Now let's create our chat timeline
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: containerRadius, topRight: containerRadius),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                child: ListView(
                  children: [
                    //Now let's create our chat tile custom widget
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        "Nos encanta darte la bienvenida por tu iniciativa para convertirse en un SÚPER SER [Súper Separador(a) Ecológico(a) de Residuos] y valoramos tu interés en informarte sobre lo que puedes hacer en tu hogar para tener un medioambiente más limpio y sano.\n\nAntes de empezar, es importante que sepas que todo lo que comúnmente conocemos como BASURA, los investigadores, científicos y autoridades le llaman RESIDUOS SÓLIDOS URBANOS RSU (por sus iniciales)\n\nEn Muchos lugares separan la basura por colores, nosotros sugerimos utilizar contenedores en 3 colores diferenciados según lo que se depositara en ellos:\n\nVerde: Residuos orgánicos\n\nGris: Residuos inorgánicos reciclables\n\nReisudos inorganicos NO reciclables\n\nTambién existen residuos de manejo especial, electrónicos, peligrosos, y biológicos infecciosos, que se manejan aparte, pero que te explicamos cuáles son y cómo debes separarlos.\n\nHemos preparado varias secciones en las que encontrarás las explicaciones científicas de por que EL NO SEPARAR LOS RESIDUOS LOS CONVIERTE EN CONTAMINANTES.\n\nEs muy importante tomar en cuenta que, para exigir a nuestras autoridades que le den un buen tratamiento a nuestro RSU para que no contaminen, debemos recordar que la responsabilidad de separar los RSU es nuestra. Así que, una vez que los ciudadanos separemos nuestro RSU, podemos exigir a las autoridades les dé el tratamiento apropiado para beneficio nuestro\n\nNecesitamos crear una economía circular local, aprovechemos los residuos y ganemos dinero\n\nEDUCAR PARA NO CONTAMINAR.",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
