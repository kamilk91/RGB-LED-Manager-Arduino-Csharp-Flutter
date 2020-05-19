///
//  Generated code. Do not modify.
//  source: ledManager.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'ledManager.pb.dart' as $0;
export 'ledManager.pb.dart';

class LedManagerClient extends $grpc.Client {
  static final _$changeLightState = $grpc.ClientMethod<$0.State, $0.Empty>(
      '/ledmanager.LedManager/ChangeLightState',
      ($0.State value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setColor = $grpc.ClientMethod<$0.ColorValue, $0.Empty>(
      '/ledmanager.LedManager/SetColor',
      ($0.ColorValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$setColorString =
      $grpc.ClientMethod<$0.ColorValueString, $0.Empty>(
          '/ledmanager.LedManager/SetColorString',
          ($0.ColorValueString value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  LedManagerClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.Empty> changeLightState($0.State request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$changeLightState, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Empty> setColor($async.Stream<$0.ColorValue> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$setColor, request, options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Empty> setColorString(
      $async.Stream<$0.ColorValueString> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$setColorString, request, options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class LedManagerServiceBase extends $grpc.Service {
  $core.String get $name => 'ledmanager.LedManager';

  LedManagerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.State, $0.Empty>(
        'ChangeLightState',
        changeLightState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.State.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ColorValue, $0.Empty>(
        'SetColor',
        setColor,
        true,
        false,
        ($core.List<$core.int> value) => $0.ColorValue.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ColorValueString, $0.Empty>(
        'SetColorString',
        setColorString,
        true,
        false,
        ($core.List<$core.int> value) => $0.ColorValueString.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> changeLightState_Pre(
      $grpc.ServiceCall call, $async.Future<$0.State> request) async {
    return changeLightState(call, await request);
  }

  $async.Future<$0.Empty> changeLightState(
      $grpc.ServiceCall call, $0.State request);
  $async.Future<$0.Empty> setColor(
      $grpc.ServiceCall call, $async.Stream<$0.ColorValue> request);
  $async.Future<$0.Empty> setColorString(
      $grpc.ServiceCall call, $async.Stream<$0.ColorValueString> request);
}
