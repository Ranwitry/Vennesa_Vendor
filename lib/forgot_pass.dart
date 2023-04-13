import 'package:flutter/material.dart';

class ForgotsPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 10),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  iconSize: 45,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 25),
                child: Text(
                  "Lupa Kata Sandi",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 48),
                  child: Image.asset(
                    "images/key.png",
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width / 4,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                    "Masukan alamat email kamu dan kami akan mengirim tautan untuk mereset password mu.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontFamily: "NunitoSans")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 25),
                child: Text("Email",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: "NunitoSans")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Masukkan Email",
                      fillColor: Color(0xffF6F9FE),
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 45,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: Text(
                        "Lanjutkan",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: "NunitoSans"),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
