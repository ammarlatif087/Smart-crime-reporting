import 'package:crime_reporting_app/presentation/views/admin_module/admin_dashboard.dart';
import 'package:crime_reporting_app/presentation/views/admin_module/manage_feedbacks.dart';
import 'package:crime_reporting_app/presentation/views/admin_module/manage_reports_view.dart';
import 'package:crime_reporting_app/presentation/views/admin_module/verify_officers.dart';
import 'package:crime_reporting_app/presentation/views/login/login_view.dart';
import 'package:crime_reporting_app/presentation/views/sign_up/sign_up.dart';
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
