import 'package:flutter/material.dart';
import '../register/Register.dart';
import 'package:login_app/shared/components/components.dart';

class Mylogin extends StatefulWidget {
  @override
  _MyloginState createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  var EmailController = TextEditingController();

  var PasswordController = TextEditingController();

  var formKey=GlobalKey<FormState>();

  bool isObsecured=true;

  void goToRegister(BuildContext ctx, int n) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      if (n == 1) return Register();
      return Mylogin();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultFormFeild(
                      validatorText:'Email Address must not be empty',
                      emailController: EmailController,
                      inputType: TextInputType.emailAddress,
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: 'Email Address'), //EMAIL
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultFormFeild(
                      validatorText:'password must not be Empty',
                      emailController: PasswordController,
                      inputType: TextInputType.visiblePassword,
                      isObsecured: isObsecured,
                      prefixIcon: Icon(Icons.lock_rounded),
                      suffixIcon:IconButton(
                          icon: isObsecured?Icon(Icons.visibility):Icon(Icons.visibility_off),
                          onPressed: (){
                            setState(() {
                              isObsecured=!isObsecured ;
                            });
                          }),
                      labelText: 'Password'), //PASSWORD
                  SizedBox(height: 20),
                  defaultButton(
                      string: 'login',
                      function: () {
                        if(formKey.currentState.validate()){
                          print(EmailController.text);
                          print(PasswordController.text);
                        }

                      }),
                  SizedBox(height: 15), //Login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account ?',
                        style: TextStyle(fontSize: 17),
                      ),
                      TextButton(
                          onPressed: () {
                            goToRegister(context, 1);
                          },
                          child: Text(
                            'Register now ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ), //Register
                  SizedBox(height: 15),

                  //Register
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
