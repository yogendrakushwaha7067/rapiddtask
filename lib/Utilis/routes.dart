import 'package:get/get.dart';

import '../Controller/task_con.dart';
import '../View/task_screen.dart';







class AppRoutes {
  static List<GetPage> routes = [
    GetPage(
      name: TaskScreen.routeName,
      page: () =>   TaskScreen(),
      bindings: [
        BindingsBuilder.put(() => TaskController()),

      ],
    ),





  ];
}