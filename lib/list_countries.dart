void listCountry(){

const countries = '''
        France
        USA
        Germany
        Benin
        China
        Mexico
        Mongolia
        ''';

final countryList = countries
    .split('\n')
    .map((line) => line.trim())
    .where((line) => line.isNotEmpty)
    .toList();
for (final country in countryList) {
  print(country);
}
}