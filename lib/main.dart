import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Catpuccin Color Scheme
const baseClr = Color.fromARGB(255, 30, 30, 46);
const barClr = Color.fromARGB(255, 88, 91, 112);
const textClr = Color.fromARGB(255, 205, 214, 244);
const textClr2 = Color.fromARGB(255, 245, 224, 220);
const redClr = Color.fromARGB(255, 231, 130, 132);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: baseClr,
        brightness: Brightness.light,
        textTheme:
            GoogleFonts.robotoMonoTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: textClr,
          displayColor: textClr,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: barClr,
        title: const Text(
          'Vashappening',
          style: TextStyle(fontSize: 50),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(270.0),
            child: Image.network(
              "https://media.licdn.com/dms/image/D5603AQF7BHQxvXq-0Q/profile-displayphoto-shrink_800_800/0/1676120104865?e=2147483647&v=beta&t=nRrPdd1D_XEXrGRhKrAnYbZyQAFU38JOBpDuvfdY-lc",
              height: 250,
              width: 250,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Carmenita Lamba",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "A 2nd year IT student at Sam Ratulangi University of Manado | 210211060114",
            style: TextStyle(fontSize: 16, color: textClr2),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.center,
            constraints: const BoxConstraints(maxWidth: 475),
            child: const Text(
                "A musician, but currently lost in Computer Science"),
          ),
          const SizedBox(
            height: 75,
          ),
          const Text.rich(TextSpan(children: [
            TextSpan(text: "made with "),
            TextSpan(
                text: "\u2665 ",
                style: TextStyle(color: redClr, fontWeight: FontWeight.w900)),
            TextSpan(text: "by vashappening")
          ]))
        ],
      )),
    );
  }
}
