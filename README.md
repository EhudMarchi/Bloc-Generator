# Bloc-Generator for Flutter projects <img src="https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png" width="30">
 The Bloc Generator Script is a tool that automates the process of generating Bloc architecture files in your Flutter project. It generates the necessary Bloc, Event, and State classes based on user input, saving you time and effort.

## Getting Started
Follow the steps below to use the Bloc Generator Script in your Flutter project:

### Step 1: Clone the Repository
Clone this repository to your local machine:

```bash
git clone https://github.com/EhudMarchi/Bloc-Generator.git

```
### Step 2: Copy Files
##### - Copy the bloc_templates folder to your project's root directory. 
Inside this folder,you can find the files:
bloc_template.dart (for the Bloc)
event_template.dart (for the Event)
state_template.dart (for the State)

##### - Copy the bloc_generator.dart file to your project's root directory. 

### Step 3: Run the Script
Open a terminal and navigate to the root directory of your project (where you copied the files).

Run the script using the following command:

``` bash
dart bloc_generator.dart
```
The script will prompt you to enter the name of the Bloc (e.g., "UserBloc"). Provide the name and press Enter.

The script will generate the necessary Bloc, Event, and State files based on the provided name and place them in a folder named {your_bloc_name}_blocs.

### Step 4: Integrate Generated Code
Review the generated files in the generated_blocs folder.

Move the generated files to their appropriate directories within your Flutter project.

Update the import statements in your code to reference the generated files.



this generator uses and depends on <img src="https://github.com/EhudMarchi/Bloc-Generator/assets/49651991/11bfaf2d-d213-4925-a47a-706b762c320a" width="60"> 

so you must add a dependency to your package's pubspec.yaml
see more on https://pub.dev/packages/bloc

###### Feedback and Contributions
If you encounter any issues or have suggestions for improvements, please feel free to open an issue in this repository. Contributions are also welcome!
