import 'package:flutter/material.dart';

class CardProductHome extends StatelessWidget {
  const CardProductHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Color.fromARGB(255, 165, 162, 162)
        ),
      ),
      
      child: Card(
        child: Container(
          // padding: EdgeInsets.all(12),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'http://103.170.246.112:50667/pictures/items/1648024361816-137440319ram-laptop-samsung-ddr4-8gb.jpg',
                fit: BoxFit.fitWidth,
                height: 250,
                width: 400,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Samsung RAM 4GB SD...',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Owner: Oxc...05e',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  '\$24.00',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(Icons.copy, size: 20),
                              ),
                              TextSpan(
                                  text: "Ox1...BBC",
                                  style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: RichText(
                          textAlign: TextAlign.right,
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.price_check_rounded,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                  text: "0.70000",
                                  style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
