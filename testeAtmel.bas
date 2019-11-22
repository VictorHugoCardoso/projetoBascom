                                                                    ' UNIOESTE - CECE - Foz do Iguacu
' Curso de Ciencia da Computacao
' Materia: Sistemas Digitais
' Aluno: Victor Hugo Cardoso Mendes
' Prof: Ricardo Luiz de Barros
' Data: 07/10/2019
' Programa: testeLCD

'$sim

$Regfile="m328pdef.dat"
$Crystal=8000000
$hwstack=40
$swstack=16
$framesize=32

'baud = 9600

' Configuracao de Portas de Hardware
Config PORTC=OUTPUT
Config PORTD=OUTPUT

' Configuracao de Hardware
Config Lcd = 16 * 2
Config Lcdpin = Pin , Db4 = Portd.4 , Db5 = Portd.5 , Db6 = Portd.6 , Db7 = Portd.7 , Rs = Portd.2 , E = Portd.3
Config LCDMODE=PORT

' Declaracao de Variaveis
Dim cont as Byte

' Zeramentos das portas
PORTC=0
PORTD=0

' Inicializacao das variaveis
cont = 0

' Programa Principal

Cursor On Blink

CLS
locate 1,1
LCD "BertolaLindo"

do
   PortC.5 = 0
   PortC.4 = 1
   Wait 3
   PortC.5 = 1
   PortC.4 = 0
   Wait 3
loop

END

' Funcoes e Procedimentos