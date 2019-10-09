                                                  ' UNIOESTE - CECE - Foz do Iguacu
' Curso de Ciencia da Computacao
' Materia: Sistemas Digitais
' Aluno: Victor Hugo Cardoso Mendes
' Prof: Ricardo Luiz de Barros
' Data: 07/10/2019
' Programa: testeLCD

$sim

$Regfile="m8def.dat"
$Crystal=8000000
$hwstack=40
$swstack=16
$framesize=32
'baud = 9600

' Configuracao de Portas de Hardware

' Configuracao de Hardware

' Declaracao de Variaveis

' Zeramentos das portas

' Inicializacao das variaveis

' Programa Principal

Dim A As Byte
Dim cont as Byte
Dim valor as Byte

Config PORTC=INPUT
Config PORTD=OUTPUT

Config Lcd = 16 * 2
Config Lcdpin = Pin , Db4 = Portd.4 , Db5 = Portd.5 , Db6 = Portd.6 , Db7 = Portd.7 , Rs = Portd.2 , E = Portd.3
Config LCDMODE=PORT

PORTB=0
PORTD=0
PORTC=0

CLS
locate 1,1
LCD "BertolaLindo"
valor = PINC
a = valor
cont = 1

!rCall _write_lcd

do
   for cont = 1 to 15
      valor=PINC
      shiftlcd right
      if a<>pinc then
         a=pinc
         locate 2,1
         lcd a;" "
      endif
   next cont

   for cont = 15 to 1 step -1
      valor=PINC
      shiftlcd left
      if a<>pinc then
         a=pinc
         locate 2,1
         lcd a;" "
      endif
   next cont

loop


END

' Funcoes e Procedimentos
