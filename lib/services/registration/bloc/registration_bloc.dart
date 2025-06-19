import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_database/firebase_database.dart';

part 'registration_bloc.freezed.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = Initial;
  const factory RegistrationState.loading() = Loading;
  const factory RegistrationState.registrationSuccess() = RegistrationSuccess;
  const factory RegistrationState.failure(String message) = Failure;
}

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.submit({
    String? customerName,
    String? companyName,
    String? mobile,
    String? email,
  }) = Submit;
  const factory RegistrationEvent.onSuccessEvent() = OnSuccessEvent;
}

@LazySingleton()
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final DatabaseReference _dbRef = FirebaseDatabase.instance.ref("customers");

  RegistrationBloc() : super(const RegistrationState.initial()) {
    on<Submit>(_onSubmit);
  }

  Future<void> _onSubmit(Submit event, Emitter<RegistrationState> emit) async {
    emit(const RegistrationState.loading());

    try {
      await _dbRef.push().set({
        'customerName': event.customerName,
        'companyName': event.companyName,
        'mobile': event.mobile,
        'email': event.email,
        'createdAt': DateTime.now().toIso8601String(),
      });

      emit(const RegistrationState.registrationSuccess());
    } catch (e) {
      emit(RegistrationState.failure(e.toString()));
    }
  }
}
