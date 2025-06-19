import 'package:dispatch_management_system/services/send_doc_detail/ui/send_doc_detail_view.dart';
import 'package:go_router/go_router.dart';


final docRoute = [
  GoRoute(
    path: SendDocDetailView.routeName,
    builder: (context, state) => SendDocDetailView(),
  ),

];
