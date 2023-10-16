import 'package:flutter/material.dart';

class StudentMark extends StatefulWidget {
  @override
  State<StudentMark> createState() => _StudentMarkState();
}

class _StudentMarkState extends State<StudentMark> {
  String selectedSemester = "Select Semester";
  String selectedSubject = "Select Subject";

  Map<String, dynamic> reportCard = {
    "semester_1": {
      "Math": 90,
      "Science": 75,
      "History": 20,
    },
    "semester_2": {
      "Math": 85,
      "Science": 70,
      "History": 65,
    },
    "semester_3": {
      "Math": 88,
      "Science": 72,
      "History": 68,
    },
    "semester_4": {
      "Math": 92,
      "Science": 78,
      "History": 72,
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Welcome Student, Select and view your Results',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(height: 20),
            Container(
              width: 200, // Adjust the width to your desired value
              padding:
                  EdgeInsets.all(8), // Add padding around the DropdownButton
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(50, 0, 0, 0),
                ),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: DropdownButton<String>(
                value: selectedSemester,
                items: [
                  "Select Semester",
                  "semester_1",
                  "semester_2",
                  "semester_3",
                  "semester_4",
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16), // Add padding around the text
                      child: Text(value),
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      selectedSemester = newValue;
                    });
                  }
                },
                underline: Container(), // Remove the underline here
              ),
            ),
            SizedBox(height: 20),
            if (selectedSemester != "Select Semester" &&
                reportCard[selectedSemester] != null)
              DataTable(
                columns: [
                  DataColumn(
                    label: Text(
                      'Fields',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Result',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
                rows:
                    reportCard[selectedSemester].entries.map<DataRow>((entry) {
                  final subject = entry.key;
                  final result = entry.value;
                  final textColor = result < 55 ? Colors.red : Colors.black;
                  return DataRow(
                    cells: [
                      DataCell(
                        Text(
                          subject,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      DataCell(
                        Text(
                          result.toString(),
                          style: TextStyle(
                            color: textColor,
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              )
            else
              Text(
                'Select a semester to view your results.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
