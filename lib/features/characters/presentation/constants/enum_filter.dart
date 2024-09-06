enum FilterStatus { alive, dead, unknown }

enum FilterGender { male, female, unknown }

extension CharacterStatusExtension on FilterStatus {
  String get description => switch (this) {
        FilterStatus.alive => "Alive",
        FilterStatus.dead => "Dead",
        FilterStatus.unknown => ""
      };
}

extension CharacterGenderExtension on FilterGender {
  String get description => switch (this) {
        FilterGender.male => "Male",
        FilterGender.female => "Female",
        FilterGender.unknown => "",
      };
}
