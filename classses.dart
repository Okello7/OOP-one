import 'dart:io';
import 'dart:math';

class Dice{
  int? sides;
  int? numberOfDice;
  List<int>? values;

}

//Class with Default values

/*class Dice{
  int? sides = 6;
  int? numberOfDice = 2;
  List<int>? values = [4, 6];

}*/


void main(){
  Dice d = new Dice();
  Dice d1 = Dice();
  d.sides = 6;
  d1.sides = 4;
  d.numberOfDice = 2;
  d.values = [4, 6];
  Dyce y = Dyce();
  print(d.sides);
  print(d1.sides);
  print(d.values);
  print(y._valyues);
  print(y.maxValue);
  y._syde = 8;
  y.numberOfDyce = 4;
  y.roll();
  y.printDice();//randomly generated numbers are printed in a list
  y.roll();
  y.printDice();//randomly generated numbers are printed in a list
}

/*void main(){
  Dice d = new Dice();
  print(d.sides);
  d.numberOfDice;
  d.values;

}*/

//Getter and Setters

class Dyce{
  int _syde=6;
  int numberOfDyce =2;
  List<int> _valyues = [4,6];

  int get maxValue => syde * numberOfDyce;

  int  get syde => _syde;

  set syde(int s){
    if (s < 2){
      _syde=2;
    }
    else{
      _syde=s;
    }
  }

  //Generate Random Values for _valyues #METHODS
  void roll(){
    List<int> newValues = [];
    Random rand = new Random(); //import dart:mth
    for (int i = 0; i < numberOfDyce; i ++){
      newValues.add(rand.nextInt(syde) + 1);//number from 1 to sides
    }
    _valyues = newValues;
  }

  void printDice() => print(_valyues);


}

