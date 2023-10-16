import 'package:flutter/material.dart';
import 'package:school_app/Pages/student_profile_page.dart';
import 'package:school_app/Pages/student_review_add_page.dart';

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
        Icons.task_rounded,
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
    const Tab(
      icon: Icon(
        Icons.star,
        size: 27,
      ),
      child: Text(
        'Review Teacher',
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
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    // TODO: implement dispose
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
              'Student Dashboard',
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
          children: [StudentProfile(), StudentMark(), ReviewADD()],
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
    return Container(
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
