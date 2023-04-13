import 'package:flutter/material.dart';

import 'package:vennesa_splash/beranda_awal.dart';
import 'package:vennesa_splash/forgot_pass.dart';

import 'package:vennesa_splash/regist.dart';
import 'package:form_field_validator/form_field_validator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginsPage extends StatefulWidget {
  const LoginsPage({Key? key}) : super(key: key);
  @override
  _LoginsPageState createState() => _LoginsPageState();
}

class _LoginsPageState extends State<LoginsPage> {
  bool _isHidden = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //key: _formKey,
        backgroundColor: Color(0xffE84444),
        body: SafeArea(
          top: true,
          bottom: true,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 25),
                  child: Text(
                    "Selamat Datang!",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 25),
                  child: Text(
                    "Silahkan masuk untuk dapat melanjutkan",
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontFamily: "Nunito"),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Image.asset(
                      "images/imagelogin.png",
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.width / 2,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Stack(
                        children: <Widget>[
                          Image.asset("images/persegi3.png"),
                          Form(
                            key: _formKey,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, left: 30),
                                      child: Text(
                                        "Email",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: "NunitoSans"),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 30, left: 30),
                                    child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      keyboardType: TextInputType.emailAddress,
                                      validator: MultiValidator([
                                        RequiredValidator(
                                            errorText: "*Wajib diisi"),
                                        EmailValidator(
                                            errorText: "Email tidak valid"),
                                      ]),
                                      decoration: InputDecoration(
                                        hintText: 'Masukan Email',
                                        fillColor: Color(0xffF6F9FE),
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35, left: 30),
                                      child: Text(
                                        "Kata Sandi",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: "NunitoSans"),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 30, left: 30),
                                    child: TextFormField(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: MultiValidator([
                                        RequiredValidator(
                                            errorText: "*Wajib diisi"),
                                        MinLengthValidator(6,
                                            errorText:
                                                "Kata sandi minimal 6 karakter"),
                                        MaxLengthValidator(15,
                                            errorText:
                                                "Kata sandi tidak boleh melebihi 15 karakter")
                                      ]),
                                      obscureText: _isHidden,
                                      decoration: InputDecoration(
                                        hintText: 'Masukan Kata Sandi',
                                        suffixIcon: IconButton(
                                          icon: Icon(_isHidden
                                              ? Icons.visibility_off
                                              : Icons.visibility),
                                          onPressed: () {
                                            setState(() {
                                              _isHidden = !_isHidden;
                                            });
                                          },
                                        ),
                                        fillColor: Color(0xffF6F9FE),
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      ),
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, left: 30.0),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return ForgotsPassword();
                                        }));
                                      },
                                      child: Text("Lupa Kata Sandi",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "NunitoSans")),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 30, left: 30),
                                    child: Container(
                                        margin: EdgeInsets.only(top: 40.0),
                                        width: 350,
                                        height: 45,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor:
                                                  Color(0xffE84444),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20))),
                                          onPressed: () {
                                            if (!_formKey.currentState!
                                                .validate()) {
                                              return;
                                            }

                                            Navigator.pushReplacement(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return HomePages();
                                            }));
                                          },
                                          child: Text(
                                            "Masuk",
                                            style: TextStyle(
                                                color: Color(0xffffffff),
                                                fontSize: (16.0),
                                                fontFamily: "NunitoSans"),
                                          ),
                                        )),
                                  ),
                                  SafeArea(
                                    top: false,
                                    bottom: true,
                                    child: Container(
                                        width: 350,
                                        height: 45,
                                        margin: EdgeInsets.only(
                                            top: 20, right: 30, left: 30),
                                        child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                              backgroundColor:
                                                  Color(0xffffffff),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20))),
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return RegistPage();
                                            }));
                                          },
                                          child: Text(
                                            "Daftar Baru",
                                            style: TextStyle(
                                                color: Color(0xff2693F8),
                                                fontSize: (16.0),
                                                fontFamily: "NunitoSans"),
                                          ),
                                        )),
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
