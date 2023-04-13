import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vennesa_splash/mitra_update_data.dart';

class HomePages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red,
          actions: <Widget>[
            Row(
              children: [
                Text("keluar"),
                IconButton(
                  icon: Icon(Icons.logout_sharp),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                )
              ],
            ),
          ]),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              child: Text(
                "Klik tombol di bawah ini untuk pengisian data mitra!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20.0),
              child: Container(
                  width: 100,
                  height: 40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        side: BorderSide(width: 2, color: Colors.blue),
                        shape: StadiumBorder(),
                        backgroundColor: Color(0xffffffff)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MitraData();
                      }));
                    },
                    child: Text(
                      "Klik di sini",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
            ),
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Image.asset(
                  "images/home.png",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: Text(
                "Silahkan lakukan pengisian data mitra untuk dapat bergabung sebagai mitra kami",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontFamily: "NunitoSans"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
