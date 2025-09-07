import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final int selectedTab;

  const HomeState({required this.selectedTab});

  factory HomeState.initial() => HomeState(selectedTab: 0);

  HomeState copyWith({int? selectedTab}) => HomeState(selectedTab: selectedTab ?? this.selectedTab);

  @override
  List<Object?> get props => [selectedTab];
}
