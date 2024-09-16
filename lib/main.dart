import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0; // Variable to track the counter value
  bool isFirstImage = true; // Variable to track the current image state

  // Paths of the images (Replace these with the actual image asset paths)
  final String firstImage = 'android/assets/image1.png';
  final String secondImage = 'android/assets/image2.png';

  // Function to toggle between two images
  void toggleImage() {
    setState(() {
      isFirstImage = !isFirstImage;
    });
  }

  // Function to increment the counter
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter & Image Toggle App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Displaying the counter value
            Text(
              'Counter: $counter',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Increment button
            ElevatedButton(
              onPressed: incrementCounter,
              child: Text('Increment'),
            ),
            SizedBox(height: 40),
            // Displaying the image (toggle between two images)
            Image.asset(
              isFirstImage ? firstImage : secondImage,
              height: 200, // Set the desired height
              width: 200, // Set the desired width
            ),
            SizedBox(height: 20),
            // Button to toggle the image
            ElevatedButton(
              onPressed: toggleImage,
              child: Text('Toggle Image'),
            ),
          ],
        ),
      ),
    );
  }
}
