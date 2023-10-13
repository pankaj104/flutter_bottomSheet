import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.vertical(top: Radius.circular(25.0))),
                  backgroundColor: Colors.grey,
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => Padding(
                    padding: EdgeInsets.only(top: 20,  right: 20,  left: 20,
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Center(
                          child: Text(
                            'Login',
                          ),
                        ),
                        SizedBox( height: 8.0),
                        TextField(
                          decoration: InputDecoration(hintText: 'enter email'),
                          autofocus: true,
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration:
                          InputDecoration(hintText: 'enter password'),
                          autofocus: true,
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ));
            },
            child: const Text('Show Modal Bottom Sheet'),
          ),
        ));
  }
}

