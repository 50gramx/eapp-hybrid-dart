import 'package:flutter/material.dart';

class GPUDetailsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 0.90,
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
          GPUCard(
            title: 'Jetson x8',
            price: '\$10/HR',
            details: [
              'NVIDIA CUDA Cores 512',
              'GPU Architecture Volta',
              'Boost Clock 1.37 GHz',
              'Memory Size 12 GB',
              'Memory Type LPDDR4X',
              'Memory Bandwidth 192GB/s',
              'Tensor Cores 64',
              'Single Precision Performance 11 TFLOPS',
              'Tensor Performance 22 TFLOPS',
            ],
          ),
        ],
      ),
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
            ...details.map((detail) => Text(detail)).toList(),
            // SizedBox(height: 16),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0), // Increase button height
                textStyle: TextStyle(fontSize: 16), // Increase button text size
              ),
              child: Text('Sign in to Deploy'),
            ),
          ],
        ),
      ),
    );
  }
}