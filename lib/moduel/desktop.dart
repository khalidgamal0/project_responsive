import 'package:flutter/material.dart';

class DesktopPlateForm extends StatelessWidget {
  const DesktopPlateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
          Expanded(child: Container(color: Colors.teal,)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('login now with very happy',
                    style:Theme.of(context).textTheme.headline4 ,
                  ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "username",
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "password",
                  ),
                ),
                SizedBox(height: 20,),
                Row(children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      height:35,
                      child: MaterialButton(
                        onPressed:(){},
                        child: Text('login'),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      color: Colors.teal,
                      height:35,
                      child: MaterialButton(
                        onPressed:(){},
                        child: Text('register'),
                      ),
                    ),
                  )
                ],)
              ],),
            ),
          )
        ]),
    );
  }
}
