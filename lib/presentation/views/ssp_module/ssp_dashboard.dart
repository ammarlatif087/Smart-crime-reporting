import 'package:crime_reporting_app/app/index.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SspDashboard extends StatelessWidget {
  const SspDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    List<CrimeRateData> getCrimeRateData = [
      CrimeRateData('Region A', 8.5),
      CrimeRateData('Region B', 6.2),
      CrimeRateData('Region C', 14.8),
      CrimeRateData('Region D', 40.8),
      CrimeRateData('Region E', 41.8),
      CrimeRateData('Region F', 42.8),
      CrimeRateData('Region G', 23.8),
      // Add more data points as needed
    ];

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.r),
            child: Column(
              children: [
                Utils.popinSemBoldText(
                  'All reports',
                  fontSize: 24.sp,
                ),
                10.spaceY,
                ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 8,
                      child: ListTile(
                        onTap: () => Get.toNamed(Routes.viewAllReportsRoute),
                        title: Utils.popinMedText(
                          'Report Title',
                          fontSize: 20.sp,
                        ),
                        subtitle: Utils.popinMedText(
                          'Region',
                          fontSize: 16.sp,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return 10.spaceY;
                  },
                ),
                20.spaceY,
                SfCartesianChart(
                  isTransposed: true,
                  primaryXAxis: CategoryAxis(),
                  title: ChartTitle(text: 'Crime Rate in Regions'),
                  legend: const Legend(isVisible: true),
                  series: <ChartSeries>[
                    BarSeries<CrimeRateData, String>(
                      dataSource: getCrimeRateData,
                      xValueMapper: (CrimeRateData data, _) => data.region,
                      yValueMapper: (CrimeRateData data, _) => data.crimeRate,
                      dataLabelSettings:
                          const DataLabelSettings(isVisible: true),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CrimeRateData {
  final String region;
  final double crimeRate;

  CrimeRateData(this.region, this.crimeRate);
}
