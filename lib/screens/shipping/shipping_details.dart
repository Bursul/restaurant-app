import 'package:flutter/material.dart';
import 'package:odette/screens/paymentDetails/payment_details.dart';

class Shipping extends StatefulWidget {
  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shipping Details"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(

      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        child: Container(
          child: FlatButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Payment()),
                  );
              },
              icon: Icon(Icons.attach_money),
              label: Text('Continua'),
              color: Colors.amber[300],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
        ),
      ),
    );
  }
}
