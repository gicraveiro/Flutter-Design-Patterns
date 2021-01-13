// receber get contacts de um jeito e repassar de outro
import 'dart:convert';

import 'package:adapter/models/contact.dart';
import 'package:adapter/models/contactsjson.dart';

import 'package:adapter/models/adapterlist.dart';

class Adapter implements IContacts {
  final ContactsJson api = ContactsJson();

  @override
  List<Contact> getContacts() {
    var contactsJson = api.getContactsJson();
    var contactsList = parseJson(contactsJson);

    return contactsList;
  } // requires adapters to implement getContacts method

  List<Contact> parseJson(String contactsJson) {
    var contactsMap = json.decode(contactsJson) as Map<String, dynamic>;
    var contactsJsonList = contactsMap['contacts'] as List;
    var contactsList = contactsJsonList
        .map((json) => Contact(
              fullname: json['fullname'],
              email: json['email'],
            ))
        .toList();

    return contactsList;
  }
}
