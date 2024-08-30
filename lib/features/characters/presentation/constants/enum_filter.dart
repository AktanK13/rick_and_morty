enum Status { alive, dead, unknown }

enum Gender { male, female, unknown }

extension CharacterStatusExtension on Status {
  String get description => switch (this) {
        Status.alive => "Alive",
        Status.dead => "Dead",
        Status.unknown => ""
      };
}

extension CharacterGenderExtension on Gender {
  String get description => switch (this) {
        Gender.male => "Male",
        Gender.female => "Female",
        Gender.unknown => "",
      };
}
