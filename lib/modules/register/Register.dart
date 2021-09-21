import 'package:flutter/material.dart';
import '../login/Mylogin.dart';
import 'package:login_app/shared/components/components.dart';
var EmailController=TextEditingController();
var PasswordController=TextEditingController();

void goToRegister(BuildContext ctx,int n){
  Navigator.of(ctx).push(MaterialPageRoute(
      builder: (_){
        if(n==1) return Register();
        return Mylogin();
      }
  )
  );
}


class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:Center(
          child: SingleChildScrollView (
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Register',
                  style:TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ) ,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'Name ',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),

                  ),
                ),//Name
                SizedBox(height: 15,),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),

                  ),
                ),//Phone
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: EmailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),

                  ),
                ),//EMAIL
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: PasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                  ),

                ),//PASSWORD
                SizedBox(
                    height:20),
                defaultButton(
                    string: 'Register',
                    function: (){
                      print(EmailController);
                    }),
                SizedBox(
                    height:15),//Login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Do you have an account ?',
                      style: TextStyle(fontSize: 17),
                    ),
                    TextButton(
                        onPressed:(){goToRegister(context,2);},
                        child:
                        Text(
                          'Login Now',
                          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                        )
                    )
                  ],
                ),//Register
                SizedBox(
                    height:15),

                //Register
              ],
            ),
          ),
        ),
      ),


    );
  }
}
