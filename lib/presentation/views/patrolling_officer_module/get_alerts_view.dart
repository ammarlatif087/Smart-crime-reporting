// import 'package:crime_reporting_app/app/index.dart';
// import 'package:crime_reporting_app/presentation/common/app_bar.dart';

// class GetAlertView extends StatelessWidget {
//   const GetAlertView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: buildAppBar(title: 'Alerts'),
//       body: Padding(
//         padding: EdgeInsets.all(18.w),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Icon(
//                   Icons.notifications_active_outlined,
//                   color: ColorManager.secondary,
//                 ),
//                 20.spaceX,
//                 Utils.popinSemBoldText(
//                   'Emergency Alerts',
//                   color: ColorManager.primary,
//                   fontSize: 24.sp,
//                 )
//               ],
//             ),
//             20.spaceY,
//             Expanded(
//               child: ListView.separated(
//                 itemCount: 16,
//                 shrinkWrap: true,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Card(
//                     elevation: 8,
//                     child: ListTile(
//                       onTap: () {
//                         Get.toNamed(Routes.alertsDetialsRoute);
//                       },
//                       leading: Icon(
//                         Icons.notification_important_sharp,
//                         color: ColorManager.buttonRed,
//                       ),
//                       title: Utils.popinSemBoldText(
//                         'Name',
//                         fontSize: 18.sp,
//                       ),
//                       subtitle: Utils.popinSemBoldText(
//                         'Crime Type',
//                         fontSize: 16.sp,
//                       ),
//                     ),
//                   );
//                 },
//                 separatorBuilder: (BuildContext context, int index) {
//                   return 10.spaceY;
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
