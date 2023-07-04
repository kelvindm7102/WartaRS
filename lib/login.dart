import 'package:flutter/material.dart';
import 'package:wartars/home/main.dart';
import 'package:wartars/signup.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/login.png"), 
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Image.asset("assets/images/logo.png"),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Masuk", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),),
                 const SizedBox(height: 8.0,),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(width: 2, color: Colors.grey.shade300), //<-- SEE HERE
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        borderSide: const BorderSide(width: 2, color: Colors.black)
                      ),
                      hintText: 'Enter your email',
                    ),
                  ),
                  const SizedBox(height: 21,),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28),
                          borderSide: BorderSide(width: 2, color: Colors.grey.shade300), //<-- SEE HERE
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        borderSide: const BorderSide(width: 2, color: Colors.black)
                      ),
                      hintText: 'Enter your Password',
                    ),
                  ),
                  const SizedBox(height: 21,),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(1, 135, 203, 100)),),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text("Masuk", style: TextStyle(color: Colors.white),),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(context, 
                              MaterialPageRoute(builder: (context) => const HomePages()),
                            ) ;
                          },
                        ),
                      ),
                      const SizedBox(width: 11,),
                      ElevatedButton(
                          style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(125, 211, 255, 71)),),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text("Daftar", style: TextStyle(color: Colors.white),),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(context, 
                              MaterialPageRoute(builder: (context) => const SignUp()),
                            ) ;
                          },
                        ),
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}