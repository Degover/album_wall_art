enum DateScopePrecision {
  day(hasYear: true, hasMonth: true, hasDay: true),
  month(hasYear: true, hasMonth: true),
  year(hasYear: true);

  const DateScopePrecision(
      {this.hasYear = false, this.hasMonth = false, this.hasDay = false});

  final bool hasYear;
  final bool hasMonth;
  final bool hasDay;
}
