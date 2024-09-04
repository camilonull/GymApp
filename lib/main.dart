import 'package:flutter/material.dart';

void main() {
  runApp(const GymApp());
}
/*
class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym APP Demo',
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ExerciseListScreen(),
    );
  }
}

class ExerciseListScreen extends StatelessWidget {
  final List<Map<String, String>> exercises = [
    {'name': 'Push-ups', 'description': '15 reps'},
    {'name': 'Squats', 'description': '20 reps'},
    {'name': 'Plank', 'description': 'Hold for 60 seconds'},
    {'name': 'Jumping Jacks', 'description': '30 reps'},
    {'name': 'Burpees', 'description': '15 reps'},
  ];

  ExerciseListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise List'),
      ),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading:  const Icon(Icons.fitness_center),
              title: Text(exercises[index]['name']!),
              subtitle: Text(exercises[index]['description']!),
              onTap: () {
                // Aquí podrías navegar a una nueva pantalla con más detalles del ejercicio
              },
            ),
          );
        },
      ),
    );
  }
}
*/

class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym APP Demo',
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo del Gimnasio
            const Icon(
              Icons.fitness_center_rounded,
              color: Colors.white,
              size: 100,
            ),
            const SizedBox(height: 20),
            // Nombre del Gimnasio o App
            const Text(
              'GymApp',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Eslogan o Descripción
            Text(
              'Entrena como un profesional',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 50),
            // Indicador de carga o botón de inicio
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
