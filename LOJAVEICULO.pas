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
opcionaisVeiculos : array[1..4] of string;               //LU�S FERNANDO RA 2221343
opicionaisValoresVeiculo : array[1..4] of real;
opicionaisVendaVeiculo : array[1..4] of real;
lucroLoja : array[1..4] of real;

veiculos : veiculo;

CAR: integer;

CompraDaLOJA : real;

Begin
  
  for CAR:= 1 to 4 do
  Begin
      writeln('Bem vindo � loja Sonhos De Ve�culos!');
      writeln('Qual � a marca do ve�culo ' , CAR , '?' );
      readln(veiculos.marca);
      writeln('Qual � o modelo do ve�culo ' , CAR, '?' );
      readln(veiculos.modelo);
      writeln('Qual o ano do ve�culo' ,CAR, '?');
      readln(veiculos.ano);
      clrscr;
      writeln('Qual � o valor de compra do ve�culo ' , CAR , '?');
      readln(veiculos.compraVeiculo);
      writeln('Qual � o valor de venda do ve�culo ' , CAR , '?');
      readln(veiculos.vendaVeiculo);
      clrscr;
      writeln('O ve�culo ', CAR ,' possui itens opicionais?');
      readln(veiculos.opcionais);
      clrscr;
      writeln('Total de valores opicionais do ve�culo ' , CAR , '?');
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
  	  writeln('O valor de venda e os valores opcionais do ve�culo ', CAR , ' � ', opicionaisVendaVeiculo[CAR]);
  End;
  for CAR:= 1 to 4 do
  Begin
  	  writeln('O valor de lucro da loja ', CAR , ' � ', lucroLoja[CAR]);
  End;
  writeln('Valor total de compra de ve�culos da loja � de ', CompraDaLOJA:4 );
End.