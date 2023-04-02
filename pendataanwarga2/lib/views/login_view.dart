import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            JudulHalamanLogin(),
            Stack(
              children: [
                CardFromLogin(),
                LogoAplikasi(),
              ],
            )
           
          ],
        ),
      ),
    );
  }
}

class CardFromLogin extends StatelessWidget {
  const CardFromLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.fromLTRB(30, 130, 30, 20),
        color: Color.fromARGB(255, 205, 205, 205),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: [
            SizedBox(height: 30,
            ),
            InputText(),
            SizedBox(
              height: 15,
            ),
            InputText(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, 
            child: Text('Login'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: 
              BorderRadius.circular(15)),
              backgroundColor: Colors.red),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class LogoAplikasi extends StatelessWidget {
  const LogoAplikasi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Image.asset('assets/Logo.png',
          width: 130,
        ),
      ),
    );
  }
}

class InputText extends StatelessWidget {
  const InputText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          isDense: true,
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder()
        ),
      ),
    );
  }
}

class JudulHalamanLogin extends StatelessWidget {
  const JudulHalamanLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Center(
        child: Text(
          'Aplikasi\nPendataan Warga',
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
          ),
      ),
    );
  }
}