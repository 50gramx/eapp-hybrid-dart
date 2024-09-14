import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/widgets.dart';

class LineChartWidget extends StatelessWidget {
  final List<double> data;

  LineChartWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        lineBarsData: [
          LineChartBarData(
            spots: List.generate(data.length, (index) {
              return FlSpot(index.toDouble(), data[index]);
            }),
            isCurved: true,
            color: AppColors.orange(context),
            barWidth: 2,
            belowBarData: BarAreaData(show: false),
          ),
        ],
        titlesData: FlTitlesData(show: false),
        gridData: FlGridData(show: false),
      ),
    );
  }
}
