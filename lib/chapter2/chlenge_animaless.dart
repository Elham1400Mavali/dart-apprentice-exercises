
void mainAnimals(){

  final animals = {
    'sheep': 99,
    'goats': 32,
    'snakes': 7,
    'lions': 80,
    'seals': 18,
  };
  
  final animalsStartingWithS =
       animals.entries.where((entry)=>entry.key.startsWith('s'))
             .fold(0,(sum, entry) {
                print('sum: ${sum} , entry: ${entry.value}');
               return sum + entry.value;
         }
  );

  print('Total Animals starting with "s": ${animalsStartingWithS}');

}