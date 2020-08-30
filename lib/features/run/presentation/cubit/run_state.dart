part of 'run_cubit.dart';

class RunState extends Equatable {
  final double fontSize;
  final double runVelocity;
  final Color fontColor;
  final Color backgroundColor;

  RunState({
    @required this.fontSize,
    @required this.runVelocity,
    @required this.fontColor,
    @required this.backgroundColor,
  });

  RunState copyWith({
    double fontSize,
    double runVelocity,
    Color fontColor,
    Color backgroundColor,
  }) {
    return RunState(
      fontSize: fontSize ?? this.fontSize,
      runVelocity: runVelocity ?? this.runVelocity,
      fontColor: fontColor ?? this.fontColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  List<Object> get props => [
        fontSize,
        runVelocity,
        fontColor,
        backgroundColor,
      ];
}
