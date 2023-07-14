import '../../../app/index.dart';
import '../../common/dashboard_card.dart';

class UserDashboardView extends StatelessWidget {
  const UserDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Utils.popinSemBoldText(
          'User',
          fontSize: 24.sp,
          color: ColorManager.white,
        ),
      ),
      drawer: const Drawer(),
      body: GridView.count(
        crossAxisCount: 2, // Number of columns in the grid
        padding: const EdgeInsets.all(16.0),
        children: [
          DashboardCard(
            icon: Icons.report,
            label: 'Report Crime',
            onTap: () {
              Get.toNamed(Routes.reportCrimeRoute);
            },
          ),
          DashboardCard(
            icon: Icons.assignment,
            label: 'Register FIR',
            onTap: () {
              Get.toNamed(Routes.registerFirRoute);
            },
          ),
          DashboardCard(
            icon: Icons.assignment_turned_in,
            label: 'See FIR Status',
            onTap: () {
              Get.toNamed(Routes.firStatusRoute);
            },
          ),
          DashboardCard(
            icon: Icons.chat,
            label: 'Live Chat',
            onTap: () {
              Get.toNamed(Routes.liveChatRoute);
            },
          ),
          DashboardCard(
            icon: Icons.feedback,
            label: 'Send Feedback',
            onTap: () {
              Get.toNamed(Routes.sendFeedbackRoute);
            },
          ),
        ],
      ),
    ));
  }
}
