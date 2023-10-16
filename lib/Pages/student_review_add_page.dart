import 'package:flutter/material.dart';

class ReviewADD extends StatefulWidget {
  @override
  State<ReviewADD> createState() => _ReviewADDState();
}

class _ReviewADDState extends State<ReviewADD> {
  bool isReviewOpen = false;

  @override
  void initState() {
    super.initState();
    // Set the value of isReviewOpen to true or false based on your condition
    isReviewOpen =
        true; // Set to true if the review period is open, or false if it's not.
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 20),
        Text(
          'Teacher Reviews',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 10), // Add spacing between title and instruction

        SizedBox(height: 20),
        if (isReviewOpen)
          DataTable(
            columns: [
              DataColumn(
                label: Text(
                  'Subject',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Full Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Reviews',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
            rows: List<DataRow>.generate(
              teachers.length,
              (index) {
                final isEvenRow =
                    index.isOdd; // Updated to reverse the coloring order
                return DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text(
                        teachers.keys.toList()[index],
                      ),
                    ),
                    DataCell(
                      Center(
                        child: Text(
                          teachers.values.toList()[index][0],
                          style: TextStyle(
                            color: Colors.black, // Updated to black
                          ),
                        ),
                      ),
                    ),
                    DataCell(IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star,
                        color: Colors.blue.shade900,
                      ),
                    )),
                  ],
                  color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.selected)) {
                      return Colors.transparent;
                    }
                    return isEvenRow
                        ? Colors.transparent
                        : Colors.blue.withOpacity(
                            0.1); // Updated to reverse the coloring order
                  }),
                );
              },
            ),
          )
        else
          Column(
            children: <Widget>[
              Text(
                'Review period is not open yet',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black, // Updated to black
                ),
              ),
              SizedBox(height: 20),
              CircularProgressIndicator(
                color: Colors.blue,
              ),
            ],
          ),
      ],
    );
  }

  Map<String, List<String>> teachers = {
    'Math': ['John Doe', ''],
    'Science': ['Alice Smith', ''],
    'History': ['Bob Johnson', ''],
  };

  void handleReviewClick(List<String> teacherInfo) {
    // Handle the review click action
  }
}
