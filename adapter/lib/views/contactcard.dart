import 'package:adapter/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;

  const ContactCard({
    @required this.contact,
  }) : assert(contact != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.fullname),
        subtitle: Text(contact.email),
        leading: CircleAvatar(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
          child: Text(contact.fullname[0]),
        ),
      ),
    );
  }
}
