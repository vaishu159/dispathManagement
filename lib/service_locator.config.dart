// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dispatch_management_system/common_selection/bloc/common_list_bloc.dart'
    as _i949;
import 'package:dispatch_management_system/services/registration/bloc/registration_bloc.dart'
    as _i95;
import 'package:dispatch_management_system/services/send_doc_detail/bloc/send_detail_bloc.dart'
    as _i725;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i95.RegistrationBloc>(() => _i95.RegistrationBloc());
    gh.lazySingleton<_i725.SendDetailBloc>(() => _i725.SendDetailBloc());
    gh.lazySingleton<_i949.CommonListBloc>(() => _i949.CommonListBloc());
    return this;
  }
}
