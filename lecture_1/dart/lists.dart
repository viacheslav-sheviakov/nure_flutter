void main() {
  final grades = [90, 89.5, 100, 75, 60, 74, 30];

  print("Grades: $grades");

  final updatedGrades = grades
    .map((grade) => grade * 1.5)
    .map((grade) => grade > 100 ? 100 : grade)
    .toList();

  print("Updated grades: $updatedGrades");

  final gradeSum = grades.reduce((value, element) => value + element);

  print("Grade sum: $gradeSum");
}
