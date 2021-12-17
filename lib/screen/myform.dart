import 'package:flutter/material.dart';

class Myform extends StatefulWidget {
  const Myform({Key? key}) : super(key: key);

  @override
  _MyformState createState() => _MyformState();
}

class _MyformState extends State<Myform> {
  final firstcontroller = TextEditingController();
  final secondcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  String result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: myAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Form(
          child: Column(
            children: [
              const Text('Adding two numbers', textScaleFactor: 2),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "filed is empty";
                  }
                  return null;
                },
                controller: firstcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'first number:',
                  hintText: '0',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value){
                  if(value==null || value.isEmpty){
                    return "filed is empty";
                  }
                  return null;
                },
                controller: secondcontroller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'first number:',
                  hintText: '0',
                  border: OutlineInputBorder(),
                ),
              ),



              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 40),
                ),
                onPressed: () {
                  if(_formkey.currentState!.validate()){
                    setState(() {
                      int sum
                      result = (())
                    });

                  } 
                },
                child: const Text('sum'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    color: Colors.black,
                    child: const Text(
                      'Result',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

AppBar myAppBar(BuildContext context) {
  return AppBar(
    title: const Text('from example'),
  );
}
