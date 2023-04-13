import 'package:flutter/material.dart';
import 'package:vennesa_splash/home_update.dart';

class EditMitraData extends StatefulWidget {
  @override
  _EditMitraDataState createState() => _EditMitraDataState();
}

class _EditMitraDataState extends State<EditMitraData> {
  final GlobalKey<FormState> _EditmitraKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Edit Data Mitra",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
            FocusScope.of(context).requestFocus(new FocusNode());
          },
        ),
      ),
      body: SafeArea(
        bottom: true,
        top: true,
        child: ListView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: <Widget>[
              Form(
                key: _EditmitraKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
               
                    Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: Text("Nama NPWP",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NunitoSans"))),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        initialValue: "Moranvan",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "*Waib diisi";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: "Masukkan Nama NPWP",
                            fillColor: Color(0xffF6F9FE),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: Text("No. NPWP",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NunitoSans"))),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        initialValue: "123456789",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '*Wajib diisi ';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Masukkan Nomor NPWP",
                            fillColor: Color(0xffF6F9FE),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: Text("Nama Bank",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NunitoSans"))),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        initialValue: "BNI",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '*Wajib diisi ';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            fillColor: Color(0xffF6F9FE),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: Text("No. Rekening",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NunitoSans"))),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        initialValue: "01234567890",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '*Wajib diisi ';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            fillColor: Color(0xffF6F9FE),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: Text("PIC PO",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NunitoSans"))),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        initialValue: "Morrin",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '*Wajib diisi ';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            fillColor: Color(0xffF6F9FE),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: Text("PIC Mitra",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NunitoSans"))),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        initialValue: "Vania",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '*Wajib diisi ';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            fillColor: Color(0xffF6F9FE),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: Text("Jabatan PIC Mitra",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NunitoSans"))),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        initialValue: "Magang",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '*Wajib diisi ';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            fillColor: Color(0xffF6F9FE),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: Text("Alamat Lengkap",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "NunitoSans"))),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        initialValue: "Pasar Minggu",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "*Wajib diisi";
                            {}
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            fillColor: Color(0xffF6F9FE),
                            filled: true,
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
                              if (!_EditmitraKey.currentState!.validate()) {
                                return;
                              }

                              _editmitra(context);
                            },
                            child: Text(
                              "Kirim",
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: (16.0),
                                  fontFamily: "NunitoSans",
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    ));
  }

  void _editmitra(context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) => AlertDialog(
              elevation: 24,
              title: const Text(
                "Perubahan Data Mitra",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: "NunitoSans"),
              ),
              content: const Text(
                "Apakah data yang anda perbarui sudah sesuai? ",
                style: TextStyle(fontFamily: "NunitoSans"),
              ),
              actions: <Widget>[
                TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Color(0xffE5E5E5)),
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: const Text("Batal",
                      style: TextStyle(
                          fontFamily: "NunitoSans", color: Colors.black)),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xffE84444)),
                    onPressed: () {
                      int count = 0;
                      Navigator.popUntil(context, (route) {
                        return count++ == 2;
                      });
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    child: const Text('OK',
                        style: TextStyle(
                            fontFamily: "NunitoSans", color: Colors.black)))
              ],
            ));
  }
}
