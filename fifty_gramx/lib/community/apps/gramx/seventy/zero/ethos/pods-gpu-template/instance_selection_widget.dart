import 'package:eapp_dart_domain/ethos/elint/collars/DC499999999.pb.dart'
    as DC499999999_pb;
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods-gpu-template/instance_type_widget.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class InstanceSelectionWidget extends StatelessWidget {
  final Function(InstanceOption)? onInstanceSelected; // Define callback

  const InstanceSelectionWidget({
    Key? key,
    this.onInstanceSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        depth: -6,
        disableDepth: true,
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.all(Radius.circular(24)),
        ),
        border: NeumorphicBorder(
          isEnabled: false,
          color: AppColors.backgroundTertiary(context),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: InstanceType(
        title: 'Compute Optimised Instances',
        clockSpeed: '3.2 GHz',
        memoryType: 'DDR4 RAM',
        storage: 'NVMe',
        options: [
          InstanceOption(
              price: '₹0.31',
              vcpus: '0.125',
              ram: '0.25',
              storage: '5',
              resourceLimits:
                  DC499999999_pb.ResourceLimits(cpu: "125m", memory: "256Mi")),
          InstanceOption(
              price: '₹0.63',
              vcpus: '0.25',
              ram: '0.5',
              storage: '5',
              resourceLimits:
                  DC499999999_pb.ResourceLimits(cpu: "250m", memory: "512Mi")),
          InstanceOption(
              price: '₹1.26',
              vcpus: '0.5',
              ram: '1',
              storage: '5',
              resourceLimits:
                  DC499999999_pb.ResourceLimits(cpu: "500m", memory: "1024Mi")),
          InstanceOption(
              price: '₹1.89',
              vcpus: '0.75',
              ram: '1.5',
              storage: '5',
              resourceLimits:
                  DC499999999_pb.ResourceLimits(cpu: "750m", memory: "1536Mi")),
          InstanceOption(
              price: '₹2.53',
              vcpus: '1',
              ram: '2',
              storage: '10',
              resourceLimits: DC499999999_pb.ResourceLimits(
                  cpu: "1000m", memory: "2048Mi")),
          InstanceOption(
              price: '₹5.07',
              vcpus: '2',
              ram: '4',
              storage: '20',
              resourceLimits: DC499999999_pb.ResourceLimits(
                  cpu: "2000m", memory: "4096Mi")),
          InstanceOption(
              price: '₹10.13',
              vcpus: '4',
              ram: '8',
              storage: '40',
              resourceLimits: DC499999999_pb.ResourceLimits(
                  cpu: "4000m", memory: "8192Mi")),
          InstanceOption(
              price: '₹15.19',
              vcpus: '6',
              ram: '12',
              storage: '60',
              resourceLimits: DC499999999_pb.ResourceLimits(
                  cpu: "6000m", memory: "12288Mi")),
          InstanceOption(
              price: '₹20.06',
              vcpus: '8',
              ram: '16',
              storage: '80',
              resourceLimits: DC499999999_pb.ResourceLimits(
                  cpu: "8000m", memory: "16384Mi")),
          InstanceOption(
              price: '₹30.09',
              vcpus: '12',
              ram: '24',
              storage: '120',
              resourceLimits: DC499999999_pb.ResourceLimits(
                  cpu: "12000m", memory: "24576Mi")),
          InstanceOption(
              price: '₹40.52',
              vcpus: '16',
              ram: '32',
              storage: '160',
              resourceLimits: DC499999999_pb.ResourceLimits(
                  cpu: "16000m", memory: "32768Mi")),
          InstanceOption(
              price: '₹80.20',
              vcpus: '32',
              ram: '64',
              storage: '320',
              resourceLimits: DC499999999_pb.ResourceLimits(
                  cpu: "32000m", memory: "65536Mi")),
          InstanceOption(
              price: '₹120.30',
              vcpus: '48',
              ram: '96',
              storage: '480',
              resourceLimits: DC499999999_pb.ResourceLimits(
                  cpu: "48000m", memory: "98304Mi")),
        ],
        onOptionSelected: (InstanceOption selectedOption) {
          if (onInstanceSelected != null) {
            onInstanceSelected!(selectedOption);
          }
        },
      ),
    );
  }
}
