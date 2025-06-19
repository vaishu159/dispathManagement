import 'package:dispatch_management_system/components/responsive.dart';
import 'package:dispatch_management_system/services/dashboard/widgets/activity_details_card.dart';
import 'package:dispatch_management_system/utils/app_color.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: const SideMenuWidget(),
            )
          : null,
      appBar: Responsive.isMobile(context)
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.black),
              title: const Text('Dispatch Management System',
                  style: TextStyle(color: Colors.black)),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (!Responsive.isMobile(context))
              const Expanded(flex: 2, child: SizedBox(child: SideMenuWidget())),
            Expanded(
              flex: 7,
              child: ListView(
                children: [
                  ActivityDetailsCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(color: AppColor.backgroundColor),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset(
                "assets/image/img.png",
                height: 100,
              ),
              const SizedBox(height: 25),
              Expanded(
                child: ListView(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.dashboard),
                      title: Text("Dashboard"),
                    ),
                    ListTile(
                      leading: Icon(Icons.code),
                      title: Text("API Logs"),
                    ),
                    ListTile(
                      leading: Icon(Icons.add),
                      title: Text("Add Client"),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("User Query"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
