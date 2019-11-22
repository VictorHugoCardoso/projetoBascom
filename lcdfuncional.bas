                                                                    ' UNIOESTE - CECE - Foz do Iguacu
' Curso de Ciencia da Computacao
' Materia: Sistemas Digitais
' Aluno: Victor Hugo Cardoso Mendes
' Prof: Ricardo Luiz de Barros
' Data: 07/10/2019
' Programa: testeLCD

$sim

$Regfile="m328pdef.dat"
$Crystal=8000000
$hwstack=40
$swstack=16
$framesize=32

'baud = 9600

' Configuracao de Portas de Hardware
Config PORTC=INPUT
Config PORTD=OUTPUT

' Configuracao de Hardware
Config Lcd = 16 * 2
Config Lcdpin = Pin , Db4 = Portd.4 , Db5 = Portd.5 , Db6 = Portd.6 , Db7 = Portd.7 , Rs = Portd.2 , E = Portd.3
Config LCDMODE=PORT

' Declaracao de Variaveis
Dim A As Byte
Dim cont as Byte
Dim valor as Byte

' Zeramentos das portas
PORTB=0
PORTD=0
PORTC=0

' Inicializacao das variaveis

' Programa Principal

Cursor On Blink

CLS
locate 1,1
LCD "BertolaLindo"

valor = PINC
a = valor
cont = 1

do
   valor=PINC
   if a<>pinc then
      a=pinc
      locate 2,1
      lcd a;" "
   endif

   shiftlcd right
   shiftlcd right
   shiftlcd right
   shiftlcd right
   wait 1
   shiftlcd left
   shiftlcd left
   shiftlcd left
   shiftlcd left

loop


END

' Funcoes e Procedimentos