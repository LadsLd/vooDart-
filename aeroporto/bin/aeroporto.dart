import 'dart:io';
import 'package:aeroporto/funcionario.dart';
import 'package:aeroporto/passageiro.dart';
import 'package:aeroporto/passagem.dart';
import 'package:aeroporto/telas.dart';
import 'package:aeroporto/voo.dart';

void main() {
Voo vooRJ = Voo('boing 763', Destino.bhRJ);
Voo vooDF = Voo('boing 763', Destino.bhDF);
Voo vooBA = Voo('boing 763', Destino.bhBA);

     int menu = 0;
     int pes2 = 0;
     String pes1 ='';
     String escolhaDestino ='';

     print('\x1B[2J\x1B[0;0H');

     while(menu!=6){
       
     switch (menu) {
      case 1:
        escolhaESTADO();
          print('Digite o estado desejado: ');
          escolhaDestino = stdin.readLineSync()!.toUpperCase();

          if (escolhaDestino == 'RJ') {
          print('LISTA DE PASSAGEIROS');
          vooRJ.mostraLista();
          escolhaDestino = stdin.readLineSync()!;
          }
          if (escolhaDestino == 'BA') {
          print('LISTA DE PASSAGEIROS');
          vooBA.mostraLista();
          escolhaDestino = stdin.readLineSync()!;
          }
          if (escolhaDestino == 'DF') {
          print('LISTA DE PASSAGEIROS');  
          vooDF.mostraLista();
          escolhaDestino = stdin.readLineSync()!;
          }
         break;

      case 2:
       escolhaESTADO();
        print('Digite o estado desejado: ');
        escolhaDestino = stdin.readLineSync()!.toUpperCase();

        if (escolhaDestino == 'RJ') {
        print('DIGITE O CPF DESEJADO PARA A PESQUISA:');
        pes1 = stdin.readLineSync()!;
        vooRJ.pesquisaPassageiro(pes1);
        pes1 = stdin.readLineSync()!;
        }
        if (escolhaDestino == 'DF') {
        print('DIGITE O CPF DESEJADO PARA A PESQUISA:');
        pes1 = stdin.readLineSync()!;
        vooDF.pesquisaPassageiro(pes1);
        pes1 = stdin.readLineSync()!;
        }
        if (escolhaDestino == 'BA') {
        print('DIGITE O CPF DESEJADO PARA A PESQUISA:');
        pes1 = stdin.readLineSync()!;
        vooBA.pesquisaPassageiro(pes1);
        pes1 = stdin.readLineSync()!;
        }
       break;

      case 3:
       escolhaESTADO();
        print('Digite o estado desejado: ');
        escolhaDestino = stdin.readLineSync()!.toUpperCase();
          if (escolhaDestino == 'RJ') {
          Funcionario fun = Funcionario();
          Cliente cli = Cliente();
          Passagem passagemRJ = Passagem('BH-RJ');

          print('Digite 1 para Funcionario ou 2 para Passageiro: ');
          pes2 = int.parse(stdin.readLineSync()!);

          if(pes2 == 1){
          stdout.writeln('Registro:');
          fun.registro = stdin.readLineSync()!;
          stdout.writeln('Nome:');
          fun.nome = stdin.readLineSync()!;
          stdout.writeln('Cpf:');
          fun.cpf = stdin.readLineSync()!;
          stdout.writeln('Endereço:');
          fun.endereco = stdin.readLineSync()!;
          stdout.writeln('Telefone:');
          fun.telefone = stdin.readLineSync()!;
          
          passagemRJ.cadPassageiro(fun);
          vooRJ.cadastraFuncionario(passagemRJ);
          }
          if(pes2 == 2){
          stdout.writeln('Nome:');
          cli.nome = stdin.readLineSync()!;
          stdout.writeln('Cpf:');
          cli.cpf = stdin.readLineSync()!;
          stdout.writeln('Endereço:');
          cli.endereco = stdin.readLineSync()!;
          stdout.writeln('Telefone:');
          cli.telefone = stdin.readLineSync()!;
          
          passagemRJ.nmrP();
          passagemRJ.poltronaN();
          passagemRJ.cadPassageiro(cli);
          vooRJ.cadastraPassageiro(passagemRJ);
          }
         
          escolhaDestino = stdin.readLineSync()!;
        }
          if (escolhaDestino == 'BA') {
          Funcionario fun = Funcionario();
          Cliente cli = Cliente();
          Passagem passagemBA = Passagem('BH-BA');

          print('Digite 1 para Funcionario ou 2 para Passageiro: ');
          pes2 = int.parse(stdin.readLineSync()!);

          if(pes2 == 1){
          stdout.writeln('Registro:');
          fun.registro = stdin.readLineSync()!;
          stdout.writeln('Nome:');
          fun.nome = stdin.readLineSync()!;
          stdout.writeln('Cpf:');
          fun.cpf = stdin.readLineSync()!;
          stdout.writeln('Endereço:');
          fun.endereco = stdin.readLineSync()!;
          stdout.writeln('Telefone:');
          fun.telefone = stdin.readLineSync()!;
          
          passagemBA.cadPassageiro(fun);
          vooBA.cadastraFuncionario(passagemBA);
          }
          if(pes2 == 2){
          stdout.writeln('Nome:');
          cli.nome = stdin.readLineSync()!;
          stdout.writeln('Cpf:');
          cli.cpf = stdin.readLineSync()!;
          stdout.writeln('Endereço:');
          cli.endereco = stdin.readLineSync()!;
          stdout.writeln('Telefone:');
          cli.telefone = stdin.readLineSync()!;

          passagemBA.poltronaN();
          passagemBA.nmrP();
          passagemBA.cadPassageiro(cli);
          vooBA.cadastraPassageiro(passagemBA);
          }
         
          escolhaDestino = stdin.readLineSync()!;
        }
          if (escolhaDestino == 'DF') {
          Funcionario fun = Funcionario();
          Cliente cli = Cliente();
          Passagem passagemDF = Passagem('BH-DF');

          print('Digite 1 para Funcionario ou 2 para Passageiro: ');
          pes2 = int.parse(stdin.readLineSync()!);

          if(pes2 == 1){
          stdout.writeln('Registro:');
          fun.registro = stdin.readLineSync()!;
          stdout.writeln('Nome:');
          fun.nome = stdin.readLineSync()!;
          stdout.writeln('Cpf:');
          fun.cpf = stdin.readLineSync()!;
          stdout.writeln('Endereço:');
          fun.endereco = stdin.readLineSync()!;
          stdout.writeln('Telefone:');
          fun.telefone = stdin.readLineSync()!;
          
          passagemDF.cadPassageiro(fun);
          vooDF.cadastraFuncionario(passagemDF);
          }
          if(pes2 == 2){
          stdout.writeln('Nome:');
          cli.nome = stdin.readLineSync()!;
          stdout.writeln('Cpf:');
          cli.cpf = stdin.readLineSync()!;
          stdout.writeln('Endereço:');
          cli.endereco = stdin.readLineSync()!;
          stdout.writeln('Telefone:');
          cli.telefone = stdin.readLineSync()!;
           
          passagemDF.poltronaN();
          passagemDF.nmrP();
          passagemDF.cadPassageiro(cli);
          vooDF.cadastraPassageiro(passagemDF);
          }
          escolhaDestino = stdin.readLineSync()!;
          }
       break;

      case 4:
       escolhaESTADO();
        print('Digite o estado desejado: ');
        escolhaDestino = stdin.readLineSync()!.toUpperCase();

        if (escolhaDestino == 'RJ') {
          print('DIGITE O CPF DESEJADO PARA REMOVE-LO:');
          pes1 = stdin.readLineSync()!;
          vooRJ.deletaPassageiro(pes1);
          pes1 = stdin.readLineSync()!;
        }
         if (escolhaDestino == 'DF') {
          print('DIGITE O CPF DESEJADO PARA REMOVE-LO:');
          pes1 = stdin.readLineSync()!;
          vooDF.deletaPassageiro(pes1);
          pes1 = stdin.readLineSync()!;
        }
         if (escolhaDestino == 'BA') {
          print('DIGITE O CPF DESEJADO PARA REMOVE-LO:');
          pes1 = stdin.readLineSync()!;
          vooBA.deletaPassageiro(pes1);
          pes1 = stdin.readLineSync()!;
        }
        break;

      case 5:
         escolhaESTADO();
          print('Digite o estado desejado: ');
          escolhaDestino = stdin.readLineSync()!.toUpperCase();

          if (escolhaDestino == 'RJ') {
          print('LISTA DE ESPERA');
          vooRJ.mostraListaEspera();
          escolhaDestino = stdin.readLineSync()!;
          }
          if (escolhaDestino == 'BA') {
          print('LISTA DE ESPERA');
          vooBA.mostraListaEspera();
          escolhaDestino = stdin.readLineSync()!;
          }
          if (escolhaDestino == 'DF') {
          print('LISTA DE ESPERA');  
          vooDF.mostraListaEspera();
          escolhaDestino = stdin.readLineSync()!;
          }
         break;
          }
     display();
     menu = int.parse(stdin.readLineSync()!);
  }
}