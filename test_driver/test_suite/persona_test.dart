import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';
import '../steps/persona_step.dart';

Future<void> main() {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/feature/persona.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ]
    ..hooks = [AttachScreenshotOnFailedStepHook()]
    ..stepDefinitions = [ScrollUntilPersonIsVisible(), VerifyPersonsList()]
    ..customStepParameterDefinitions = []
    ..restartAppBetweenScenarios = true
    ..tagExpression = "@persona"
    ..targetAppPath = "test_driver/app.dart"
    ..exitAfterTestRun = true;
  return GherkinRunner().execute(config);
}
