///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/organisation/create_organisation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
export 'create_organisation.pb.dart';

class CreateOrganisationServiceClient extends $grpc.Client {
  CreateOrganisationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);
}

abstract class CreateOrganisationServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.organisation.CreateOrganisationService';

  CreateOrganisationServiceBase() {}
}
