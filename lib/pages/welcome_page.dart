import 'package:classproject/pages/login_page.dart';
import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: Stack(
        children:[
          Positioned.fill(
            child: Image.asset("Images/image1.jpg",fit: BoxFit.cover,)
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height : height*0.4,
                  ),
                  Text("Welcome back"),
                  SizedBox(
                    height : height*0.015,
                  ),
                  Text("Enter your details"),
                  SizedBox(
                    height : height*0.4,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      minimumSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>LoginPage()),
                        );
                    },
                     child: Text("Next"))
                ],
              ),
            )
        ],
      ),
    );
  }
}
