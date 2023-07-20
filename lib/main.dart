import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OutFit(),
    );
  }
}

class OutFit extends StatefulWidget {
  const OutFit({super.key});

  @override
  State<OutFit> createState() => _OutFitState();
}

class _OutFitState extends State<OutFit> {
  Color _iconColor = Colors.white;
  Map<String, Color> _iconColors = {
    "1": Colors.white,
    "2": Colors.white,
    "3": Colors.white,
    "4": Colors.white,
    "5": Colors.white,
    "6": Colors.black,
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: Color.fromARGB(255, 202, 202, 7),
              child: Stack(children: [
                Row(
                  children: [
                    IconButton(
                        color: _iconColors["1"],
                        onPressed: () {
                          setState(() {
                            _iconColors["1"] = Colors.red;
                          });
                        },
                        icon: Icon(
                          Icons.chevron_left_rounded,
                          size: 50,
                        )),
                    Spacer(),
                    IconButton(
                        color: _iconColors["2"],
                        onPressed: () {
                          setState(() {
                            _iconColors["2"] = Colors.red;
                          });
                        },
                        icon: Icon(
                          Icons.search,
                          size: 30,
                        )),
                    IconButton(
                        color: _iconColors["3"],
                        onPressed: () {
                          setState(() {
                            _iconColors["3"] = Colors.red;
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          size: 30,
                        )),
                    IconButton(
                        color: _iconColors["4"],
                        onPressed: () {
                          setState(() {
                            _iconColors["4"] = Colors.red;
                          });
                        },
                        icon: Icon(
                          Icons.shopping_cart,
                          size: 30,
                        )),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 200,
                    ),
                    child: Image.asset(
                      'asset/3.png',
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: Text(
                      'Fashion',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text('New Product',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text('View More >',
                      style: TextStyle(
                          color: Color(0xFF9E9E9E),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'asset/1.jpg',
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width * 0.8,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Clothes',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold)),
                              Text('100\$',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 50,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              IconButton(
                                  color: _iconColors["5"],
                                  onPressed: () {
                                    setState(() {
                                      _iconColors["5"] = Colors.red;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.favorite_border,
                                    size: 50,
                                  )),
                              Spacer(),
                              CircleAvatar(
                                radius: 25,
                                child: IconButton(
                                    color: _iconColors["6"],
                                    onPressed: () {
                                      setState(() {
                                        _iconColors["6"] = Colors.red;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.shopping_cart,
                                      size: 30,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Center(
            //   child: Container(
            //   //  height: MediaQuery.of(context).size.height * 0.4,
            //     //  width: MediaQuery.of(context).size.width * 0.8,
            //     child: Padding(
            //       padding: const EdgeInsets.only(left: 0.0),
            //       child: Stack(
            //         children: [
            //           ClipRRect(
            //             borderRadius: BorderRadius.circular(8.0),
            //             child: Image.asset(
            //               'asset/1.jpg',
            //               height: MediaQuery.of(context).size.height * 0.4,
            //               width: MediaQuery.of(context).size.width * 0.8,
            //               fit: BoxFit.fill,
            //             ),
            //           ),
            //           Row(
            //             //   crossAxisAlignment: CrossAxisAlignment.end,
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Align(
            //                 alignment: Alignment.bottomLeft,
            //                 child: Column(
            //                   crossAxisAlignment: CrossAxisAlignment.end,
            //                   mainAxisAlignment: MainAxisAlignment.end,
            //                   children: [
            //                     Text('Clothes',
            //                         style: TextStyle(
            //                             color: Colors.white,
            //                             fontSize: 20,
            //                             fontWeight: FontWeight.bold)),
            //                     Text('\n100\$',
            //                         style: TextStyle(
            //                             color: Colors.white,
            //                             fontSize: 30,
            //                             fontWeight: FontWeight.bold)),
            //                   ],
            //                 ),
            //               ),
            //               Align(
            //                 alignment: Alignment.bottomRight,
            //                 child: IconButton(
            //                     onPressed: () {},
            //                     icon: Icon(
            //                       Icons.shopping_cart,
            //                       size: 30,
            //                       color: const Color.fromARGB(255, 240, 49, 49),
            //                     )),
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
