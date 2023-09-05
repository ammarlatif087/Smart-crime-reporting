import 'package:crime_reporting_app/app/index.dart';

import '../../common/app_bar.dart';
import '../../common/textfield_widget.dart';

class CrimeReportListView extends StatelessWidget {
  const CrimeReportListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'All Reports Registered'),
      body: Padding(
        padding: EdgeInsets.all(18.w),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 8,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.h, horizontal: 20.w),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30.r,
                              child: const Icon(Icons.person),
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Utils.popinSemBoldText('Name'),
                                Utils.popinSemBoldText('Crime Type'),
                                Utils.popinMedText('Adress'),
                                Utils.popinMedText('10:00 am'),
                              ],
                            ),
                          ),
                          Utils.popinMedText(
                            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available',
                          ),
                          10.spaceY,
                          const TextfieldWidget(
                            hintText: 'Write a feed back for us',
                            suffixIcon: Icon(
                              Icons.send,
                            ),
                          ),
                        ],
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
      ),
    );
  }
}
