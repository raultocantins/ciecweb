import 'package:flutter/material.dart';
import 'package:indexed/indexed.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Indexer(
          children: [
            Indexed(
              index: 200,
              child: Positioned(
                top: 10,
                left: 20,
                child: Image.asset(
                  "easylogo.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Indexed(
              index: 200,
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  height: 414,
                  width: 366,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 292,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Email",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal)),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(border: OutlineInputBorder()),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 292,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Password",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal)),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                  border: OutlineInputBorder()),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 292,
                        height: 38,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                            color: Color(0xff4F4CAC)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("/home");
                          },
                          child: const Text(
                            "Acessar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // SizedBox(
                      //   width: 292,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Checkbox(value: false, onChanged: (t) {}),
                      //       const Text("Lembrar conta")
                      //     ],
                      //   ),
                      // ),
                      SizedBox(
                        width: 292,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Se inscrever",
                                  style: TextStyle(fontSize: 10),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text("Esqueceu da senha?",
                                    style: TextStyle(fontSize: 10))),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Indexed(
                index: 100,
                child: Row(
                  children: [
                    SizedBox(
                      height: size.height,
                      width: size.width * 0.5,
                      child: Stack(
                        fit: StackFit.passthrough,
                        children: [
                          Image.asset(
                            "loginuser.png",
                            fit: BoxFit.cover,
                          ),
                          Container(
                            height: size.height,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.white70,
                                  Color.fromRGBO(79, 76, 172, 70)
                                ],
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 30,
                            left: 20,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text.rich(
                                TextSpan(
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    text: "Bem vindo à ",
                                    children: [
                                      TextSpan(
                                        text: "Easy Gestão Comercial",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height,
                      width: size.width * 0.5,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 50,
                            right: -100,
                            child: SizedBox(
                              height: 408,
                              width: 436,
                              child: Image.asset(
                                "Rectangle.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 130,
                            right: -200,
                            child: SizedBox(
                              height: 408,
                              width: 436,
                              child: Image.asset(
                                "Rectangle.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 20,
                            right: 20,
                            child: Text(
                                "Copyright © 2022. Todos os direitos reservados."),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
