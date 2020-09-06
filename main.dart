
// interface
abstract class horarioEspecial{
  void horaExtra();
}

class Funcionario {
  void jornadaManha(){
    print('7h às 12h');
  }
}

class Professor extends Funcionario{
  String nome;
  String sobrenome;
  String email;
  String telefone;
  int idade;
  
  Professor(this.nome, this.idade);
}

// implement interface
class Diretor extends Funcionario implements horarioEspecial{
  void horaExtra(){
    print('12h às 13h');
  }
}

class ConfigApp {
  //Constant Static
  static String appId = 'hash';
  
  static void configMain(){
    print('Pass');
  }
}

// Line Break - Console
class AddBreak{
  void line(){
    print('');print('');
    print('====================================');
  }
}

void main(){

  AddBreak addBreak = AddBreak();
  Diretor varDiretor = Diretor();
  varDiretor.jornadaManha();
  varDiretor.horaExtra();
  addBreak.line();
  
  // LIST
  List marcasCarros = ['Fiat', 'Ford', 'GM', 'Kia'];
  marcasCarros.add('Vw');
  marcasCarros.insert(0, 'Renault');
  marcasCarros.removeAt(0);
  print(marcasCarros.contains('Mazda'));
  print(marcasCarros);
  
  List<Professor> varProfessores = List();
  varProfessores.add(Professor('User 01', 21));
  varProfessores.add(Professor('User 02', 27));
  
  // FOR
  for (Professor varProfessor in varProfessores)
  {
    print('Nome ${varProfessor.nome} idade ${varProfessor.idade} ');
  }
  addBreak.line();

  // MAP
  Map<dynamic, dynamic> varEstados = Map();
  varEstados['SP'] = 'São Paulo';
  varEstados['RJ'] = 'Rio de Janeiro';
  varEstados['PR'] = 'Curitiba';
  print(varEstados);
  
  // FOREACH
  varEstados.forEach(
    (chave, valor) => print("${chave} - ${valor}")
  );
}
