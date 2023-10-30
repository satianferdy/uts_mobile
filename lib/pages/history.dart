import 'package:flutter/material.dart';

class HistoryPages extends StatelessWidget {
  const HistoryPages({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Center(
            child: Text('Transaction History'),
          ),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                text: 'Pending',
              ),
              Tab(
                text: 'Done',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.history,
                    size: 100,
                    color: Colors.grey,
                  ),
                  Text(
                    'No Transaction History',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.history,
                    size: 100,
                    color: Colors.grey,
                  ),
                  Text(
                    'No Done Transaction History',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
