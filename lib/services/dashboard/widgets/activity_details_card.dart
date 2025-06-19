import 'package:dispatch_management_system/components/responsive.dart';
import 'package:dispatch_management_system/services/dashboard/model/detail_model.dart';
import 'package:dispatch_management_system/services/registration/ui/register_customer_screen.dart';
import 'package:dispatch_management_system/services/send_doc_detail/ui/send_doc_detail_view.dart';
import 'package:dispatch_management_system/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class ActivityDetailsCard extends StatelessWidget {
  ActivityDetailsCard({super.key});
  final List<DetailModel> detailDataList = [
    DetailModel(
      image: "assets/image/img.png",
      value: "",
      title: "Send Document Detail",
      navigate: SendDocDetailView.routeName,
    ),
    DetailModel(
        image: "assets/image/img.png",
        value: "Total Customers",
        title: "Customer Registration",
        navigate: RegisterCustomerScreen.routeName),
    DetailModel(
        image: "assets/image/img.png",
        value: "12",
        title: "Active Client",
        navigate: RegisterCustomerScreen.routeName),
    DetailModel(
      image: "assets/image/img.png",
      value: "18",
      title: "Total Client",
      navigate: "/dashboard/clients",
    ),
    DetailModel(
      image: "assets/image/img.png",
      value: "340",
      title: "Page Visits",
      navigate: "/dashXboard/installs",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [FadeEffect(), ScaleEffect()],
      delay: const Duration(milliseconds: 500),
      child: GridView.builder(
        itemCount: detailDataList.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responsive.isMobile(context) ? 3 : 5,
          crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
          childAspectRatio: 1,
          mainAxisSpacing: 12.0,
        ),
        itemBuilder: (context, index) {
          final item = detailDataList[index];
          return GestureDetector(
            onTap: () =>
                item.navigate != null ? context.go(item.navigate!) : null,
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                border:
                    Border.all(color: AppColor.primaryColor.withOpacity(0.5)),
                boxShadow: [
                  BoxShadow(
                      color: AppColor.primaryColor.withOpacity(0.5),
                      offset: const Offset(3, 3),
                      spreadRadius: 0,
                      blurRadius: 0),
                ],
                color: AppColor.backgroundColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    item.image,
                    height: 35,
                    color: AppColor.primaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 4),
                    child: Text(
                      item.value,
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColor.textColor,
                      ),
                    ),
                  ),
                  Animate(
                    effects: [
                      FadeEffect(),
                      MoveEffect(
                        delay: const Duration(milliseconds: 500),
                        duration: const Duration(milliseconds: 500),
                        begin: const Offset(-100, 100),
                        end: const Offset(0, 0),
                        curve: Curves.easeInOut,
                      )
                    ],
                    delay: Duration(milliseconds: index * 200),
                    child: Text(
                      item.title,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColor.textColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
