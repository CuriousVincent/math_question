// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuestionEventTearOff {
  const _$QuestionEventTearOff();

  LoadQuestions loadQuestions() {
    return const LoadQuestions();
  }

  SummitQuestion summitQuestion({required List<String> ans}) {
    return SummitQuestion(
      ans: ans,
    );
  }
}

/// @nodoc
const $QuestionEvent = _$QuestionEventTearOff();

/// @nodoc
mixin _$QuestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadQuestions,
    required TResult Function(List<String> ans) summitQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadQuestions,
    TResult Function(List<String> ans)? summitQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadQuestions,
    TResult Function(List<String> ans)? summitQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadQuestions value) loadQuestions,
    required TResult Function(SummitQuestion value) summitQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadQuestions value)? loadQuestions,
    TResult Function(SummitQuestion value)? summitQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadQuestions value)? loadQuestions,
    TResult Function(SummitQuestion value)? summitQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEventCopyWith<$Res> {
  factory $QuestionEventCopyWith(
          QuestionEvent value, $Res Function(QuestionEvent) then) =
      _$QuestionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionEventCopyWithImpl<$Res>
    implements $QuestionEventCopyWith<$Res> {
  _$QuestionEventCopyWithImpl(this._value, this._then);

  final QuestionEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionEvent) _then;
}

/// @nodoc
abstract class $LoadQuestionsCopyWith<$Res> {
  factory $LoadQuestionsCopyWith(
          LoadQuestions value, $Res Function(LoadQuestions) then) =
      _$LoadQuestionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadQuestionsCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res>
    implements $LoadQuestionsCopyWith<$Res> {
  _$LoadQuestionsCopyWithImpl(
      LoadQuestions _value, $Res Function(LoadQuestions) _then)
      : super(_value, (v) => _then(v as LoadQuestions));

  @override
  LoadQuestions get _value => super._value as LoadQuestions;
}

/// @nodoc

class _$LoadQuestions implements LoadQuestions {
  const _$LoadQuestions();

  @override
  String toString() {
    return 'QuestionEvent.loadQuestions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadQuestions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadQuestions,
    required TResult Function(List<String> ans) summitQuestion,
  }) {
    return loadQuestions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadQuestions,
    TResult Function(List<String> ans)? summitQuestion,
  }) {
    return loadQuestions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadQuestions,
    TResult Function(List<String> ans)? summitQuestion,
    required TResult orElse(),
  }) {
    if (loadQuestions != null) {
      return loadQuestions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadQuestions value) loadQuestions,
    required TResult Function(SummitQuestion value) summitQuestion,
  }) {
    return loadQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadQuestions value)? loadQuestions,
    TResult Function(SummitQuestion value)? summitQuestion,
  }) {
    return loadQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadQuestions value)? loadQuestions,
    TResult Function(SummitQuestion value)? summitQuestion,
    required TResult orElse(),
  }) {
    if (loadQuestions != null) {
      return loadQuestions(this);
    }
    return orElse();
  }
}

abstract class LoadQuestions implements QuestionEvent {
  const factory LoadQuestions() = _$LoadQuestions;
}

/// @nodoc
abstract class $SummitQuestionCopyWith<$Res> {
  factory $SummitQuestionCopyWith(
          SummitQuestion value, $Res Function(SummitQuestion) then) =
      _$SummitQuestionCopyWithImpl<$Res>;
  $Res call({List<String> ans});
}

/// @nodoc
class _$SummitQuestionCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res>
    implements $SummitQuestionCopyWith<$Res> {
  _$SummitQuestionCopyWithImpl(
      SummitQuestion _value, $Res Function(SummitQuestion) _then)
      : super(_value, (v) => _then(v as SummitQuestion));

  @override
  SummitQuestion get _value => super._value as SummitQuestion;

  @override
  $Res call({
    Object? ans = freezed,
  }) {
    return _then(SummitQuestion(
      ans: ans == freezed
          ? _value.ans
          : ans // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$SummitQuestion implements SummitQuestion {
  const _$SummitQuestion({required this.ans});

  @override
  final List<String> ans;

  @override
  String toString() {
    return 'QuestionEvent.summitQuestion(ans: $ans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SummitQuestion &&
            const DeepCollectionEquality().equals(other.ans, ans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ans));

  @JsonKey(ignore: true)
  @override
  $SummitQuestionCopyWith<SummitQuestion> get copyWith =>
      _$SummitQuestionCopyWithImpl<SummitQuestion>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadQuestions,
    required TResult Function(List<String> ans) summitQuestion,
  }) {
    return summitQuestion(ans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadQuestions,
    TResult Function(List<String> ans)? summitQuestion,
  }) {
    return summitQuestion?.call(ans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadQuestions,
    TResult Function(List<String> ans)? summitQuestion,
    required TResult orElse(),
  }) {
    if (summitQuestion != null) {
      return summitQuestion(ans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadQuestions value) loadQuestions,
    required TResult Function(SummitQuestion value) summitQuestion,
  }) {
    return summitQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadQuestions value)? loadQuestions,
    TResult Function(SummitQuestion value)? summitQuestion,
  }) {
    return summitQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadQuestions value)? loadQuestions,
    TResult Function(SummitQuestion value)? summitQuestion,
    required TResult orElse(),
  }) {
    if (summitQuestion != null) {
      return summitQuestion(this);
    }
    return orElse();
  }
}

abstract class SummitQuestion implements QuestionEvent {
  const factory SummitQuestion({required List<String> ans}) = _$SummitQuestion;

