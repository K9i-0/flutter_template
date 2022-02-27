import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:yaml/yaml.dart';

part 'grinder_task/gen_assets.dart';
part 'grinder_task/gen_icons.dart';
part 'grinder_task/gen_splash.dart';
part 'grinder_task/increment_version.dart';
part 'grinder_task/run_build_runner.dart';
part 'grinder_task/update_pods.dart';

void main(List<String> args) => grind(args);
