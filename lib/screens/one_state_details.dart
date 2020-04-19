import 'package:flutter/material.dart';

class OneStateDetails extends StatefulWidget {
  static const routeName = '/oneStateDetails';

  @override
  _OneStateDetailsState createState() => _OneStateDetailsState();
}

class _OneStateDetailsState extends State<OneStateDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OneStateDetailsState'),
      ),
      body: Center(
        child: Text('OneScreenDetailsState'),
      ),
    );
  }
}
