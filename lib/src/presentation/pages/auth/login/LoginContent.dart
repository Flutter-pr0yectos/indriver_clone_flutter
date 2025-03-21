import 'package:flutter/material.dart';
import 'package:indriver_clone_flutter/src/presentation/widgets/DefaultTextField.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 12, 38, 145),
                Color.fromARGB(255, 34, 156, 249)
              ]
            ),
          ),
          padding: EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 50),
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
        Container(                                      
          margin: EdgeInsets.only(left: 60, bottom: 60),                    
          decoration: BoxDecoration(
            // color:  Color.fromARGB(255, 37, 70, 97),  
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 14, 29, 166),
                Color.fromARGB(255, 30, 112, 227)
              ]
            ),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(35), bottomLeft: Radius.circular(35))
          ),
          child: Container(                        
            margin: EdgeInsets.only(
              left: 25,
              right: 25
            ),            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "back...",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/img/car.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                DefaultTextField(text: 'Email', icon: Icons.email_outlined),
                DefaultTextField(text: 'password', icon: Icons.lock_outline),
                Spacer(),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,                 
                  margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white
                    ),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.cyan,
                        fontSize: 19,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 25,
                      height: 1,
                      color: Colors.white,
                      margin: EdgeInsets.only(right: 5),
                    ),
                    Text(
                      'O',
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 17
                      ),
                    ),
                    Container(
                      width: 25,
                      height: 1,
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 5),
                    )
                  ],
                ),   
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'No tienes cuenta?',
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 17
                      ),
                    ),
                    SizedBox(width: 7),
                    Text(
                      'Registrate',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50)        
              ],
            ),
          ),
        ),
      ],
    );
  }
}