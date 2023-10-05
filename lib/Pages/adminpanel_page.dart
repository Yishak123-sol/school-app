import 'package:flutter/material.dart';

class AdminPanelPage extends StatefulWidget {
  const AdminPanelPage({super.key});

  @override
  State<AdminPanelPage> createState() => _AdminPanelPageState();
}

class _AdminPanelPageState extends State<AdminPanelPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final List<Tab> myTabs = <Tab>[
    const Tab(
      icon: Icon(
        Icons.account_circle,
        size: 27,
      ),
      child: Text(
        'Calsses',
        maxLines: 1,
        softWrap: false,
        style: TextStyle(
          fontSize: 13,
        ),
      ),
    ),
    const Tab(
      icon: Icon(
        Icons.grade,
        size: 27,
      ),
      child: Text(
        'Teachers',
        maxLines: 1,
        softWrap: false,
        style: TextStyle(
          fontSize: 13,
        ),
      ),
    ),
    const Tab(
      icon: Icon(
        Icons.account_circle,
        size: 27,
      ),
      child: Text(
        'Students',
        maxLines: 1,
        softWrap: false,
        style: TextStyle(
          fontSize: 13,
        ),
      ),
    ),
    const Tab(
      icon: Icon(
        Icons.grade,
        size: 27,
      ),
      child: Text(
        'Creat User',
        maxLines: 1,
        softWrap: false,
        style: TextStyle(
          fontSize: 13,
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56), // here the desired height
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 3,
            title: Text(
              'Admin Panel',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Colors.blue.shade900,
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.logout_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            MyTable(),
            StudentMark(),
            StudentProfile(),
            StudentMark()
          ],
        ),
        bottomNavigationBar: DecoratedBox(
          decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(
                    width: 1.2, color: Color.fromARGB(50, 36, 107, 253))),
          ),
          child: TabBar(
            labelPadding: EdgeInsets.zero,
            controller: tabController,
            splashBorderRadius: BorderRadius.circular(40),
            labelColor: const Color.fromARGB(255, 36, 107, 253),
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: const TextStyle(),
            tabs: myTabs,
          ),
        ),
      );
}

class StudentMark extends StatelessWidget {
  const StudentMark({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: Center(
        child: Text(
          'Hello, mark!',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class StudentProfile extends StatelessWidget {
  const StudentProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: Center(
        child: Text(
          'Hello, profile!',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class MyTable extends StatelessWidget {
  const MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(
        columns: const [
          DataColumn(
            label: Text(
              'ID',
            ),
            numeric: false,
          ),
          DataColumn(
            label: Text(
              'Class Name',
            ),
            numeric: false,
          ),
          DataColumn(
            label: Text(
              '',
            ),
            numeric: false,
          ),
        ],
        rows: [
          DataRow(
            cells: [
              const DataCell(
                Text(
                  '1',
                  textAlign: TextAlign.left,
                ),
              ),
              const DataCell(
                SizedBox(
                  width: 150,
                  child: Text(
                    'This is a wide',
                  ),
                ),
              ),
              DataCell(ElevatedButton(
                onPressed: () {},
                child: const Text('Details'),
              )),
            ],
          ),
          DataRow(
            cells: [
              const DataCell(
                Text(
                  '2',
                  textAlign: TextAlign.left,
                ),
              ),
              const DataCell(
                SizedBox(
                  width: 150,
                  child: Text(
                    'Another wide',
                  ),
                ),
              ),
              DataCell(ElevatedButton(
                onPressed: () {},
                child: const Text('Details'),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
