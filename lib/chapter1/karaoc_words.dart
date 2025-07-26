void parseWithSubstring() {
  print('');
  print('////////    chapter1 challenge2');

  final line = '[00:12.34]Row, row, row your boat';

  final regex = RegExp(r'\[(\d{2}:\d{2}\.\d{2})\](.*)');

  final match = regex.firstMatch(line);

  if (match != null) {

    final minutes=line.substring(1,3);
    final seconds=line.substring(4,6);
    final hundredth=line.substring(7,9);
    final lyric2=line.substring(10);

    print('Using substring:');
    print('minutes: $minutes');
    print('seconds: $seconds');
    print('hundredth: $hundredth');
    print('lyrics: $lyric2');

  } else {
    print(' فرمت معتبر پیدا نشد');
  }
}
void parseWithRegex() {
  print('');
  print('////////    chapter1 challenge1');

  final line = '[00:12.34]Row, row, row your boat';

  final regex = RegExp(r'\[(\d{2}):(\d{2})\.(\d{2})\](.*)');
  final match = regex.firstMatch(line);

  if (match != null) {
    final minutes = match.group(1);
    final seconds = match.group(2);
    final hundredths = match.group(3);
    final lyrics = match.group(4)?.trim();

    print('\nUsing regex:');
    print('minutes: $minutes');
    print('seconds: $seconds');
    print('hundredths: $hundredths');
    print('lyrics: $lyrics');
  } else {
    print('❌ Invalid format.');
  }
}

