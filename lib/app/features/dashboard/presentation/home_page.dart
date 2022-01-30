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
          mainAxisAlignment: MainAxisAlignment.start,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.55,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            CustomCard(
                                img: "4.png",
                                title: "Total das Receitas",
                                value: " 55.235",
                                color: Color(0xffEDEDF7),
                                colorBar: Color(0xff4F4CAC)),
                            CustomCard(
                                img: "1.png",
                                title: "Contas à Receber",
                                value: "609.0",
                                color: Color(0xffE6F8FC),
                                colorBar: Color(0xff0DB8DD)),
                            CustomCard(
                                img: "3.png",
                                title: "Contas à Pagar",
                                value: "538.0",
                                color: Color(0xffFFEDED),
                                colorBar: Color(0xffFF4F4D)),
                            CustomCard(
                                img: "2.png",
                                title: "Total das Despesas",
                                value: "39.067",
                                color: Color(0xffFFF6E5),
                                colorBar: Color(0xffFFA200))
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(17)),
                          color: Colors.white,
                        ),
                        width: size.width * 0.55,
                        height: 412,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 30,
                                ),
                                const Text(
                                  "Evolução das vendas por hora",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
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
                            SizedBox(
                                height: 300,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Novo recurso em breve!",
                                      style: TextStyle(
                                          fontSize: 40, color: Colors.black12),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Icon(
                                      Icons.hourglass_bottom,
                                      size: 50,
                                      color: Colors.black12,
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(17)),
                          color: Colors.white,
                        ),
                        width: size.width * 0.55,
                        height: 412,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 30,
                                ),
                                const Text(
                                  "Últimos clientes",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
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
                            SizedBox(
                              height: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Novo recurso em breve!",
                                    style: TextStyle(
                                        fontSize: 40, color: Colors.black12),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(
                                    Icons.hourglass_bottom,
                                    size: 50,
                                    color: Colors.black12,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                //parte direita
                SizedBox(
                  width: size.width * 0.27,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(17))),
                        height: 407,
                        width: 389,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 30,
                                ),
                                const Text(
                                  "Meta do mês",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
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
                              height: 100,
                            ),
                            const Text(
                              "Novo recurso em breve!",
                              style: TextStyle(
                                  fontSize: 30, color: Colors.black12),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Icon(
                              Icons.hourglass_bottom,
                              size: 30,
                              color: Colors.black12,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      //estoque
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(17))),
                        height: 179,
                        width: 389,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                    "pallet.png",
                                    height: 20,
                                  ),
                                ),
                                const Text(
                                  "Estoque",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30.0, right: 15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Itens com estoque baixo",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w100)),
                                        Text("4",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Pedidos à receber hoje",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w100)),
                                        Text("0",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Produtos ativos cadastrados",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w100)),
                                        Text("1.216",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //vendas

                      Container(
                        decoration: const BoxDecoration(
                            color: Color(0xff4E4BAB),
                            borderRadius:
                                BorderRadius.all(Radius.circular(17))),
                        height: 179,
                        width: 389,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                    "sale.png",
                                    height: 20,
                                  ),
                                ),
                                const Text(
                                  "Vendas",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30.0, right: 15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Hoje",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w100)),
                                        Text("R\$ 0,00",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Julho",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w100)),
                                        Text("R\$ 1.502,39",
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Clientes atendidos hoje",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w100)),
                                        Text("5",
                                            style: TextStyle(
                                                fontSize: 24,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      //financeiro

                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(17))),
                        height: 228,
                        width: 389,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                    "calc.png",
                                    height: 20,
                                  ),
                                ),
                                const Text(
                                  "Financeiro",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30.0, right: 15),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Saldo inicial",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w100)),
                                        Text("R\$ 16.953,00",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("A receber",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w100)),
                                        Text("R\$ 150,00",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("A pagar",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w100)),
                                        Text("R\$ 0.00",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Saldo final",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w100)),
                                        Text("R\$ 17.103,28",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        );

      case 1:
        return const Center(child: Text("index 1"));

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
                    height: 142, width: 142, child: Image.asset("ciec.png")),
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
            child: SingleChildScrollView(
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
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
          ),
        ],
      ),
    ));
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key,
      required this.title,
      required this.value,
      required this.img,
      required this.color,
      required this.colorBar})
      : super(key: key);

  final String title;
  final String value;
  final String img;
  final Color color;
  final Color colorBar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100))),
                    child: Image.asset(
                      img,
                      height: 47,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Text(title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("R\$ ${value.toString()}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: colorBar,
                    borderRadius: const BorderRadius.all(Radius.circular(4.6))),
                height: 9,
                width: 144,
              ),
            )
          ],
        ),
      ),
    );
  }
}
