// import '../../app/index.dart';
// import '../view_models/admin_dashborad_view_model.dart';

// class AdminDashboardCard extends StatelessWidget {
//   final Functionality functionality;

//   const AdminDashboardCard({
//     super.key,
//     required this.functionality,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 8.0,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
//       child: InkWell(
//         onTap: functionality.onPressed,
//         child: Padding(
//           padding: EdgeInsets.all(16.r),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 functionality.icon,
//                 size: 48.0.sp,
//                 color: ColorManager.primary,
//               ),
//               const SizedBox(height: 16.0),
//               Utils.popinSemBoldText(
//                 functionality.title,
//                 fontSize: 18.sp,
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
