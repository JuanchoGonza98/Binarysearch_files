var 
array:vector[*]numerico
size,begin,mid,end,element,index:numerico
inicio
 cls()
	imprimir("Ingrese dimension del vector: ")
	leer(size)
	dim(array,size)
	get_vec(array)
//ordenando el vector de manera creciente
	bubble_sort(array)
	imprimir("\nEl vector ordenado crecientemente es: ")
	print_vec(array)
	begin=1
	end=alen(array)
	imprimir("\nIngrese lo que desee encontrar: ")
	leer(element)
	index=binary_search(array,begin,end,element)
	si(index <> 0)
	{
		imprimir("\nEl elemento se ha encontrado y esta en la posicion: ",index," y su valor es: ",array[index])
		sino imprimir("\nNo se encontro el elemento en la lista")
	}
fin

sub get_vec(ref vec:vector[*]numerico)
var i:numerico
inicio	
	desde i=1 hasta alen(vec)
	{
		imprimir("vec[",i,"]: ")
		leer(vec[i])
	}
fin

sub bubble_sort(ref vec:vector[*]numerico)
var i,aux,j:numerico
inicio
	desde i=2 hasta alen(vec)
	{
		desde j=1 hasta alen(vec)-1
		{
			si(vec[j] > vec [j+1])
			{
				aux = vec[j]
				vec[j] = vec[j+1]
				vec[j+1] = aux
			}
		}
	}
fin

sub print_vec(ref vec:vector[*]numerico)
var i:numerico
inicio
	desde i=1 hasta alen(vec)
	{
		imprimir("\nvec[",i,"]: ",vec[i])
	}
fin

sub binary_search(ref vec:vector[*]numerico;begin,end,element:numerico) retorna numerico
var pos_wanted,mid:numerico
inicio
	si(begin > end)
	{
		pos_wanted = 0
		sino
			mid = int((begin+end)/2)
			si(element == vec[mid])
			{
				pos_wanted = mid
				sino
					si(element < vec[mid])
					{
						end = mid - 1
						sino
						begin = mid + 1
					}
				pos_wanted=binary_search(vec,begin,end,element)
			}
	}
retorna(pos_wanted)
fin
