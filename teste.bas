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
Config Lcd = 16 * 2

CLS
LCD "BertolaLindo"

!rCall _write_lcd

do
   shiftlcd right
   shiftlcd right
   shiftlcd right
   shiftlcd right
   shiftlcd left
   shiftlcd left
   shiftlcd left
   shiftlcd left
loop


END

' Funcoes e Procedimentos