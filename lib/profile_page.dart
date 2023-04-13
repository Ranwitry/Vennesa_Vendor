import 'package:flutter/material.dart';
import 'package:vennesa_splash/logout_page.dart';
import 'package:vennesa_splash/ubah_password.dart';

class ProfilePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          bottom: true,
          top: true,
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Image.asset(
                    "images/shapeprofil.png",
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 55, left: 30, right: 30),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_a_photo),
                            iconSize: 50,
                            color: Colors.red,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text("Hi, Moranvan Kisel!",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Nunito",
                              )),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Nama Perusahaan ",
                      style: TextStyle(fontSize: 14, fontFamily: "Nunito"),
                    ),
                    Text("Moranvan Kisel",
                        style: TextStyle(fontSize: 14, fontFamily: "Nunito")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Email",
                      style: TextStyle(fontSize: 14, fontFamily: "Nunito"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text("moranvankisel@gmail.com",
                          style: TextStyle(fontSize: 14, fontFamily: "Nunito")),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 65),
                      child: Text(
                        "No Telp",
                        style: TextStyle(fontSize: 14, fontFamily: "Nunito"),
                      ),
                    ),
                    Text("081234567890",
                        style: TextStyle(fontSize: 14, fontFamily: "Nunito")),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 65),
                      child: Text(
                        "Wilayah",
                        style: TextStyle(fontSize: 14, fontFamily: "Nunito"),
                      ),
                    ),
                    Text("Jakarta Selatan",
                        style: TextStyle(fontSize: 14, fontFamily: "Nunito")),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25, left: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UbahPassword();
                        }));
                      },
                      child: Text("Ubah Password",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "NunitoSans")),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Container(
                    height: MediaQuery.of(context).size.height / 18,
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LogoutPage();
                        }));
                      },
                      child: Text(
                        "Keluar",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: "NunitoSans"),
                      ),
                    )),
              )
            ],
          )),
    );
  }
}
