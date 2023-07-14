import 'package:crime_reporting_app/app/index.dart';

import '../../common/app_bar.dart';
import '../../common/dashboard_card.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // final viewModel = Provider.of<AdminDashboradViewModel>(context);
    return Scaffold(
      appBar: buildAppBar(title: 'Admin Dashboard'),
      body: GridView.count(
        crossAxisCount: 2, // Number of columns in the grid
        padding: const EdgeInsets.all(16.0),
        children: [
          DashboardCard(
            icon: Icons.warning,
            label: 'Manage Reports',
            onTap: () {
              Get.toNamed(Routes.manageReportsRoute);
            },
          ),
          DashboardCard(
            icon: Icons.verified_user,
            label: 'Verify Police Officer',
            onTap: () {
              Get.toNamed(Routes.verifyOfficerRoute);
            },
          ),
          DashboardCard(
            icon: Icons.manage_accounts,
            label: 'Manage Feedback',
            onTap: () {
              Get.toNamed(Routes.manageFeedbackRoute);
            },
          ),
          DashboardCard(
            icon: Icons.logout,
            label: 'Log Out',
            onTap: () {
              // Handle tapping the item
            },
          ),
        ],
      ),
    );
  }
}
