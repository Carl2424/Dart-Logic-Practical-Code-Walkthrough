import 'dart:async';

CLASS 1: ABSTRACT BASE CLASS

wHAT: Abstract class representing a general student record.
WHY: Created to enforce a uniform blueprint across all student types while preventing 
direct instantiation of an incomplete base student object.
abstract class Student {
  String id;
  String name;

 WHAT: Constructor initializing student identity fields.
WHY: Ensures every student object created in the system always contains a valid ID and name.
  Student(this.id, this.name);

  /// WHAT: Abstract method signature for computing final grades.
  /// WHY: Forces all child classes to define their own specific grading logic.
  double calculateFinalGrade();

  /// WHAT: Prints standard student profile information.
  /// WHY: Reuses common output logic across all student subclasses to avoid code duplication.
  void displayInfo() {
    print('Student ID: $id');
    print('Name: $name');
  }
}

CLASS 2: SPECIALIZED SUBCLASS
WHAT: Concrete subclass representing an IT Student, inheriting from [Student].
WHY: Extends the base student structure to handle specific IT course requirements like exam and lab grades.
class ITStudent extends Student {
  double examScore;
  double labScore;

   WHAT: Constructor initializing subclass fields and forwarding base fields to superclass.
  WHY: Uses super-initializer to pass `id` and `name` directly to [Student] while storing local scores.
  ITStudent(String id, String name, this.examScore, this.labScore)
      : super(id, name);

  WHAT: Overrides [calculateFinalGrade] to calculate a weighted average.
  WHY: IT courses evaluate performance equally across written exams (50%) and practical lab work (50%).
  @override
  double calculateFinalGrade() {
    return (examScore * 0.5) + (labScore * 0.5);
  }

  WHhat: Overrides [displayInfo] to show both basic details and calculated grade.
   WHY: Combines parent class display logic with custom final grade output for a complete report.
  @override
  void displayInfo() {
    super.displayInfo();
    print('Final Grade: ${calculateFinalGrade().toStringAsFixed(1)}');
  }
}

ASYNCHRONOUS SERVICE & MAIN EXECUTION


WHAT: Asynchronous function fetching student records.
WHY: Simulates real-world API or database latency using [Future.delayed] without freezing the main application.
Future<ITStudent> fetchStudentData() async {
  print('Fetching student record from database...');
  await Future.delayed(Duration(seconds: 2));
  return ITStudent('NTC-2026-001', 'Juan Dela Cruz', 88.0, 92.0);
}

/// WHAT: Entry point executing the program flow.
/// WHY: Coordinates asynchronous fetching and handles runtime errors cleanly using a try-catch block.
void main() async {
  print('=== NTC STUDENT GRADING SYSTEM ===\n');

  try {
    ITStudent student = await fetchStudentData();
    print('\nRecord Loaded Successfully:');
    print('-------------------------------');
    student.displayInfo();
    print('-------------------------------');
  } catch (error) {
    print('System Error: Failed to process record ($error)');
  } finally {
    print('\nGrades complete.');
  }
}
