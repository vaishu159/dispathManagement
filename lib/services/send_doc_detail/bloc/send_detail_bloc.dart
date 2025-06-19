import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

part 'send_detail_bloc.freezed.dart';

@freezed
class SendDetailState with _$SendDetailState {
  const factory SendDetailState.initial() = _Initial;
  const factory SendDetailState.loading() = _Loading;
  const factory SendDetailState.error({String? error}) = _Error;
  const factory SendDetailState.success({String? error}) = _Success;
}

@freezed
class SendDetailEvent with _$SendDetailEvent {
  const factory SendDetailEvent.sendDetailsEvent({
    Uri? emailUri,
    Uri? whatsappUri,
  }) = SendDetailsEvent;

  const factory SendDetailEvent.onSuccessEvent() = OnSuccessEvent;
}

@LazySingleton()
class SendDetailBloc extends Bloc<SendDetailEvent, SendDetailState> {
  SendDetailBloc() : super(const SendDetailState.initial()) {
    on<SendDetailEvent>((event, emit) async {
      switch (event) {
        case SendDetailsEvent(:final emailUri, :final whatsappUri):
          emit(const SendDetailState.loading());
          try {
            if (emailUri != null && await canLaunchUrl(emailUri)) {
              await launchUrl(emailUri);
            }
            if (whatsappUri != null && await canLaunchUrl(whatsappUri)) {
              await launchUrl(whatsappUri);
            }
            emit(const SendDetailState.success());
          } catch (e) {
            emit(SendDetailState.error(error: e.toString()));
          }
          break;

        case OnSuccessEvent():
          emit(const SendDetailState.success());
          break;
      }
    });
  }
}
