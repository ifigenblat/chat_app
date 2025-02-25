import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void loginUser(){
   print('Login successful!');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(onPressed: () {
          print('Button clicked');
        }
        ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
            Text(
              textAlign: TextAlign.center,
              'Let\'s sign you in!',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5
              ),
            ),
              Center(child: Text('Welcome back! \n you\'ve been missed!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.blueGrey))),
            Image.network('https://3009709.youcanlearnit.net/Alien_LIL_131338.png', height: 200),
              // Container(
              //   height: 150,
              //   width: 150,
              //   //child: FlutterLogo(),
              //   padding: EdgeInsets.all(10),
              //   margin: EdgeInsets.all(50),
              //   decoration: BoxDecoration(
              //       image: DecorationImage(image: NetworkImage('https://3009709.youcanlearnit.net/Alien_LIL_131338.png')),
              //       color: Colors.blue, borderRadius: BorderRadius.circular(24)),
              // )
              ElevatedButton(onPressed: (){
                loginUser();
                print('Clicked!');
              }, child: Text('Click Me!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300 )),
                ),
            //  OutlinedButton(onPressed: (){}, child: FlutterLogo()),
              GestureDetector(
                onTap: (){
                  //todo: Naviaget to browser
                  print('Link clicked!');
                },
                child: Column(
                  children: [
                    Text('Find us on'),
                    Text('https://poojabhaumik.com'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}