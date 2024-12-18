part of 'home_screen_cubit.dart';

@immutable
sealed class HomeScreenState {}

final class HomeScreenInitial extends HomeScreenState {}

final class HomeScreenAdd extends HomeScreenState {}

final class CalculateGpaLoading extends HomeScreenState {}

final class GpaResultesDone extends HomeScreenState {}

final class SaveGradesLoading extends HomeScreenState {}

final class SaveGradesSuccess extends HomeScreenState {}

final class SaveGradesFailed extends HomeScreenState {}
