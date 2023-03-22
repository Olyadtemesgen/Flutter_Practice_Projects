import 'package:flutter/material.dart';
import 'dart:async';
import '../blocs/bloc.dart';
import '../blocs/providers.dart';

class LoginScreen extends StatelessWidget{
  Widget build(context){
    final bloc = Provider.of(context);
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: [
             emailTaker(bloc),
            passwordTaker(bloc),
            submit(bloc)
          ]
        ),
      );
  }
  Widget emailTaker(Bloc bloc){
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot){
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: "Email Address",
            hintText: "example@gmail.com",
            errorText: snapshot.hasError ? snapshot.error as String : null,

          ),
        );
      }
    );
  }
  Widget passwordTaker(Bloc bloc){
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot){

        return TextField(

          onChanged: bloc.changepassword,
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "input password char >= 8",
            errorText: snapshot.hasError ? snapshot.error as String : null,
          ),
    
        );
      }
    );
  }
  Widget submit(Bloc bloc){
    
    return Container(
      
      margin:EdgeInsets.only(top: 20.0),
      
      child:
        
        ElevatedButton(
          child: Text("Submit"),
          onPressed: (){
            print("object");
          }
        ),
    );
  }
}