import 'package:flutter/material.dart';
import 'package:food_app/theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/starter_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Taking Order For Faster Delivery',
                  style: primaryTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'See resturants nearby by \nadding location',
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 300),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        Colors.yellow,
                        Colors.orange,
                      ],
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Text(
                      'Start',
                      style: primaryTextStyle.copyWith(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Align(
                  child: Text(
                    'Now Deliver To Your Door 24/7',
                    style: primaryTextStyle.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
