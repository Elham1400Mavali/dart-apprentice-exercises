import 'dart:ui';

class Fruit{
   String color = 'red';
   Fruit(this.color);

  void describeColor(){
    print('This Fruit is $color');
  }
}


class Melon extends Fruit{
  Melon(String color) : super(color);

}

class Watermelon extends Fruit{
  Watermelon(super.color);

  @override
  void describeColor(){
    print('Watermelon is usually on outside and red inside, but this is $color');
  }
}

class Cantaloupe extends Fruit{
  Cantaloupe(super.color);
}



void inheritance(){
  print('////////    chapter3 challenge1');
  print('');

  Fruit apple = Fruit('red');
  apple.describeColor();


  Watermelon watermelon = Watermelon('green dark');
  watermelon.describeColor();


  Cantaloupe cantaloupe = Cantaloupe('orange');
  cantaloupe.describeColor();


}










