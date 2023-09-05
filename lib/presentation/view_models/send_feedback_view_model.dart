import 'package:crime_reporting_app/app/index.dart';

class SendFeedbackViewModel extends ChangeNotifier {
  List<String> _reportList = [
    'Robbery',
    'Murder',
  ];
  String _selectedReport = '';

  List<String> get reports => _reportList;

  String get selectedReports => _selectedReport;

  set selectedReports(String value) {
    _selectedReport = value;
    notifyListeners();
  }

  set reports(List<String> value) {
    _reportList = value;
    notifyListeners();
  }
}
