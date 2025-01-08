class Concert {
  final DateTime date;
  final String city;

  Concert({required this.date, required this.city});

  Object? toJson() {
    return {
      'date': date.toIso8601String(),
      'city': city,
    };
  }
}
