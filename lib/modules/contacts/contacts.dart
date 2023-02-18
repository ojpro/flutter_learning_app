import 'package:flutter/material.dart';
import 'package:flutter_learning_app/models/contacts/user_model.dart';

class ContactsScreen extends StatelessWidget {
  List<UserContactModel> contacts = [
    UserContactModel(1, "Oussama ELJABBARI", "+212701691713"),
    UserContactModel(2, "Abdlah", "+212569937444"),
    UserContactModel(3, "Moussa", "+212701691713"),
    UserContactModel(4, "Yassine", "+212569937444"),
    UserContactModel(5, "Yaikoub", "+212701691713"),
  ];

  ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (context, index) =>
                  buildContactsWidget(contacts[index]),
              separatorBuilder: (context, index) => Container(
                    color: Colors.grey[300],
                    width: double.infinity,
                    height: 1,
                  ),
              itemCount: contacts.length)),
    );
  }

  Widget buildContactsWidget(UserContactModel user) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  child: CircleAvatar(
                    child: Text('${user.id}'),
                  ),
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      user.phone,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ],
        ),
      );
}
