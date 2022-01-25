import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Image img = Image.network(
      "https://media.istockphoto.com/photos/feline-picture-id108226626?b=1&k=20&m=108226626&s=170667a&w=0&h=WdJt1gzvrejPXRAs0n9YtgCUlBNwGho1yL5g_TKo9BU=");

  int index = 0;

  topage(int i) {
    setState(() {
      index = i;
    });
  }

  Widget mainpage() {
    Size size = MediaQuery.of(context).size;

    switch (index) {
      case 0:
        return Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "Resumo Financeiro",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Text(
                        "ocultar dados",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w100,
                            color: Colors.black54),
                      ),
                      Icon(
                        Icons.remove_red_eye,
                        color: Colors.black54,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: size.width * 0.55,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          CustomCard(),
                          CustomCard(),
                          CustomCard(),
                          CustomCard()
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.green,
                  width: size.width * 0.27,
                  child: Column(
                    children: [Text("direita")],
                  ),
                )
              ],
            )
          ],
        );

      case 1:
        return Center(child: Text("index 1"));

      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      height: size.height,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: size.height,
            width: size.width * 0.10,
            child: Column(
              children: [
                SizedBox(
                    height: 142,
                    width: 142,
                    child: Image.asset("easylogo.png")),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            topage(0);
                          },
                          icon: const Icon(Icons.home)),
                      const Text(
                        "Home",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            topage(1);
                          },
                          icon: const Icon(
                              Icons.production_quantity_limits_outlined)),
                      const Text(
                        "Vendas",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            topage(1);
                          },
                          icon: const Icon(
                              Icons.production_quantity_limits_outlined)),
                      const Text(
                        "Vendas",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            topage(1);
                          },
                          icon: const Icon(
                              Icons.production_quantity_limits_outlined)),
                      const Text(
                        "Vendas",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffF4F5FB),
                borderRadius: BorderRadius.all(Radius.circular(58))),
            height: size.height,
            width: size.width * 0.88,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        height: 22,
                        width: 22,
                        child: const Icon(
                          Icons.sms_outlined,
                          size: 16,
                        )),
                    const SizedBox(width: 10),
                    Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        height: 22,
                        width: 22,
                        child: const Icon(
                          Icons.notifications_none,
                          size: 16,
                        )),
                    const SizedBox(width: 10),
                    CircleAvatar(backgroundImage: img.image),
                    const SizedBox(width: 10),
                    const Text("Georges Froyd"),
                    const SizedBox(width: 40),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),

                //mainPage

                mainpage()
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(17),
        ),
      ),
      height: 188,
      width: 181,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.monetization_on),
              SizedBox(
                width: 100,
                child: Text("Total das Receitas",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("R\$ 55.235,00",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
            ],
          )
        ],
      ),
    );
  }
}
