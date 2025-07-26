void runValidatorEmail(){
  print('');
  print('////////    chapter1 challenge3');

  final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  final emails = [
    'test@example.com',
    'user.name@domain.co',
    'user_name@sub.domain.net',
    'username@domain',
    'username@.com',
    'justtext',
    'john@site.c',
    'john@@gmail.com',
    'user@domain..com'
  ];

  for (final email in emails){
    print('$email -> ${emailRegex.hasMatch(email) ? 'Valid' :'InValid'}');
  }
}