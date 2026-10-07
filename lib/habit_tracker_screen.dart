import 'package:flutter/material.dart';
import 'add_habit_screen.dart';

class HabitTrackerScreen extends StatelessWidget {
  const HabitTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Habit Tracker',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Habits',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: const Icon(
                    Icons.water_drop,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Drink Water',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Stay hydrated throughout the day',
                ),
                trailing: Checkbox(
                  value: false,
                  onChanged: null,
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: const Icon(
                    Icons.fitness_center,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Workout',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Exercise regularly',
                ),
                trailing: Checkbox(
                  value: false,
                  onChanged: null,
                ),
              ),
            ),

            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: const Icon(
                    Icons.menu_book,
                    color: Colors.white,
                  ),
                ),
                title: const Text(
                  'Read',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'Read every day',
                ),
                trailing: Checkbox(
                  value: false,
                  onChanged: null,
                ),
              ),
            ),

            const Spacer(),

            const Center(
              child: Text(
                'Tap + to configure your habits',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddHabitScreen(),
            ),
          );
        },
        backgroundColor: Colors.blue.shade700,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
