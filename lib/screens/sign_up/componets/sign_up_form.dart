import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

  var gender = 'male';

  final _formKey = GlobalKey<FormState>();

  String? _fName, _lName, _contact, _email, _password;
  String? address = '', dob = '', userType = '';

  final _passController = TextEditingController();

  Future _selectDate() async{
    var pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          buildNameFormField(),
          SizedBox(
            height: 20,
         ),
          buildEmailFormField(),
          SizedBox(
            height: 20,
          ),
          buildContactFormField(),
          SizedBox(
            height: 20,
          ),
          buildGenderSelectionWidget(),
        ],
      ),
    );
  }

  buildNameFormField() {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: TextFormField(
                keyboardType: TextInputType.name,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'First Name';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (newValue){
                  _fName = newValue;
                },
                decoration: InputDecoration(
                  labelText: "First Name",
                  hintText: "First Name",
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
              )
          ),
          SizedBox(width: 16),
          Expanded(
              child: TextFormField(
                keyboardType: TextInputType.name,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Last Name';
                  }
                  else{
                    return null;
                  }
                },
                onSaved: (newValue){
                  _lName = newValue;
                },
                decoration: InputDecoration(
                  labelText: "Last Name",
                  hintText: "Last Name",
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
              )
          ),
        ],
      ),
    );
  }

  buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (value){
        if(value == null || value.isEmpty ){
          return "Enter valid email";
        }else{
          return null;
        }
      },
      onSaved: (newValue){
        _email = newValue;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Email address",
        floatingLabelBehavior: FloatingLabelBehavior.auto,
       // suffixIcon: CustomSuffixIcon('assets/icons/Mail.svg');
      ),
    );
  }

  buildContactFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      // validator: (value) {
      //   if(value == null || value.isEmpty || value.length != 10){
      //     return 'Enter Valid Contact';
      //   }else{
      //     return null;
      //   }
      // },
      // onSaved: (newValue){
      //   _contact = newValue;
      // },
      decoration: InputDecoration(
        labelText: "Contact",
        hintText: "Contact",
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        // suffixIcon: CustomSuffixIcon('assets/icons/Mail.svg');
      ),
    );
  }

  buildGenderSelectionWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
        Text('Gender'),
        Expanded(
          child: Row(
            children : [
              Radio(
                value: 'male',
                groupValue: gender,
                onChanged: (value){}
                ),
              Text('Male'),
            ]
          )
        ),
        Expanded(
          child: Row(
            children : [
              Radio(
                value: 'female',
                groupValue: gender,
                onChanged: (value){}
              ),
              Text('Female'),
             ]
          )
        ),
        ],
      ),
    );
  }

}
