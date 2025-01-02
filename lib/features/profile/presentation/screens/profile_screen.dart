import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // User Info Card
            Card(
              color: Colors.purple[50],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/profile_image.jpg'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Replace with your image asset
                            Text(
                              'Robarto Martin',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text('robertomartin@gmail.com'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text('5 Enrolled'),
                            ),
                            SizedBox(height: 8),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.purple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text('2 Certificates'),
                            ),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Personal Info Section
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Henry Xavier'),
              subtitle: Text('Personal Info'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('xavierhenry@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('(88) 24565-875'),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('********'),
            ),
            SizedBox(height: 20),

            // Settings Section
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Payment History'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Terms & Conditions'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Invite & Rewards'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help Center'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Spacer(),

            // Logout Button
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.logout),
              label: Text('Logout'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.purple,
                backgroundColor: Colors.white,
                side: BorderSide(color: Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
