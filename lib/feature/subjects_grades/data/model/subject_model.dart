import 'package:gpa_culator/core/services/column_keys.dart';

class SubjectModel {
  final int? id;
  final String subjectName;
  final String subjectCredits;
  final String subjectGrade;
  SubjectModel({
    required this.subjectName,
    required this.subjectCredits,
    required this.subjectGrade,
    this.id,
  });

  factory SubjectModel.fromJson(Map<String, dynamic> date) {
    return SubjectModel(
      id: date[ColumnKey.id],
      subjectName: date[ColumnKey.subjectName],
      subjectCredits: date[ColumnKey.credits].toString(),
      subjectGrade: date[ColumnKey.subjectGrade],
    );
  }
}
