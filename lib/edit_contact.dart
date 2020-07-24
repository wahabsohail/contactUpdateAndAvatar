import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class EditContactPage extends StatefulWidget {
  final String contactID;
  final List<Contact> contactValues;
  final String name;
  final String number;

  const EditContactPage(
      {Key key, this.contactID, this.contactValues, this.name, this.number})
      : super(key: key);
  @override
  _EditContactPageState createState() {
    return _EditContactPageState();
  }
}

class _EditContactPageState extends State<EditContactPage> {
  TextEditingController NameController;
  TextEditingController NumberController;

  bool processing = true;

  String UserId;

  var contacts1;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.15,
              ),
              Text(
                'My Contacts',
                style: TextStyle(fontSize: 22, color: Colors.black),
              )
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Name"),
                      SizedBox(
                        width: 15,
                      ),
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: TextField(
                              controller: NameController,
                              decoration: InputDecoration(
                                  hintText: "${widget.name}",
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder())),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Text("number"),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: TextField(
                              controller: NumberController,
                              decoration: InputDecoration(
                                  hintText: "${widget.number}",
                                  contentPadding: EdgeInsets.all(10),
                                  border: OutlineInputBorder())),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          updateContact();
                        },
                        child: Icon(
                          Icons.add_circle,
                          color: Color.fromRGBO(30, 100, 35, 1),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add Phone",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
  Future updateContact() async {
    // List phones = [];
    // for (var cont in nameTECs) {
    //   phones.add(cont.text.trim());
    // }
    int i = 0;
    Iterable<Item> abcd = [Item(label: "Michal", value: "0324416455")];

    print("////////////////////update user name////////////////");
    Contact contactToUpdate = widget.contactValues
        .toList()
        .firstWhere((contact) => contact.displayName.startsWith("Michal"));
    print(contactToUpdate.displayName);
    print(contactToUpdate.identifier);
    contactToUpdate.givenName = "wahab";
    // await ContactsService.updateContact(contactToUpdate).catchError((error) {
    //   print(error.toString() + "////////");
    // });
    // print("contact updated/////");
    // Iterable<Item> abcd = phones.map((e) {
    //   i++;
    //   print("abcd value");
    //   print(e);
    //   return Item(label: "mobile$i", value: e);
    // });

    // var test = widget.contactValues.toList()[0].phones.elementAt(1);
    // print("index value of update contact ");
    // print(test);

    // await ContactsService.updateContact(
    //         Contact(displayName: "yello", phones: abcd))
    //     .catchError((onError) {
    //   print("erroor///////////");
    //   print(onError.toString());
    // });
  }
}
