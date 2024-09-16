import 'package:flutter/material.dart';

class RegistrationAndGPUDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            flex: 65,
            child: RegistrationForms(),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}

class RegistrationForms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          RegistrationCard(
            title: 'Registered User',
            children: [
              Text('Add your registered mobile number to continue...'),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  prefixIcon: CountryCodePrefix(),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Submit for OTP'),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          RegistrationCard(
            title: 'New User',
            children: [
              Text('Add your registered mobile number to continue...'),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Date Of Birth',
                  hintText: 'DD/MM/YYYY',
                  suffixIcon: Icon(Icons.calendar_today),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  prefixIcon: CountryCodePrefix(),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Submit for OTP'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CountryCodePrefix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('IND'),
        Icon(Icons.arrow_drop_down),
        SizedBox(width: 8),
        Text('+91'),
      ],
    );
  }
}

class RegistrationCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  RegistrationCard({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 8.0),
                    height: 1.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }
}
