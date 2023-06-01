import 'package:flutter/material.dart';
import 'package:vkyrse/news/news_page.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.11),
          const Image(
            image: AssetImage('assets/images/1.png'),
            height: 350,
            width: 450,
          ),
          Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(29, 29, 29, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45))),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: Center(
                  child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                  const Text('Здравствуй!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontFamily: "Google Sans")),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.035),
                  const Text('Для того чтобы продолжить\nвведите номер группы',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontFamily: "Google Sans"),
                      textAlign: TextAlign.center),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.050),
                  groupNumberInputBox(context),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.035),
                  getStartButton(context)
                ],
              ))),
        ],
      ),
    ));
  }

  SizedBox getStartButton(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.60,
        height: MediaQuery.of(context).size.height * 0.08,
        child: ElevatedButton(
          onPressed: () {
            // ignore: unused_local_variable
            // String groupNum = _controller.text;
            // getDataFromTimeTable();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const NewsPage()));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              )),
          child: const Text('Полетели', style: TextStyle(fontSize: 22)),
        ));
  }

  SizedBox groupNumberInputBox(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.08,
      child: TextField(
          controller: _controller,
          decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              filled: true,
              fillColor: Color.fromRGBO(239, 239, 239, 1))),
    );
  }
}
