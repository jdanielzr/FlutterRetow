import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.menu,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "The New York Times",
                          style:
                              TextStyle(fontSize: 37.0, fontFamily: 'Chomsky'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.notifications_none_outlined),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.7,
                indent: 0,
                endIndent: 0,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Update ",
                          style: TextStyle(
                            color: Color.fromARGB(255, 202, 202, 202),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "FEBRUARY 11 at 19:23",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Image.network(
                "https://static01.nyt.com/images/2018/02/11/us/11dc-pelosi/11dc-pelosi-articleLarge.jpg?quality=75&auto=webp",
                height: 270.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TituloNoticia(),
                    DetalleNoticia(),
                    SizedBox(
                      height: 10.0,
                    ),
                    ControlNoticias(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    TituloNoticia(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ControlNoticias extends StatelessWidget {
  const ControlNoticias({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [Text("2h ago")],
          ),
        ),
        Container(
          width: 50,
          child: Row(
            children: [
              Icon(Icons.bookmark_outline_sharp),
            ],
          ),
        ),
        Container(
          width: 50,
          child: Row(
            children: [
              Icon(Icons.ios_share),
            ],
          ),
        ),
      ],
    );
  }
}

class DetalleNoticia extends StatelessWidget {
  const DetalleNoticia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '.',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
        children: <TextSpan>[
          TextSpan(
              text:
                  'A Wide-Ranging Inquiry: The House approved the creation of a committee to scrutinize what Republicans say is the “weaponization” of government against conservatives. ',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(173, 173, 173, 1))),
        ],
      ),
    );
  }
}

class TituloNoticia extends StatelessWidget {
  const TituloNoticia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Pelosi Whants to Win House, but can she Corral the Democrats?",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }
}
