import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moroxval/pages/md/screens/home/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Diversifying the Real estate industry', style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                )),
                const SizedBox(height: 10),
                const Text(
                  'This section serves as an Admin Role for the evaluation app, under the control of the MD to manage all acess.',
                  style: TextStyle(fontWeight: FontWeight.w300, height: 1.5),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white
                  ),
                  child: const Text('Continue'),
                ),
              ],
            ),
          ),
          Expanded(
            child: SvgPicture.asset('assets/agent.png'),
          ),
        ],
      ),
    );
  }
}
