import 'dart:io';

String getLowerCamelCase(String input) {
  final words = input.split(RegExp(r'[^a-zA-Z0-9]'));
  return words.map((word) => word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1).toLowerCase()).join('');
}

void generateUserBloc(String blocName) {
  final blocNameLowerCase = getLowerCamelCase(blocName);
  final templateFolderPath = 'bloc_templates';  // Path to the template folder
  final outputFolderPath = '${blocName.toLowerCase()}_blocs';  // Path to the output folder

  final templates = {
    "bloc": 'bloc_template.dart',
    "event": 'event_template.dart',
    "state": 'state_template.dart',
  };

  for (final templateName in templates.keys) {
    final templateFileName = templates[templateName]!;
    final templateFilePath = '$templateFolderPath/$templateFileName';

    final templateContent = File(templateFilePath).readAsStringSync();
    final generatedContent = templateContent.replaceAll('{{BlocName}}', blocName).replaceAll('{{BlocNameLowerCase}}', blocNameLowerCase);

    final outputFileName = '${blocName.toLowerCase()}_$templateName.dart';
    final outputFilePath = '$outputFolderPath/$outputFileName';

    final outputFile = File(outputFilePath);
    outputFile.createSync(recursive: true);  // Create the output folder if it doesn't exist
    outputFile.writeAsStringSync(generatedContent);

    print('Generated: $outputFileName');
  }

  print('Files generated successfully.');
}

void main() {
  print('Enter the name of the Bloc: ');
  final blocName = stdin.readLineSync() ?? '';
  generateUserBloc(blocName);
}
