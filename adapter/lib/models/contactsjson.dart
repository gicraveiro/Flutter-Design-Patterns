class ContactsJson {
  final String _contacts = ''' 
  {
    "contacts" : [
      {
        "fullname": "Lena Elena (JSON)",
        "email": "lenelena@email.com"
      },
      {
        "fullname": "Lina Carolina (JSON)",
        "email": "linacarolina@email.com"
      }
    ]
  } ''';

  String getContactsJson() {
    return _contacts;
  }
}