  List<String> get ans;
  @JsonKey(ignore: true)
  $SummitQuestionCopyWith<SummitQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QuestionStateTearOff {
  const _$QuestionStateTearOff();

  Initial initial() {
    return const Initial();
  }

  InitialQuestionLoaded initialDataLoad() {
    return const InitialQuestionLoaded();
  }

  Summit summit(int res) {
    return Summit(
      res,
    );
  }
}

/// @nodoc
const $QuestionState = _$QuestionStateTearOff();

/// @nodoc
mixin _$QuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialDataLoad,
    required TResult Function(int res) summit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialDataLoad,
    TResult Function(int res)? summit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialDataLoad,
    TResult Function(int res)? summit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InitialQuestionLoaded value) initialDataLoad,
    required TResult Function(Summit value) summit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InitialQuestionLoaded value)? initialDataLoad,
    TResult Function(Summit value)? summit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InitialQuestionLoaded value)? initialDataLoad,
    TResult Function(Summit value)? summit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  final QuestionState _value;
  // ignore: unused_field
  final $Res Function(QuestionState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$QuestionStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'QuestionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialDataLoad,
    required TResult Function(int res) summit,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialDataLoad,
    TResult Function(int res)? summit,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialDataLoad,
    TResult Function(int res)? summit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InitialQuestionLoaded value) initialDataLoad,
    required TResult Function(Summit value) summit,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InitialQuestionLoaded value)? initialDataLoad,
    TResult Function(Summit value)? summit,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InitialQuestionLoaded value)? initialDataLoad,
    TResult Function(Summit value)? summit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements QuestionState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $InitialQuestionLoadedCopyWith<$Res> {
  factory $InitialQuestionLoadedCopyWith(InitialQuestionLoaded value,
          $Res Function(InitialQuestionLoaded) then) =
      _$InitialQuestionLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialQuestionLoadedCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements $InitialQuestionLoadedCopyWith<$Res> {
  _$InitialQuestionLoadedCopyWithImpl(
      InitialQuestionLoaded _value, $Res Function(InitialQuestionLoaded) _then)
      : super(_value, (v) => _then(v as InitialQuestionLoaded));

  @override
  InitialQuestionLoaded get _value => super._value as InitialQuestionLoaded;
}

/// @nodoc

class _$InitialQuestionLoaded implements InitialQuestionLoaded {
  const _$InitialQuestionLoaded();

  @override
  String toString() {
    return 'QuestionState.initialDataLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitialQuestionLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialDataLoad,
    required TResult Function(int res) summit,
  }) {
    return initialDataLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialDataLoad,
    TResult Function(int res)? summit,
  }) {
    return initialDataLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialDataLoad,
    TResult Function(int res)? summit,
    required TResult orElse(),
  }) {
    if (initialDataLoad != null) {
      return initialDataLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InitialQuestionLoaded value) initialDataLoad,
    required TResult Function(Summit value) summit,
  }) {
    return initialDataLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InitialQuestionLoaded value)? initialDataLoad,
    TResult Function(Summit value)? summit,
  }) {
    return initialDataLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InitialQuestionLoaded value)? initialDataLoad,
    TResult Function(Summit value)? summit,
    required TResult orElse(),
  }) {
    if (initialDataLoad != null) {
      return initialDataLoad(this);
    }
    return orElse();
  }
}

abstract class InitialQuestionLoaded implements QuestionState {
  const factory InitialQuestionLoaded() = _$InitialQuestionLoaded;
}

/// @nodoc
abstract class $SummitCopyWith<$Res> {
  factory $SummitCopyWith(Summit value, $Res Function(Summit) then) =
      _$SummitCopyWithImpl<$Res>;
  $Res call({int res});
}

/// @nodoc
class _$SummitCopyWithImpl<$Res> extends _$QuestionStateCopyWithImpl<$Res>
    implements $SummitCopyWith<$Res> {
  _$SummitCopyWithImpl(Summit _value, $Res Function(Summit) _then)
      : super(_value, (v) => _then(v as Summit));

  @override
  Summit get _value => super._value as Summit;

  @override
  $Res call({
    Object? res = freezed,
  }) {
    return _then(Summit(
      res == freezed
          ? _value.res
          : res // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Summit implements Summit {
  const _$Summit(this.res);

  @override
  final int res;

  @override
  String toString() {
    return 'QuestionState.summit(res: $res)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Summit &&
            (identical(other.res, res) || other.res == res));
  }

  @override
  int get hashCode => Object.hash(runtimeType, res);

  @JsonKey(ignore: true)
  @override
  $SummitCopyWith<Summit> get copyWith =>
      _$SummitCopyWithImpl<Summit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() initialDataLoad,
    required TResult Function(int res) summit,
  }) {
    return summit(res);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialDataLoad,
    TResult Function(int res)? summit,
  }) {
    return summit?.call(res);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? initialDataLoad,
    TResult Function(int res)? summit,
    required TResult orElse(),
  }) {
    if (summit != null) {
      return summit(res);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(InitialQuestionLoaded value) initialDataLoad,
    required TResult Function(Summit value) summit,
  }) {
    return summit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InitialQuestionLoaded value)? initialDataLoad,
    TResult Function(Summit value)? summit,
  }) {
    return summit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(InitialQuestionLoaded value)? initialDataLoad,
    TResult Function(Summit value)? summit,
    required TResult orElse(),
  }) {
    if (summit != null) {
      return summit(this);
    }
    return orElse();
  }
}

abstract class Summit implements QuestionState {
  const factory Summit(int res) = _$Summit;

  int get res;
  @JsonKey(ignore: true)
  $SummitCopyWith<Summit> get copyWith => throw _privateConstructorUsedError;
}
