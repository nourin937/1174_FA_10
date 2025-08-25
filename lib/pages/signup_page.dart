import 'package:flutter/material.dart';
import 'package:classproject/pages/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("Images/image1.jpg", fit: BoxFit.cover,)
            ),
            Positioned(
              top: 40,
              left: 10,
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                 icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,)
                 ),
            ),
            Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height:100,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)
                        )
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: height*0.025,
                          ),
                          Text("Get Started",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.purple),
                          ),
                          SizedBox(
                            height : height*0.05,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )
                            ),
                          ),
                          SizedBox(
                            height: height*0.025,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )
                            ),
                          ),
                          SizedBox(
                            height: height*0.025,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: "Confirm Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )
                            ),
                          ),
                          SizedBox(
                            height: height*0.05,
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
                            onPressed: (){},child: Text("Sign Up"),
                            ),
                            SizedBox(
                              height: height*0.015,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account?"),
                                TextButton(onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context)=>LoginPage()),
                                    );
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.purple, 
                                  ),
                                 child: Text("Sign In"))
                              ],
                              )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    ) ;
  }
}