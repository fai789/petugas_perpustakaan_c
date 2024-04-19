import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E31DD),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Form(
              key: controller.formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 200,
                      height: 200,
                    ),
                    SizedBox(height: 50.0),
                    Text(
                      "LOGIN", // Tambahkan judul di sini
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0, // Sesuaikan ukuran font sesuai kebutuhan Anda
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 40.0),
                    TextFormField(
                        controller: controller.usernameController,
                        decoration: InputDecoration(
                          hintText: "Masukan Username",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        validator: (value) {
                          if (value!.length < 2) {
                            return "Username tidak boleh kosong";
                          }
                          return null;
                        }),
                    SizedBox(height: 15.0),
                    TextFormField(
                      controller: controller.passwordController,
                      obscureText: true, // Mengatur untuk menyembunyikan teks
                      decoration: InputDecoration(
                        hintText: "Masukan Password",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password tidak boleh kosong";
                        }
                        return null;
                      },
                    )
                    ,
                    SizedBox(height: 15.0),
                    Obx(() => controller.loading.value
                        ? CircularProgressIndicator()
                        : ElevatedButton(
                        onPressed: () {
                          controller.login();
                        },
                        child: Text("Login"))),
                    SizedBox(height: 15.0),
                  ])),
        ),
      ),
    );
  }
}
