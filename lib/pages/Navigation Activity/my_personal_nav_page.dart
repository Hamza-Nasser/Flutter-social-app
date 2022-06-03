import 'package:flutter/material.dart';

class MyPersonalNavPage extends StatefulWidget {
  const MyPersonalNavPage({Key? key}) : super(key: key);

  @override
  State<MyPersonalNavPage> createState() => _MyPersonalNavPageState();
}

class _MyPersonalNavPageState extends State<MyPersonalNavPage> {
  bool _isElevated = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Logout', style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 20),
          AnimatedContainer(
            width: 35,
            height: 35,
            child: GestureDetector(
              onTap: () {
                _isElevated = !_isElevated;
                Future.delayed(const Duration(milliseconds: 270)).then(
                    (value) => Navigator.pushReplacementNamed(context, '/'));
                setState(() {});
              },
            ),
            decoration: BoxDecoration(
              // image: const DecorationImage(
              //   image: AssetImage('assets/Hamza.jpg')
              // ),
              color: Colors.grey[200],
              boxShadow: _isElevated
                  ? const [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          blurRadius: 4,
                          spreadRadius: 1.5),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-2, -2),
                          blurRadius: 4,
                          spreadRadius: 1.5)
                    ]
                  : null,
              borderRadius: BorderRadius.circular(10),
            ),
            duration: const Duration(milliseconds: 300),
          ),
        ],
      ),
    );
  }
}
