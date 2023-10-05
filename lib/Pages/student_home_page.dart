import 'package:flutter/material.dart';

class StudentHomePage extends StatefulWidget {
  const StudentHomePage({super.key});

  @override
  State<StudentHomePage> createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final List<Tab> myTabs = <Tab>[
    const Tab(
      icon: Icon(
        Icons.account_circle,
        size: 27,
      ),
      child: Text(
        'Profile',
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
        'View Mark',
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
    tabController = TabController(vsync: this, length: 2);
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
              'name name name',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Colors.blue.shade900,
              ),
            ),
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [StudentProfile(), StudentMark()],
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
      child:  Center(
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
