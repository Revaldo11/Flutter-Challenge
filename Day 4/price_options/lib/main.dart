import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedItem = -1;
  @override
  Widget build(BuildContext context) {
    Widget priceOption({active, title, subtitle, price}) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedItem = active;
          });
        },
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                  color: selectedItem == active
                      ? Color(0xff16B238)
                      : Color.fromARGB(255, 11, 17, 71),
                  width: 2)),
          child: Column(
            children: [
              Row(
                children: [
                  selectedItem == active
                      ? Image.asset(
                          'images/select.png',
                          width: 20,
                          height: 20,
                        )
                      : Image.asset(
                          'images/unselect.png',
                          width: 20,
                          height: 20,
                        ),
                  SizedBox(
                    width: 14,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: titleOption),
                      Text(subtitle, style: subTitleOption),
                    ],
                  ),
                  Spacer(),
                  Text(price, style: priceText)
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget checkout() {
      void showToastMessage(String message) {
        Fluttertoast.showToast(
            msg: "Chechout Button Pressed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            // timeInSecForIosWeb: 1,
            // backgroundColor: Colors.,
            textColor: Colors.white,
            fontSize: 16.0);
      }

      return Column(
        children: [
          Container(
            height: 50,
            width: 320,
            decoration: BoxDecoration(
              color: greenColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: () {
                selectedItem;
                showToastMessage("");
              },
              child: Text(
                'Checkout Now',
                style: buttonText,
              ),
            ),
          ),
        ],
      );
    }

    Widget header() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 47.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Image.asset(
                'images/img_header.png',
                width: 245,
                height: 205,
              ),
            ),
            Text(
              'PRO',
              style: title,
            ),
            Text(
              'Go unlock for all features',
              style: subTitle,
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  header(),
                  SizedBox(
                    height: 20,
                  ),
                  priceOption(
                    active: 0,
                    title: 'Montly',
                    subtitle: 'Student Starting',
                    price: '\$10',
                  ),
                  priceOption(
                    active: 1,
                    title: 'Quartenly',
                    subtitle: 'Focus on building',
                    price: '\$50',
                  ),
                  priceOption(
                    active: 2,
                    title: 'Yearly',
                    subtitle: 'Bussines planning',
                    price: '\$100',
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  selectedItem == -1 ? SizedBox() : checkout(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
