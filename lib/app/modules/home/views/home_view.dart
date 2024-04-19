import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C77E9),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 76,
              decoration: BoxDecoration(
                color: Colors.blue[500],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(19.0),
                  bottomRight: Radius.circular(19.0),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/logo.png',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Intelectual',
                          style: TextStyle(
                            fontFamily: 'Candal',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Nexus Library',
                          style: TextStyle(
                            fontFamily: 'Candal',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HOME',
                    style: TextStyle(
                      fontFamily: 'Candal',
                      color: Color(0xFF24D8E3),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 120), // Add some spacing
        Column(
            children: [
              Image.asset(
                'assets/book.png',
                height: 130,
                width: 130,
              ),
            ElevatedButton(onPressed : ()=>Get.toNamed(Routes.BOOK), child: Text("Buku"))
              ],),
            SizedBox(height: 150),
        Column(
            children: [
              Image.asset(
                'assets/borrow.png',
                height: 130,
                width: 130,
              ),
            ElevatedButton(onPressed : ()=>Get.toNamed(Routes.PEMINJAMAN), child: Text("Peminjaman"))
              ],),
          ]
        ),
      ),
    );
  }
}
