import 'package:crime_reporting_app/presentation/views/admin_module/admin_dashboard.dart';
import 'package:crime_reporting_app/presentation/views/admin_module/manage_feedbacks.dart';
import 'package:crime_reporting_app/presentation/views/admin_module/manage_reports_view.dart';
import 'package:crime_reporting_app/presentation/views/admin_module/verify_officers.dart';
import 'package:crime_reporting_app/presentation/views/login/login_view.dart';
import 'package:crime_reporting_app/presentation/views/patrolling_officer_module/alerts_details.dart';
import 'package:crime_reporting_app/presentation/views/patrolling_officer_module/patrolling_officer_dashboard.dart';
import 'package:crime_reporting_app/presentation/views/patrolling_officer_module/send_report_to_ssp.dart';
import 'package:crime_reporting_app/presentation/views/sho_module/generate_case_report.dart';
import 'package:crime_reporting_app/presentation/views/sho_module/sho_dashboard.dart';
import 'package:crime_reporting_app/presentation/views/sho_module/view_crime_scene.dart';
import 'package:crime_reporting_app/presentation/views/sign_up/sign_up.dart';
import 'package:crime_reporting_app/presentation/views/ssp_module/ssp_dashboard.dart';
import 'package:crime_reporting_app/presentation/views/ssp_module/view_reports_details.dart';
import 'package:crime_reporting_app/presentation/views/user_module/crime_report_list_view.dart';
import 'package:crime_reporting_app/presentation/views/user_module/fir_list_view.dart';
import 'package:crime_reporting_app/presentation/views/user_module/fir_status_view.dart';
import 'package:crime_reporting_app/presentation/views/user_module/live_chat_View.dart';
import 'package:crime_reporting_app/presentation/views/user_module/register_fir_view.dart';
import 'package:crime_reporting_app/presentation/views/user_module/report_crime_view.dart';
import 'package:crime_reporting_app/presentation/views/user_module/send_feedback_view.dart';
import 'package:crime_reporting_app/presentation/views/user_module/user_dashboard.dart';

import '../../app/index.dart';
import '../views/splash_view.dart';

class Routes {
  static const String mainRoute = '/mainRoute';
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String signUpRoute = '/signUp';
  //admin module routes
  static const String adminDashboardRoute = '/adminDashboard';
  static const String manageReportsRoute = '/manageReports';
  static const String verifyOfficerRoute = '/verifyOfficer';
  static const String manageFeedbackRoute = '/manageFeedback';
  //user side
  static const String userDashboardRoute = '/userDashboard';
  static const String reportCrimeRoute = '/reportCrime';
  static const String registerFirRoute = '/registerFir';
  static const String firStatusRoute = '/firStatus';
  static const String liveChatRoute = '/liveChat';
  static const String sendFeedbackRoute = '/sendFeedback';
  static const String firListRoute = '/firList';
  static const String crimeReportListRoute = '/crimeReportList';
  //patrolling officer
  static const String patrollingOfficerDashboardRoute =
      '/patrollingOfficerDashboard';
  static const String getAlertsRoute = '/getAlertsRoute';
  static const String alertsDetialsRoute = '/alertsDetials';
  static const String sendReportToSspRoute = '/sendReport';
  //ssp
  static const String sspDashboardRoute = '/sspDashboard';
  static const String viewAllReportsRoute = '/viewAllReports';

  //sho
  static const String shoDashboardRoute = '/shoDashboard';
  static const String generateReportRoute = '/generateReport';
  static const String viewCrimeSceneRoute = '/viewCrimeScene';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      //admin portal
      case Routes.adminDashboardRoute:
        return MaterialPageRoute(builder: (_) => const AdminDashboard());
      case Routes.manageReportsRoute:
        return MaterialPageRoute(builder: (_) => const ManageReportsView());
      case Routes.verifyOfficerRoute:
        return MaterialPageRoute(builder: (_) => const VerifyOfficerView());
      case Routes.manageFeedbackRoute:
        return MaterialPageRoute(builder: (_) => const ManageFeedbackView());
      //user module

      case Routes.userDashboardRoute:
        return MaterialPageRoute(builder: (_) => const UserDashboardView());
      case Routes.reportCrimeRoute:
        return MaterialPageRoute(builder: (_) => const ReportCrimeView());
      case Routes.registerFirRoute:
        return MaterialPageRoute(builder: (_) => const RegisterFirView());
      case Routes.firStatusRoute:
        return MaterialPageRoute(builder: (_) => const FirStatusView());
      case Routes.sendFeedbackRoute:
        return MaterialPageRoute(builder: (_) => const SendFeedbackView());
      case Routes.liveChatRoute:
        return MaterialPageRoute(builder: (_) => const LiveChatView());
      case Routes.firListRoute:
        return MaterialPageRoute(builder: (_) => const FirListView());
      case Routes.crimeReportListRoute:
        return MaterialPageRoute(builder: (_) => const CrimeReportListView());
      //patorilling officer routes
      case Routes.patrollingOfficerDashboardRoute:
        return MaterialPageRoute(
            builder: (_) => const PatrollingOfficerDashboard());

      case Routes.alertsDetialsRoute:
        return MaterialPageRoute(builder: (_) => const AlertsDetailView());
      case Routes.sendReportToSspRoute:
        return MaterialPageRoute(builder: (_) => const SendReportToSsp());
      //ssp
      case Routes.sspDashboardRoute:
        return MaterialPageRoute(builder: (_) => const SspDashboard());
      case Routes.viewAllReportsRoute:
        return MaterialPageRoute(builder: (_) => const ViewAllReportsDetails());
      //sho
      case Routes.shoDashboardRoute:
        return MaterialPageRoute(builder: (_) => const ShoDashBoard());
      case Routes.generateReportRoute:
        return MaterialPageRoute(builder: (_) => const GenerateCaseReport());
      case Routes.viewCrimeSceneRoute:
        return MaterialPageRoute(builder: (_) => const CrimeSceneReport());
    }
    return _unDefinedRoute();
  }

  static Route<dynamic> _unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(StringManager.undefinedRoute),
        ),
        body: const Center(
          child: Text(StringManager.noRouteFound),
        ),
      ),
    );
  }
}
