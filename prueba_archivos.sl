inicio
 cls()
	leer_archivo()
fin

sub leer_archivo()
	var
	linea = ""
	cant_lineas = 0
inicio
/*
* Verificar si el archivo pudo abrirse. En tal caso, set_stdin()
* retorna verdadero.
*/
	si ( not set_stdin ("datos.txt") ) 
	{
		imprimir ("\nNo se pudo abrir el archivo datos.txt\n",
		"El programa no puede continuar.")
		terminar("\nEjecuci�n terminada.\n") //funcion en sle para terminar ejecucion, adentro se le pone el mensaje a enviar antes de terminar ejecucion
/*
* Lo que sigue NUNCA se har�, pues la rutina termin() NUNCA retorna nada*/
 linea = "--nunca llega aqu�--"
}
set_ifs ("\n")
leer (linea)
mientras ( not eof() ) {
inc (cant_lineas)
leer (linea)
}
imprimir ("\nFueron le�das ", cant_lineas, " l�neas\n")
fin
