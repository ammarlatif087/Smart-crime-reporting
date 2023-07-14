import '../../app/index.dart';

class ManageReportViewModel with ChangeNotifier {
  final List<CrimeReport> _crimeReports = [
    CrimeReport(
        id: 1,
        userName: 'User Name',
        title: 'Robbery',
        description: 'dummy description ',
        status: 'close',
        remarks: 'remarks data ',
        evidense: 'evidense data',
        investigationOfficer: 'police man'

        // userName: 'user name',
        ),
    CrimeReport(
        id: 1,
        userName: 'User Name',
        title: 'Robbery',
        description: 'dummy description ',
        status: 'close',
        remarks: 'remarks data ',
        evidense: 'evidense data',
        investigationOfficer: 'police man'

        // userName: 'user name',
        ),
    CrimeReport(
        id: 1,
        userName: 'User Name',
        title: 'Robbery',
        description: 'dummy description ',
        status: 'close',
        remarks: 'remarks data ',
        evidense: 'evidense data',
        investigationOfficer: 'police man'

        // userName: 'user name',
        ),
    CrimeReport(
        id: 1,
        userName: 'User Name',
        title: 'Robbery',
        description: 'dummy description ',
        status: 'close',
        remarks: 'remarks data ',
        evidense: 'evidense data',
        investigationOfficer: 'police man'

        // userName: 'user name',
        ),
  ];

  List<CrimeReport> get crimeReports => _crimeReports;

  void editCrimeReport(CrimeReport crimeReport) {
    // Update the crime report based on the user's changes
    crimeReport.title = 'Updated Crime';
    crimeReport.description = 'This crime report has been updated.';
    notifyListeners();
  }

  void deleteCrimeReport(CrimeReport crimeReport) {
    _crimeReports.remove(crimeReport);
    notifyListeners();
  }
}

class CrimeReport {
  final int id;
  String userName;
  String title;
  String description;
  String status;
  String remarks;
  String evidense;
  String investigationOfficer;

  CrimeReport({
    required this.id,
    required this.userName,
    required this.title,
    required this.description,
    required this.evidense,
    required this.investigationOfficer,
    required this.remarks,
    required this.status,
    // required this.userName,
  });
}
