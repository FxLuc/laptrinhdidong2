import 'package:flutter/material.dart';

class HeaderDrawer extends StatefulWidget {
  const HeaderDrawer({Key? key}) : super(key: key);

  @override
  State<HeaderDrawer> createState() => _HeaderDrawerState();
}

class _HeaderDrawerState extends State<HeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 200,
      child: Column(
        children: [
          Form(
            child: Padding(
              padding: EdgeInsets.all(10), // pading 4 phía
              child: Container(
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {},
                      obscureText: false,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        labelText: 'Search',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () => {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        'Create',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),

                     Padding(
                       padding: const EdgeInsets.only(top: 8),
                       child: Text(
                        'Check',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                    ),
                     ),

                    
                     Padding(
                       padding: const EdgeInsets.only(top: 8),
                       child: Text(
                        'account',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                    ),
                     ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
