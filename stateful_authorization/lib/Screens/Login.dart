import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}
class LoginPageState extends State<LoginPage>{
  
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  Widget build(context){
    
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 60.0, 6.0, 0),
     
      child: Form(
         key: formKey,
        child: Column(
          children: [
            emailTaker(),
            passwordTaker(),
            submit()
          ]
        ),
      ),
    );
  }
  Widget emailTaker(){
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email Address",
        hintText: "example@gmail.com"
      ),
      validator: (value){
        if (value!.isEmpty || !value.contains("@")){
          return "Please enter the valid email";
        }
      },
      onSaved: (newValue) => email = newValue!,
    );
  }
  Widget passwordTaker(){
    return TextFormField(

      
      obscureText: true,
      
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "input password char >= 8",
      ),
      
      validator: (value){
        
        if (value!.isEmpty || value.length < 8){
          return "The password is not valid";
        }
        
        return null;
      },
      onSaved: (newValue) => password = newValue!
    );
  }
  Widget submit(){
    
    return Container(
      
      margin:EdgeInsets.only(top: 20.0),
      
      child:
        
        ElevatedButton(
          child: Text("Submit"),
          onPressed: (){
            formKey.currentState?.validate();
            formKey.currentState?.save();
            print({"email":email, "password":password});
          }
        ),
    );
  }
}
