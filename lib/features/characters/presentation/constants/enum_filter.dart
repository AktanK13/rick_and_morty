enum Status { alive, dead, unknown }

enum Gender { male, female, unknown }


extension CharacterStatusExtension on Status {
  String get description {
    switch (this) {
      case Status.alive:
        return "Alive";
      case Status.dead:
        return "Dead";
      case Status.unknown:
        return "";
    }
  }
}

extension CharacterGenderExtension on Gender {
  String get description {
    switch (this) {
      case Gender.male:
        return "Male";
      case Gender.female:
        return "Female";
      case Gender.unknown:
        return "";
    }
  }
}