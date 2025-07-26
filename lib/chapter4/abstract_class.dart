abstract class Storage{
  void save(String data);
  void printInfo();
}

class LocalStorage extends Storage{
  @override
  void save(String data){
    print('🗂️ Save $data in LocalStorage');
  }

  @override
  void printInfo(){
    print('This is Local Storage');
  }
}

class CloudStorage extends Storage{
  @override
  void save(String data){
    print('☁️ Save $data in CloudStorage');
  }
  
  @override
  void printInfo(){
    print('This is Cloud Storage');
  }
}

void abstract(){
  print('////////    chapter4 challenge1');
  print('');

  Storage local = LocalStorage();
  Storage cloud = CloudStorage();
  
  local.save('User Data');
  local.printInfo();

  cloud.printInfo();
  cloud.save('Setting Data');
  
}