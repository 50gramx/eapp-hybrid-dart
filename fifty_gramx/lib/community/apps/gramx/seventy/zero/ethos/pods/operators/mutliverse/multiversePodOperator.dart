import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/operators/mutliverse/chains/multiverseChainsOperator.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/operators/mutliverse/filesystem/multiverseFileSystemOperator.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/operators/mutliverse/ingress/multiverseIngressOperator.dart';

class MultiversePodOperator {
  // operates the multiverse pods
  static Map<String, dynamic> _multiversePodDetails = {};

  static MultiverseFileSystemOperator fsOp = MultiverseFileSystemOperator();
  static MultiverseChainsOperator xcOp = MultiverseChainsOperator();
  static MultiverseIngressOperator inOp = MultiverseIngressOperator();
}
