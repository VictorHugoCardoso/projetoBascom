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
Config PORTD=OUTPUT

' Configuracao de Hardware
Config Lcd = 16 * 2
Config Lcdpin = Pin , Db4 = Portd.4 , Db5 = Portd.5 , Db6 = Portd.6 , Db7 = Portd.7 , Rs = Portd.2 , E = Portd.3
Config LCDMODE=PORT

' Declaracao de Variaveis

' Zeramentos das portas
PORTD=0

' Inicializacao das variaveis

' Programa Principal

Cursor noBlink

CLS
locate 1,1
LCD "asdasdasdo"

END

' Funcoes e Procedimentos