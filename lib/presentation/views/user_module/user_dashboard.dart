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
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 150.h,
              color: ColorManager.primary,
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30.r,
                    backgroundImage: const AssetImage(
                      AppImages.logo,
                    ),
                  ),
                  title: Utils.popinSemBoldText(
                    'User Name',
                    fontSize: 20.sp,
                    color: ColorManager.white,
                  ),
                  subtitle: Utils.popinSemBoldText(
                    'email@gmail.com',
                    fontSize: 18.sp,
                    color: ColorManager.grey,
                  ),
                  trailing: Icon(
                    Icons.edit,
                    color: ColorManager.white,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.report),
              title: Utils.popinMedText('Report Crime'),
              onTap: () => Get.toNamed(Routes.reportCrimeRoute),
            ),
            ListTile(
              leading: const Icon(Icons.assignment),
              title: Utils.popinMedText('Register FIR'),
              onTap: () => Get.toNamed(Routes.registerFirRoute),
            ),
            ListTile(
              leading: const Icon(Icons.assignment_turned_in),
              title: Utils.popinMedText('FIR Status'),
              onTap: () => Get.toNamed(Routes.firStatusRoute),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: Utils.popinMedText('Live Chat'),
              onTap: () => Get.toNamed(Routes.liveChatRoute),
            ),
            ListTile(
              leading: const Icon(Icons.feedback),
              title: Utils.popinMedText('Send Feedback'),
              onTap: () => Get.toNamed(Routes.sendFeedbackRoute),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Utils.popinMedText('Logout'),
              onTap: () => Get.toNamed(Routes.sendFeedbackRoute),
            ),
          ],
        ),
      ),
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
            buttonContent: TextButton(
              onPressed: () {
                Get.toNamed(Routes.crimeReportListRoute);
              },
              child: const Text('view all'),
            ),
          ),
          DashboardCard(
            icon: Icons.assignment,
            label: 'Register FIR',
            onTap: () {
              Get.toNamed(Routes.registerFirRoute);
            },
            buttonContent: TextButton(
              onPressed: () {
                Get.toNamed(Routes.firListRoute);
              },
              child: const Text('view all'),
            ),
          ),
          DashboardCard(
            icon: Icons.assignment_turned_in,
            label: 'FIR Status',
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
