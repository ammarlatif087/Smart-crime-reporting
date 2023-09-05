import 'package:crime_reporting_app/app/index.dart';

class PatrollingOfficerDashboard extends StatelessWidget {
  const PatrollingOfficerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.primary,
          title: Utils.popinSemBoldText(
            'Patrolling officer',
            color: ColorManager.white,
            fontSize: 24.sp,
          ),

          // automaticallyImplyLeading: false,
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
                leading: const Icon(Icons.warning),
                title: Utils.popinMedText('Alerts'),
                onTap: () => Get.toNamed(Routes.reportCrimeRoute),
              ),
              ListTile(
                leading: const Icon(Icons.messenger),
                title: Utils.popinMedText('Live Chat'),
                onTap: () => Get.toNamed(Routes.registerFirRoute),
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: Utils.popinMedText('Logout'),
                onTap: () => Get.toNamed(Routes.sendFeedbackRoute),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(18.w),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.notifications_active_outlined,
                    color: ColorManager.secondary,
                  ),
                  20.spaceX,
                  Utils.popinSemBoldText(
                    'Emergency Alerts',
                    color: ColorManager.primary,
                    fontSize: 24.sp,
                  )
                ],
              ),
              20.spaceY,
              Expanded(
                child: ListView.separated(
                  itemCount: 16,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 8,
                      child: ListTile(
                        onTap: () {
                          Get.toNamed(Routes.alertsDetialsRoute);
                        },
                        leading: Icon(
                          Icons.notification_important_sharp,
                          color: ColorManager.buttonRed,
                        ),
                        title: Utils.popinSemBoldText(
                          'Name',
                          fontSize: 18.sp,
                        ),
                        subtitle: Utils.popinSemBoldText(
                          'Crime Type',
                          fontSize: 16.sp,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return 10.spaceY;
                  },
                ),
              ),
            ],
          ),
          // body: Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Column(
          //     children: [
          //       Expanded(
          //         child: GridView.count(
          //           padding: EdgeInsets.all(18.r),
          //           crossAxisCount: 2,
          //           children: [
          //             DashboardCard(
          //               icon: Icons.warning,
          //               label: 'Alerts',
          //               onTap: () {
          //                 Get.toNamed(Routes.getAlertsRoute);
          //               },
          //             ),
          //             DashboardCard(
          //               icon: Icons.message_outlined,
          //               label: 'Chats',
          //               onTap: () {
          //                 Get.toNamed(Routes.liveChatRoute);
          //               },
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
