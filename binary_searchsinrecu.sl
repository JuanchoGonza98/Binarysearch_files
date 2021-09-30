//Algoritmo Busqueda binaria sin recursividad
var
clave:numerico
vec:vector[10]numerico
inicio
 cls()
	vec={24,36,48,53,67,71,80,98,100,108}
	imprimir("Ingrese el valor del numero el cual desea encontrar en el arreglo: ")
	leer(clave)
	binary_search(clave,vec)
fin

subrutina binary_search(clave:numerico;vec:vector[10]numerico) 
var
comienzo,final,medio,posicion,flag,i:numerico
inicio
 cls()
	final=alen(vec)
	comienzo=1
	flag=0
	i=1
	desde i=1 hasta final
	{
		medio=int((comienzo+final)/2)
		si(vec[medio] > clave)
		{
			final=medio-1
		} 
		si(vec[medio] < clave)
			{
				comienzo=medio+1
			}
		si(vec[medio] == clave)
			{
				posicion=medio //se encontro la clave
				flag=1
				salir
			}
	}
	si(flag == 1)
	{
		imprimir("\nFue encontrado el valor en la posicion: ",medio)
		sino imprimir("\nNo se encontro el valor en la lista")
	}
fin


	
