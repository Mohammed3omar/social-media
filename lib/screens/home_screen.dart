import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.image,
                size: 150,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter info',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.camera_alt,
                    size: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.image,
                    size: 50,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Upload'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
