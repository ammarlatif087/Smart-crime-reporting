import 'package:crime_reporting_app/app/index.dart';
import 'package:crime_reporting_app/presentation/common/app_bar.dart';

class CrimeSceneReport extends StatelessWidget {
  const CrimeSceneReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Crime scene Reports'),
      body: Padding(
        padding: EdgeInsets.all(18.w),
        child: ListView.separated(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Utils.popinSemBoldText(
                        'Report Detail',
                        fontSize: 24.sp,
                      ),
                      content: const Column(
                        children: [],
                      ),
                    );
                  },
                ),
                title: Utils.popinSemBoldText('Case no', fontSize: 16.sp),
                subtitle: Utils.popinSemBoldText(
                  'Crime Type',
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return 10.spaceY;
          },
        ),
      ),
    );
  }
}
