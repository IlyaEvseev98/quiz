import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.6,
            child: Image.asset('assets/images/quiz-logo.png', width: 300),
          ),
          const SizedBox(height: 80),
          Text(
            'Как хорошо ты разбираешься в автомобилях?',
            textAlign: TextAlign.center,
            style: GoogleFonts.merriweather(
              color: const Color.fromRGBO(14, 149, 155, 1.0),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_forward_ios),
            label: const Text('Начать викторину!'),
          ),
        ],
      ),
    );
  }
}
