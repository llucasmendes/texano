part of 'run_cubit.dart';

class RunState extends Equatable {
  final double fontSize;
  final double runVelocity;
  final Color fontColor;
  final Color backgroundColor;
  final bool isEditing;

  RunState({
    @required this.fontSize,
    @required this.runVelocity,
    @required this.fontColor,
    @required this.backgroundColor,
    @required this.isEditing,
  });

  RunState copyWith({
    double fontSize,
    double runVelocity,
    Color fontColor,
    Color backgroundColor,
    bool isEditing,
  }) {
    return RunState(
      fontSize: fontSize ?? this.fontSize,
      runVelocity: runVelocity ?? this.runVelocity,
      fontColor: fontColor ?? this.fontColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      isEditing: isEditing ?? this.isEditing,
    );
  }

  @override
  List<Object> get props => [
        fontSize,
        runVelocity,
        fontColor,
        backgroundColor,
        isEditing,
      ];
}
