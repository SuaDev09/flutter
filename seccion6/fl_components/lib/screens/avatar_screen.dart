import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: 5,
            ),
            child: const CircleAvatar(
              backgroundColor: Colors.deepPurpleAccent,
              child: Text('SL'),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
            'https://sm.ign.com/t/ign_latam/screenshot/default/goku-susanoo_7by3.1280.jpg',
          ),
        ),
      ),
    );
  }
}
