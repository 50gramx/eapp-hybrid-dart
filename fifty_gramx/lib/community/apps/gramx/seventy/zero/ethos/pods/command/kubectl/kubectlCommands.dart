import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/crud/create/kubectlCreateCommands.dart';

class KubectlCommands {
  KubectlCommands._();

  /// contains the package name as per the base os
  static String _packageName = "";

  /// contains the package path as per the base os
  static String _packagePath = "";

  /// nested class for create commands
  static late KubectlCreateCommands create;

  KubectlCommands(String packagePath) {
    // package name is same in all base os, so no checks needed
    _packageName = "kubectl";

    // package path is defined as per the os and it's cluster manager
    // so we take this from parent class invoking this class
    // todo: add more functionalities if it's supposed to extended as a
    // todo: separate functionality
    _packagePath = "$packagePath$_packageName ";

    create = KubectlCreateCommands(_packagePath);
  }
}

/**
 * -- types of resources --
 * cronjob
 * ingress
 * poddisruptionbudget
 * priorityclass
 * quota
 * service clusterip
 * service externalname
 * service loadbalancer
 * service nodeport
 * serviceaccount -- persona
 * token
 *
 * -- cluster resources --
 * clusterrole
 * clusterrolebinding
 * namespace
 *
 *
 * -- namespaced resources --
 * configmap
 * deployment
 * job
 * role
 * rolebinding
 * secret
 * secret docker-registry
 * secret generic
 * secret tls
 * service
 *
 * */

/**
 * -- getting started --
 * get
 * run
 * expose
 * delete
 *
 * -- app management commands --
 * apply
 * annotate
 * autoscale
 * debug
 * diff
 * edit
 * kustomize
 * label
 * patch
 * replace
 * rollout
 * scale
 * set
 * wait
 *
 * -- working with apps --
 * attach
 * auth
 * cp
 * describe
 * exec
 * logs
 * port-forward
 * proxy
 * tcp
 *
 * -- cluster management --
 * api-versions
 * certificate
 * cluster-info
 * cordon
 * drain
 * taint
 * uncordon
 *
 * -- settings and usage --
 * alpha
 * api-resources
 * completion
 * config
 * explain
 * options
 * plugin
 * version
 * */
