import 'package:flutter/material.dart';

class GPUTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: 'GPU Type',
                        border: OutlineInputBorder(),
                      ),
                      items: [
                        DropdownMenuItem(
                          value: 'RTX 3080TI',
                          child: Text('RTX 3080TI'),
                        ),
                        // Add other GPU types here
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: DropdownButtonFormField<int>(
                      decoration: InputDecoration(
                        labelText: 'GPU Quantity',
                        border: OutlineInputBorder(),
                      ),
                      items: [
                        DropdownMenuItem(
                          value: 1,
                          child: Text('1'),
                        ),
                        // Add other quantities here
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: 'Image Template',
                        border: OutlineInputBorder(),
                      ),
                      items: [
                        DropdownMenuItem(
                          value: 'Alpine',
                          child: Text('Alpine'),
                        ),
                        // Add other templates here
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0), // Increase button height
                  textStyle: TextStyle(fontSize: 16), // Increase button text size
                ),
                  child: Text('Deploy Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}