import 'package:dispatch_management_system/common_selection/model/customer_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_database/firebase_database.dart';

part 'common_list_bloc.freezed.dart';

@freezed
class CommonListState with _$CommonListState {
  const factory CommonListState.initial() = CommonListStateInitial;
  const factory CommonListState.loading() = CommonListStateLoading;
  const factory CommonListState.success(List<CustomerModel> customers) =
      CommonListStateSuccess;
  const factory CommonListState.failure(String message) =
      CommonListStateFailure;
}

@freezed
class CommonListEvent with _$CommonListEvent {
  const factory CommonListEvent.fetchCustomers() = FetchCustomers;
}

@LazySingleton()
class CommonListBloc extends Bloc<CommonListEvent, CommonListState> {
  List<CustomerModel> customersList = [];
  final DatabaseReference _dbRef = FirebaseDatabase.instance.ref("customers");

  CommonListBloc() : super(const CommonListState.initial()) {
    on<FetchCustomers>(_fetchUsers);
  }

  Future<void> _fetchUsers(
      FetchCustomers event, Emitter<CommonListState> emit) async {
    emit(const CommonListState.loading());
    try {
      final snapshot = await _dbRef.get();
      if (snapshot.exists) {
        final data = snapshot.value as Map<dynamic, dynamic>;
        final List<CustomerModel> customers = data.entries.map((entry) {
          return CustomerModel.fromMap(
              entry.key, Map<String, dynamic>.from(entry.value));
        }).toList();
        customersList = customers;
        emit(CommonListState.success(customers));
      } else {
        emit(const CommonListState.failure(""));
      }
    } catch (e) {
      emit(CommonListState.failure(e.toString()));
    }
  }
}
