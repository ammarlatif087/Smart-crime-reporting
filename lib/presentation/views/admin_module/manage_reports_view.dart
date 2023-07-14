import 'package:crime_reporting_app/presentation/common/app_bar.dart';
import 'package:crime_reporting_app/presentation/view_models/manage_report_view_model.dart';

import '../../../app/index.dart';

class ManageReportsView extends StatelessWidget {
  const ManageReportsView({super.key});

  @override
  Widget build(BuildContext context) {
    final crimeReportsProvider = Provider.of<ManageReportViewModel>(context);
    final crimeReports = crimeReportsProvider.crimeReports;

    return Scaffold(
      appBar: buildAppBar(title: 'Manage Reports'),
      body: GridView.builder(
        itemCount: crimeReports.length,
        itemBuilder: (BuildContext context, int index) {
          final crimeReport = crimeReports[index];
          return Card(
            elevation: 8,
            child: Padding(
              padding: EdgeInsets.all(18.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Utils.popinSemBoldText(
                        crimeReport.userName,
                        fontSize: 16.sp,
                      ),
                      PopupMenuButton(
                        padding: const EdgeInsets.all(0),
                        itemBuilder: (BuildContext context) => [
                          const PopupMenuItem(
                            value: 'edit',
                            child: Text('Edit'),
                          ),
                          const PopupMenuItem(
                            value: 'delete',
                            child: Text('Delete'),
                          ),
                        ],
                        onSelected: (value) {
                          if (value == 'edit') {
                            // Handle edit action
                            print('Edit action');
                          } else if (value == 'delete') {
                            // Handle delete action
                            print('Delete action');
                          }
                        },
                      ),
                    ],
                  ),
                  //   Text(crimeReport.userName),

                  Utils.popinSemBoldText(
                    crimeReport.title,
                  ),
                  Utils.popinSemBoldText(crimeReport.description),
                  Utils.popinSemBoldText(crimeReport.status),
                  Utils.popinSemBoldText(crimeReport.remarks),
                  Utils.popinSemBoldText(crimeReport.evidense),
                  Utils.popinSemBoldText(crimeReport.investigationOfficer),
                ],
              ),
            ),
          );
        },
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      ),
    );
  }
}
