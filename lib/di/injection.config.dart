// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../api/api_client.dart' as _i3;
import '../api/question_service.dart' as _i4;
import '../bloc/question_bloc.dart' as _i6;
import '../models/question_repo.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ApiClient>(() => _i3.ApiClient());
  gh.lazySingleton<_i4.QuestionService>(
      () => _i4.QuestionService(apiClient: get<_i3.ApiClient>()));
  gh.lazySingleton<_i5.QuestionRepository>(
      () => _i5.QuestionRepository(get<_i4.QuestionService>()));
  gh.factory<_i6.QuestionBloc>(() =>
      _i6.QuestionBloc(questionRepository: get<_i5.QuestionRepository>()));
  return get;
}
