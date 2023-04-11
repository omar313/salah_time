// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppPrayerTime {
  String get prayerName => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppPrayerTimeCopyWith<AppPrayerTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPrayerTimeCopyWith<$Res> {
  factory $AppPrayerTimeCopyWith(
          AppPrayerTime value, $Res Function(AppPrayerTime) then) =
      _$AppPrayerTimeCopyWithImpl<$Res, AppPrayerTime>;
  @useResult
  $Res call({String prayerName, String startTime, String endTime});
}

/// @nodoc
class _$AppPrayerTimeCopyWithImpl<$Res, $Val extends AppPrayerTime>
    implements $AppPrayerTimeCopyWith<$Res> {
  _$AppPrayerTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prayerName = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      prayerName: null == prayerName
          ? _value.prayerName
          : prayerName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppPrayerTimeCopyWith<$Res>
    implements $AppPrayerTimeCopyWith<$Res> {
  factory _$$_AppPrayerTimeCopyWith(
          _$_AppPrayerTime value, $Res Function(_$_AppPrayerTime) then) =
      __$$_AppPrayerTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String prayerName, String startTime, String endTime});
}

/// @nodoc
class __$$_AppPrayerTimeCopyWithImpl<$Res>
    extends _$AppPrayerTimeCopyWithImpl<$Res, _$_AppPrayerTime>
    implements _$$_AppPrayerTimeCopyWith<$Res> {
  __$$_AppPrayerTimeCopyWithImpl(
      _$_AppPrayerTime _value, $Res Function(_$_AppPrayerTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prayerName = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$_AppPrayerTime(
      prayerName: null == prayerName
          ? _value.prayerName
          : prayerName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AppPrayerTime implements _AppPrayerTime {
  const _$_AppPrayerTime(
      {required this.prayerName,
      required this.startTime,
      required this.endTime});

  @override
  final String prayerName;
  @override
  final String startTime;
  @override
  final String endTime;

  @override
  String toString() {
    return 'AppPrayerTime(prayerName: $prayerName, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppPrayerTime &&
            (identical(other.prayerName, prayerName) ||
                other.prayerName == prayerName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prayerName, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppPrayerTimeCopyWith<_$_AppPrayerTime> get copyWith =>
      __$$_AppPrayerTimeCopyWithImpl<_$_AppPrayerTime>(this, _$identity);
}

abstract class _AppPrayerTime implements AppPrayerTime {
  const factory _AppPrayerTime(
      {required final String prayerName,
      required final String startTime,
      required final String endTime}) = _$_AppPrayerTime;

  @override
  String get prayerName;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  @JsonKey(ignore: true)
  _$$_AppPrayerTimeCopyWith<_$_AppPrayerTime> get copyWith =>
      throw _privateConstructorUsedError;
}
