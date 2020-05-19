///
//  Generated code. Do not modify.
//  source: ledManager.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Empty', package: const $pb.PackageName('ledmanager'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Empty clone() => Empty()..mergeFromMessage(this);
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty _defaultInstance;
}

class ColorValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ColorValue', package: const $pb.PackageName('ledmanager'), createEmptyInstance: create)
    ..a<$core.int>(1, 'R', $pb.PbFieldType.O3, protoName: 'R')
    ..a<$core.int>(2, 'G', $pb.PbFieldType.O3, protoName: 'G')
    ..a<$core.int>(3, 'B', $pb.PbFieldType.O3, protoName: 'B')
    ..a<$core.int>(4, 'Opacity', $pb.PbFieldType.O3, protoName: 'Opacity')
    ..hasRequiredFields = false
  ;

  ColorValue._() : super();
  factory ColorValue() => create();
  factory ColorValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ColorValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ColorValue clone() => ColorValue()..mergeFromMessage(this);
  ColorValue copyWith(void Function(ColorValue) updates) => super.copyWith((message) => updates(message as ColorValue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ColorValue create() => ColorValue._();
  ColorValue createEmptyInstance() => create();
  static $pb.PbList<ColorValue> createRepeated() => $pb.PbList<ColorValue>();
  @$core.pragma('dart2js:noInline')
  static ColorValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ColorValue>(create);
  static ColorValue _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get r => $_getIZ(0);
  @$pb.TagNumber(1)
  set r($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasR() => $_has(0);
  @$pb.TagNumber(1)
  void clearR() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get g => $_getIZ(1);
  @$pb.TagNumber(2)
  set g($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasG() => $_has(1);
  @$pb.TagNumber(2)
  void clearG() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get b => $_getIZ(2);
  @$pb.TagNumber(3)
  set b($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasB() => $_has(2);
  @$pb.TagNumber(3)
  void clearB() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get opacity => $_getIZ(3);
  @$pb.TagNumber(4)
  set opacity($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOpacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpacity() => clearField(4);
}

class ColorValueString extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ColorValueString', package: const $pb.PackageName('ledmanager'), createEmptyInstance: create)
    ..aOS(1, 'R', protoName: 'R')
    ..aOS(2, 'G', protoName: 'G')
    ..aOS(3, 'B', protoName: 'B')
    ..aOS(4, 'Opacity', protoName: 'Opacity')
    ..hasRequiredFields = false
  ;

  ColorValueString._() : super();
  factory ColorValueString() => create();
  factory ColorValueString.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ColorValueString.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ColorValueString clone() => ColorValueString()..mergeFromMessage(this);
  ColorValueString copyWith(void Function(ColorValueString) updates) => super.copyWith((message) => updates(message as ColorValueString));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ColorValueString create() => ColorValueString._();
  ColorValueString createEmptyInstance() => create();
  static $pb.PbList<ColorValueString> createRepeated() => $pb.PbList<ColorValueString>();
  @$core.pragma('dart2js:noInline')
  static ColorValueString getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ColorValueString>(create);
  static ColorValueString _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get r => $_getSZ(0);
  @$pb.TagNumber(1)
  set r($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasR() => $_has(0);
  @$pb.TagNumber(1)
  void clearR() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get g => $_getSZ(1);
  @$pb.TagNumber(2)
  set g($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasG() => $_has(1);
  @$pb.TagNumber(2)
  void clearG() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get b => $_getSZ(2);
  @$pb.TagNumber(3)
  set b($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasB() => $_has(2);
  @$pb.TagNumber(3)
  void clearB() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get opacity => $_getSZ(3);
  @$pb.TagNumber(4)
  set opacity($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOpacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpacity() => clearField(4);
}

class State extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('State', package: const $pb.PackageName('ledmanager'), createEmptyInstance: create)
    ..aOB(1, 'TurnedOn', protoName: 'TurnedOn')
    ..hasRequiredFields = false
  ;

  State._() : super();
  factory State() => create();
  factory State.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory State.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  State clone() => State()..mergeFromMessage(this);
  State copyWith(void Function(State) updates) => super.copyWith((message) => updates(message as State));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static State create() => State._();
  State createEmptyInstance() => create();
  static $pb.PbList<State> createRepeated() => $pb.PbList<State>();
  @$core.pragma('dart2js:noInline')
  static State getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<State>(create);
  static State _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get turnedOn => $_getBF(0);
  @$pb.TagNumber(1)
  set turnedOn($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTurnedOn() => $_has(0);
  @$pb.TagNumber(1)
  void clearTurnedOn() => clearField(1);
}

