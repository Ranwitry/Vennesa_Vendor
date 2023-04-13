import 'package:flutter/material.dart';

class BerandaUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            child: Card(
              elevation: 5,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.red)),
              child: SafeArea(
                top: true,
                bottom: true,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                          colors: [Colors.redAccent, Colors.pink],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft)),
                  margin: EdgeInsets.only(top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: const ListTile(
                          trailing: SizedBox(
                              child: Icon(
                            Icons.contacts_rounded,
                            size: 100,
                            color: Colors.white,
                          )),
                          title: Text(
                            'Moranvan',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              '123456789',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: "NunitoSans"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          "vania",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "NunitoSans"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Menunggu persetujuan mitra",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Image.asset(
                "images/loading.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: Text(
              "Terima kasih. Data anda sudah kami terima. Kami akan memeriksa data anda. Harap ditunggu sebentar.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontFamily: "NunitoSans"),
            ),
          ),
        ]),
      ),
    ));
  }
}
