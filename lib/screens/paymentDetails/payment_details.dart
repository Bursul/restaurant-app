import 'package:flutter/material.dart';
import 'package:odette/constants.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Details"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          color: kNavigationIconsColor,
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
                print("Payment Complete");
              },
              icon: Icon(Icons.exit_to_app),
              label: Text('Plătește'),
              color:kButtonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
        ),
      ),
    );
  }
}
