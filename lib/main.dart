import 'package:dispatch_management_system/common_selection/bloc/common_list_bloc.dart';
import 'package:dispatch_management_system/routes.dart';
import 'package:dispatch_management_system/service_locator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) =>
            getIt<CommonListBloc>()..add(CommonListEvent.fetchCustomers()),
      ),
    ],
    child: MaterialApp.router(
      routerConfig: appRoutes,
    ),
  ));
}
