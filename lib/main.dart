import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pmsn_p1/card_one.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  final data = [
    CardOneData(
      title: 'Seat',
      subtitle:
          'Precision tecnologica e ingenieria de calidad junto con un diseño emocional y mediterraneo',
      image: const NetworkImage(
          "https://assets.stickpng.com/images/580b57fcd9996e24bc43c49e.png"),
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.pink,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/bg-1.json")
    ),
    CardOneData(title: 'Cupra',
        subtitle:
            'La version de alta gama deportiva de la Compañia SEAT. Los mejores automoviles que seduce el mercado internacional.',
        image: const AssetImage("assets/images/cupra.png"),
        backgroundColor: Colors.black,
        titleColor: const Color.fromRGBO(158, 127, 32, 1),
        subtitleColor: Colors.white, 
        background: LottieBuilder.asset("assets/animation/bg-2.json")
      ),
    CardOneData(title: 'Leon',
        subtitle:
            'La combinacion ganadora de potencia, tecnologia y conectividad en un mismo diseño',
        image: const NetworkImage(
            "https://d1extt4q0kbmr.cloudfront.net/wp-content/uploads/2019/10/portada-30-1.png"),
        backgroundColor: const Color.fromRGBO(7, 158, 166, 1),
        titleColor: const Color.fromRGBO(240, 7, 123, 1),
        subtitleColor: const Color.fromRGBO(30, 12, 66, 1), background: LottieBuilder.asset("assets/animation/bg-3.json")
        ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardOne(data: data[index]);
        },
      ),
    );
  }
}
