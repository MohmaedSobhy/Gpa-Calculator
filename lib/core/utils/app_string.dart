abstract class AppString {
  static const String calculate = 'Calculate';
  static const String gpaCalculator = 'GPA Calculator';
  static const String grade = 'Grades';
  static const String credits = 'Credits';
  static const String addCourse = 'Add Course';
  static const String courseName = 'Course Name';
  static const String semesterGpa = 'Semester Gpa';
  static const String comulativeGpa = 'Comulative GPA';
  static const String semesterCredits = 'Semester Credits';
  static const String currentGpa = 'Current GPA';
  static const String totalCredits = 'Total Credits';
  static const String messageCalculate =
      'You Have To Add Course To Calculate your Gpa';
  static const String yourGradesSaved = 'Your Grades Saved';
  static const String subjectGrade = 'Subject Grade';
  static const String about = 'About App';
  static const String noSavedSubjects =
      'There is no Saved Subjects yet \n Add Some Subjects';

  static const String appInfo =
      'tool designed to help students determine their academic performance by calculating their average grade points over a specified period, such as a semester or their entire academic career.';

  static const String subject = 'Subject';

  static List<String> grades = [
    'A+',
    'A',
    'B+',
    'B',
    'C+',
    'C',
    'D+',
    'D',
    'F'
  ];
  static Map<String, double> gradePoints = {
    'A+': 4,
    'A': 4,
    'B+': 3.33,
    'B': 3,
    'C+': 2.33,
    'C': 2,
    'D+': 1.3,
    'D': 1.0,
    'F': 0.0,
  };
}
