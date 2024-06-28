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
          Expanded(
            flex: 33,
            child: GPUDetailsColumn(),
          ),
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

class GPUDetailsColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              GPUCard(
                title: 'RTX 3080TI',
                price: '\$12/HR',
                details: [
                  'NVIDIA CUDA Cores 10240',
                  'Boost Clock 1.67 GHz',
                  'Memory Size 12 GB',
                  'Memory Type GDDR6X',
                  'Memory Bandwidth 912GB/s',
                  'Tensor Cores 320',
                  'Single Precision Performance 34.1 TFLOPS',
                  'Raytracing Cores 80 RT',
                ],
              ),
              GPUCard(
                title: 'RTX 3080TI / 6',
                price: '\$24/HR',
                details: [
                  'NVIDIA CUDA Cores 17007',
                  'Boost Clock 1.67 GHz',
                  'Memory Size 10 GB',
                  'Memory Type GDDR6X',
                  'Memory Bandwidth 1526GB/s',
                  'Tensor Cores 328',
                  'Single Precision Performance 58.67 TFLOPS',
                  'Raytracing Cores 80 RT',
                ],
              ),
              GPUCard(
                title: 'V100',
                price: '\$30/HR',
                details: [
                  'NVIDIA CUDA Cores 5120',
                  'GPU Architecture Volta',
                  'Boost Clock 1.67 GHz',
                  'Memory Size 16 GB',
                  'Memory Type HBM2',
                  'Memory Bandwidth 900GB/s',
                  'Tensor Cores 640',
                  'Single Precision Performance 15.7 TFLOPS',
                  'Tensor Performance 125 TFLOPS',
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class GPUCard extends StatelessWidget {
  final String title;
  final String price;
  final List<String> details;

  GPUCard({required this.title, required this.price, required this.details});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              price,
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: details.map((detail) => Text(detail)).toList(),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  textStyle: TextStyle(fontSize: 16),
                ),
                child: Text('Sign in to Deploy'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}