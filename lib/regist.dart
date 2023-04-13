import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:vennesa_splash/login_page.dart';

class RegistPage extends StatefulWidget {
  @override
  _RegistPageState createState() => _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
  final GlobalKey<FormState> _registKey = GlobalKey<FormState>();

  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Registrasi",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: "Poppins")),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Form(
          key: _registKey,
          child: ListView(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 25, left: 15),
                  child: Text(
                    "Isi data untuk pendaftaran sebagai Mitra",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Nunito"),
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 30, left: 25),
                  child: Text("Nama Perusahaan",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "NunitoSans"))),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '*Wajib diisi ';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Masukkan Nama Perusahaan",
                      fillColor: Color(0xffF6F9FE),
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 25, left: 25),
                  child: Text("No. Telp",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "NunitoSans"))),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '*Wajib diisi ';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Masukkan No. Telp",
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      fillColor: Color(0xffF6F9FE),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 25, left: 25),
                  child: Text("Email",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "NunitoSans"))),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "*Wajib diisi"),
                    EmailValidator(errorText: "Email tidak valid"),
                  ]),
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
                  padding: EdgeInsets.only(top: 25, left: 25),
                  child: Text("Wilayah",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "NunitoSans"))),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '*Wajib diisi ';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Pilih Wilayah",
                      fillColor: Color(0xffF6F9FE),
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
              
                          
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Container(
                    margin: EdgeInsets.only(top: 30.0, bottom: 30),
                    width: 350,
                    height: 45,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xffE84444),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        if (!_registKey.currentState!.validate()) {
                          return;
                        }
                        int count = 0;
                        Navigator.popUntil(context, (route) {
                          return count++ == 1;
                        });

                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginsPage();
                        }));
                      },
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: (16.0),
                            fontFamily: "NunitoSans"),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),

    ));

    
  }
}
