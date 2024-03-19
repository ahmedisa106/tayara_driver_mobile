
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../core/localization/app_language.dart';




List<SingleChildWidget> providers = [
  ...independentServices,
];

List<SingleChildWidget> independentServices = [
  ChangeNotifierProvider<AppLanguage>(create: (context) => AppLanguage()),

];
