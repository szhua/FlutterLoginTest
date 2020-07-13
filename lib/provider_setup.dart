import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'api.dart';

List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices
];

List<SingleChildWidget> independentServices = [Provider(create: (_) => Api())];
List<SingleChildWidget> dependentServices = [];
