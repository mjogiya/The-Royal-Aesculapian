import 'package:flutter/material.dart';

class MedicalCard extends StatelessWidget {
  final String name;
  final String address;
  final String phone;
  final String imageUrl;
  final bool isOpen;

  const MedicalCard({
    Key? key,
    required this.name,
    required this.address,
    required this.phone,
    required this.imageUrl,
    required this.isOpen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 120,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      address,
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Text(
                      phone,
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(
                          isOpen ? Icons.check_circle : Icons.cancel,
                          color: isOpen ? Colors.green : Colors.red,
                        ),
                        SizedBox(width: 4),
                        Text(
                          isOpen ? 'Open Now' : 'Closed Now',
                          style: TextStyle(
                            fontSize: 14,
                            color: isOpen ? Colors.green : Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}