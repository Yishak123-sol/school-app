import 'package:flutter/material.dart';
import 'package:school_app/util/widgets.dart';

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
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertForm(buttonText: 'Add Review');
                          },
                        );
                      },
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
}

class AlertForm extends StatefulWidget {
  final String buttonText;

  const AlertForm({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  State<AlertForm> createState() => _AlertFormState();
}

class _AlertFormState extends State<AlertForm> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            widget.buttonText,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          InputBox(
            inputLabel: "New Comment",
            placeHolder: "Enter your Comment.",
            update: (value) {
              // Handle password update logic here
            },
            icon: Icon(Icons.lock),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              primary: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            onPressed: () {
              // Handle the password update action
            },
            child: Text(
              'Submit Review',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
