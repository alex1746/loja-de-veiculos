Program lojaveiculos ;
type
veiculo = record
  marca : string;
  modelo : string;
  ano: real;
  compraVeiculo : real;
  vendaVeiculo : real;
  opcionais: string;
	valorOpcional: real;
end;
var
totalveiculos : array[1..4] of veiculo;                   //ALEXSANDER MARTINS RA 2220030
opcionaisVeiculos : array[1..4] of string;               //LUÍS FERNANDO RA 2221343
opicionaisValoresVeiculo : array[1..4] of real;
opicionaisVendaVeiculo : array[1..4] of real;
lucroLoja : array[1..4] of real;

veiculos : veiculo;

CAR: integer;

CompraDaLOJA : real;

Begin
  
  for CAR:= 1 to 4 do
  Begin
      writeln('Bem vindo à loja Sonhos De Veículos!');
      writeln('Qual é a marca do veículo ' , CAR , '?' );
      readln(veiculos.marca);
      writeln('Qual é o modelo do veículo ' , CAR, '?' );
      readln(veiculos.modelo);
      writeln('Qual o ano do veículo' ,CAR, '?');
      readln(veiculos.ano);
      clrscr;
      writeln('Qual é o valor de compra do veículo ' , CAR , '?');
      readln(veiculos.compraVeiculo);
      writeln('Qual é o valor de venda do veículo ' , CAR , '?');
      readln(veiculos.vendaVeiculo);
      clrscr;
      writeln('O veículo ', CAR ,' possui itens opicionais?');
      readln(veiculos.opcionais);
      clrscr;
      writeln('Total de valores opicionais do veículo ' , CAR , '?');
      readln(veiculos.valorOpcional);
      clrscr;
      totalveiculos[CAR] :=  veiculos;
      opcionaisVeiculos[CAR] :=  veiculos.opcionais;
      opicionaisValoresVeiculo[CAR] :=  veiculos.valorOpcional;    
  End;
  
  for CAR:= 1 to 4 do
  Begin
      CompraDaLOJA := totalveiculos[CAR].compraVeiculo + CompraDaLOJA;
  End;
  
  for CAR:= 1 to 4 do
  Begin
      opicionaisVendaVeiculo[CAR] :=  totalveiculos[CAR].vendaVeiculo +  totalveiculos[CAR].valorOpcional
  End;
  
  for CAR:= 1 to 4 do
  Begin
       lucroLoja[CAR] :=  opicionaisVendaVeiculo[CAR] - totalveiculos[CAR].compraVeiculo;
  End;
  
  for CAR:= 1 to 4 do
  Begin
  	  writeln('O valor de venda e os valores opcionais do veículo ', CAR , ' é ', opicionaisVendaVeiculo[CAR]);
  End;
  for CAR:= 1 to 4 do
  Begin
  	  writeln('O valor de lucro da loja ', CAR , ' é ', lucroLoja[CAR]);
  End;
  writeln('Valor total de compra de veículos da loja é de ', CompraDaLOJA:4 );
End.