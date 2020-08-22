part of 'run_cubit.dart';

class RunState extends Equatable {
  final double fontSize;
  final double runVelocity;
  final Color fontColor;

  RunState({
    @required this.fontSize,
    @required this.runVelocity,
    @required this.fontColor,
  });

  RunState copyWith({
    double fontSize,
    double runVelocity,
    Color fontColor,
  }) {
    return RunState(
      fontSize: fontSize ?? this.fontSize,
      runVelocity: runVelocity ?? this.runVelocity,
      fontColor: fontColor ?? this.fontColor,
    );
  }

  @override
  List<Object> get props => [fontSize, runVelocity, fontColor];
}
