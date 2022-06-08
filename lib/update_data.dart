// ignore_for_file: deprecated_member_use
//@dart=2.9
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UploadData extends StatefulWidget {
  const UploadData({Key key}) : super(key: key);

  @override
  State<UploadData> createState() => _UploadDataState();
}

class _UploadDataState extends State<UploadData> {
  @override
  Widget build(BuildContext context) {
    void _uploadData() async {
      DocumentReference docReferenceProductDetails =
          Firestore.instance.collection('products').document();
      // ignore: deprecated_member_use
      docReferenceProductDetails.setData({'productName': 'Objeto insertado'});
    }

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _uploadData();
          },
          child: Text('Insertar en Firebase'),
        ),
      ),
    );
  }
}
