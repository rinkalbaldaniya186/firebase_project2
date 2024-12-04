import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildEmailFormField(),
              SizedBox(
                height: 24,
              ),
              buildPasswordFormField(),
              SizedBox(
                height: 24,
              ),
              buildForgetPasswordWidget(context),
              SizedBox(
                height: 24,
              ),
              buildLoginButtonWidget(),
            ],
          ),
        )
    );
  }


  buildEmailFormField() {
    return TextFormField(
    //  controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Email address',
     //   errorText: errorPassword,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }

  buildPasswordFormField() {
    return TextFormField(
    //  controller: _passwordController,
      keyboardType: TextInputType.text,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: 'Enter password',
     //   errorText: errorPassword,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }

  buildForgetPasswordWidget(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {

        },
        child: Text(
          "Forget Password",
          style: TextStyle(
            decoration: TextDecoration.underline
          ),
        ),
      ),
    );
  }

  buildLoginButtonWidget() {
    return MaterialButton(
      color: Colors.green,
      minWidth: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      onPressed: () {
       String email = _emailController.text.toString().trim();
       String password = _passwordController.text.toString().trim();

       //reset focus
       //  errorEmail = null;
       //  errorPassword = null;
       //
       //  if(email.isEmpty || Utils.isValidEmail(email)){
       //    // show error on email
       //    setState(() {
       //      errorEmail = "Enter valid email";
       //    });
       //  }else if (utils.isValidPassword(password)){
       //    // show error on password
       //    setState(() {
       //      errorEmail = "Enter valid password";
       //    });
       //  }
      },
      child: Text("Sign In", style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),),
    );
  }

}