import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
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
  final List<Map<String, dynamic>> gpuDetails = [
    {
      'title': 'RTX 3060 Ti',
      'price': '₹12/Hr',
      'details': [
        'NVIDIA CUDA Cores 4864',
        'Boost Clock 1.67 GHz',
        'Memory Size 8 GB',
        'Memory Type GDDR6',
        'Memory Bandwidth 448 GB/s',
        'Tensor Cores 152',
        'Single Precision Performance 16.2 TFLOPS',
        'Raytracing Cores 38 RT',
      ],
    },
    {
      'title': 'RTX 3080 TI',
      'price': '₹15/Hr',
      'details': [
        'NVIDIA CUDA Cores 10240',
        'Boost Clock 1.67 GHz',
        'Memory Size 12 GB',
        'Memory Type GDDR6X',
        'Memory Bandwidth 912GB/s',
        'Tensor Cores 320',
        'Single Precision Performance 34.1 TFLOPS',
        'Raytracing Cores 80 RT',
      ],
    },
    {
      'title': 'RTX 3080 Ti / 6',
      'price': '₹3/Hr',
      'details': [
        'NVIDIA CUDA Cores 1707',
        'Boost Clock 1.67 GHz',
        'Memory Size 2 GB',
        'Memory Type GDDR6X',
        'Memory Bandwidth 152 GB/s',
        'Tensor Cores 53',
        'Single Precision Performance 5.68 TFLOPS',
        'Raytracing Cores 13 RT',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = 1;
        if (constraints.maxWidth > 600) {
          crossAxisCount = 2;
        }
        if (constraints.maxWidth > 1200) {
          crossAxisCount = 3;
        }
        return GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 3 / 2,
          ),
          itemCount: gpuDetails.length,
          itemBuilder: (context, index) {
            final gpu = gpuDetails[index];

            return GPUCard(
              title: gpu['title'],
              price: gpu['price'],
              details: gpu['details'],
            );
          },
        );
      },
    );
  }
}

class GPUCard extends StatelessWidget {
  final String title;
  final String price;
  final List<String> details;

  GPUCard({
    required this.title,
    required this.price,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.purple, width: 2),
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    price,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            for (var detail in details) Text(detail),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add your deployment logic here
                  EthosAppFlowBob().loadAppOnTheGo(
                      appName: "get_started",
                      orgName: "ethos",
                      communityCode: 50,
                      appIndex: 5002);
                  NotificationsBloc.instance.newNotification(LocalNotification(
                      "EthosAppFlowBob",
                      {"subType": "Open eApp", "appSectionIndex": 1}));
                },
                child: Text('Sign in to Deploy'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[850],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
