import 'package:flutter/material.dart';
import 'package:vennesa_splash/edit_data_mitra.dart';

class BerandaApprove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: true,
        bottom: true,
        child: ListView(
          children: [ Column
        
          (
            children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30),
              height: MediaQuery.of(context).size.width / 2.2,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  elevation: 5,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        gradient: LinearGradient(
                            colors: [Colors.red.shade900, Colors.pink],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                        image: DecorationImage(
                            image: AssetImage("images/pattern.png"),
                            repeat: ImageRepeat.repeat)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 15, left: 25),
                            child: Icon(
                              Icons.contacts_rounded,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.width / 4,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 35,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 50),
                                      child: Text(
                                        'Moranvan',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 13),
                                      child: Text(
                                        '123456789',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontFamily: "NunitoSans"),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, right: 25),
                                      child: Text(
                                        "vania",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: "NunitoSans"),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Image.asset(
                "images/bermitra.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width / 1.6,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
              child: Container(
                  height: MediaQuery.of(context).size.height / 16,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        side: BorderSide(width: 2, color: Colors.blue),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EditMitraData();
                      }));
                    },
                    child: Text(
                      "Edit Data",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontFamily: "NunitoSans"),
                    ),
                  )),
            )
          ]),
          ]),
      ),
    ));
  }
}
