import 'package:book_town/controller/payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  // Define form controllers
  // final _nameController = TextEditingController();
  // final _emailController = TextEditingController();
  // final _addressController = TextEditingController();

  // Define payment method dropdown options
  List<String> _paymentMethods = ['Credit Card', 'PayPal', 'Bkash'];
  // String _selectedPaymentMethod;

  // Define terms and conditions checkbox value
  bool _termsAndConditions = false;

  final payC= Get.put(PaymentController(),permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFDDD0),
      appBar: AppBar(
        title: Text('PayNow'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 16.0),
              TextField(
                // controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                // controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                // controller: _addressController,
                maxLines: 3,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                // value: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    // _selectedPaymentMethod = value;
                  });
                },
                items: _paymentMethods.map((paymentMethod) {
                  return DropdownMenuItem<String>(
                    value: paymentMethod,
                    child: Text(paymentMethod),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Payment Method',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              CheckboxListTile(
                value: _termsAndConditions,
                onChanged: (value) {
                  setState(() {
                    // _termsAndConditions = value;
                  });
                },
                title: Text(
                  'I agree to the terms and conditions',
                  style: TextStyle(fontSize: 14.0),
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              SizedBox(height: 16.0),
              // RaisedButton(
              //   onPressed: () {
              //     // Add logic to handle payment processing
              //   },
              //   child: Text('Place Order'),
              // ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 30),
                child: InkWell(
                  onTap: () {
                   payC.makePayment(amount: '5', currency: 'USD', context: context);
                  },
                  splashColor: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  child: Ink(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.redAccent),
                    child: Center(
                      child: Text(
                        "PayNow",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
