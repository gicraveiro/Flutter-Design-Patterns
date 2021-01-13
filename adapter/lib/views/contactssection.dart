// chamar get contacts
import 'package:adapter/models/adapterlist.dart';
import 'package:adapter/models/contact.dart';
import 'package:adapter/views/contactcard.dart';
import 'package:flutter/material.dart';

class ContactsSection extends StatefulWidget {
  final IContacts adapter;
  final String title;

  const ContactsSection({@required this.adapter, @required this.title})
      : assert(adapter != null),
        assert(title != null);

  _ContactsSectionState createState() => _ContactsSectionState();
}

class _ContactsSectionState extends State<ContactsSection> {
  final List<Contact> contacts = List<Contact>();

  void _getContacts() {
    setState(() {
      contacts.addAll(widget.adapter.getContacts());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(widget.title,
            style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
        const SizedBox(height: 30.0),
        Column(
          children: <Widget>[
            for (var contact in contacts)
              ContactCard(
                contact: contact,
              )
          ],
        ),
        RaisedButton(
          child: Text('Get Contacts'),
          color: Colors.purple,
          textColor: Colors.white,
          onPressed: _getContacts,
        ),
        /*
        Stack(
          children: <Widget>[
            AnimatedOpacity(
              duration: const Duration(milliseconds: 250),
              opacity: contacts.length == 0 ? 1.0 : 0.0,
              child: RaisedButton(
                child: Text('Get contacts'),
                color: Colors.purple,
                textColor: Colors.white,
                onPressed: _getContacts,
              ),
            ),
            
          ],
        ),*/
      ],
    );
  }
}
