import 'package:flutter/material.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});
  static const routeName = '/delivery';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uthenge - Delivery'),
      ),
      body: const Card(
        child: RequestDeliver(),
      ),
    );
  }
}

class RequestDeliver extends StatefulWidget {
  const RequestDeliver({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RequestDeliveryState();
  }
}

class _RequestDeliveryState extends State<RequestDeliver> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(hintText: 'Item'),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.reset();
                }
              },
              child: const Text('Submit'),
            ),
          )
        ],
      ),
    );
  }
}
