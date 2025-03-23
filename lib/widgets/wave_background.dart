import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';

class WaveBackground extends StatelessWidget {
  const WaveBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: WaveWidget(
        config: CustomConfig(
          gradients: [
            [Colors.blue.shade100, Colors.blue.shade300],
            [Colors.cyan.shade100, Colors.cyan.shade200],
          ],
          durations: [35000, 19440],
          heightPercentages: [0.25, 0.5],
          gradientBegin: Alignment.bottomLeft,
          gradientEnd: Alignment.topRight,
        ),
        waveAmplitude: 0,
        size: const Size(double.infinity, double.infinity),
      ),
    );
  }
}
