

int repeatTasks(int times, int input, int Function(int) task){

  int result = input;
  for (int i=0 ; i < times ;i++){
    result = task(result);
  }
 return result;
}

void mainRepeatTask(){
  final result = repeatTasks(4, 2, (x)=>  x * x);
  print(result);
}