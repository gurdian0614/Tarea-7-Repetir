// Realizar un algoritmo contable para un banco que maneja su cuenta de ahorro. Este se
// encarga de llevar control de todos los dep�sitos y retiros que se hacen en un per�odo de
// tiempo (El tiempo no importa para el ejercicio). La cuenta inicial parte de Lps. 2,000.00. El
// programa dejar� de ejecutarse cuando el saldo sea igual o menor a 0. Para ese momento
// deber� de mostrar en pantalla los siguientes puntos:
// a. Total Depositado
// b. Total Retirado
// c. Total de Transacciones
Funcion EsperarInfinito
	Escribir "Presione cualquier tecla para continuar..."
	Esperar Tecla
Fin Funcion

Funcion op <- Menu
	Limpiar Pantalla
	Escribir "***************************"
	Escribir "* 1. Dep�sito             *"
	Escribir "* 2. Retiro               *"
	Escribir "***************************"
	Leer op
Fin Funcion

Algoritmo Tarea_7
	saldo <- 2000
	totalDepositado <- 0
	totalRetirado <- 0
	totalTransacciones <- 0
	
	Repetir
		op <- Menu()
		
		Segun op Hacer
			1:
				Limpiar Pantalla
				Escribir "Ingrese el valor a depositar"
				Leer valorDeposito
				totalDepositado = totalDepositado + valorDeposito
				totalTransacciones = totalTransacciones + 1
				saldo = saldo + valorDeposito
				EsperarInfinito()
			2:
				Limpiar Pantalla
				Escribir "Ingrese el valor a retirar"
				Leer valorRetirar
				totalRetirado = totalRetirado + valorRetirar
				totalTransacciones = totalTransacciones + 1
				saldo = saldo - valorRetirar
				EsperarInfinito()
			De Otro Modo:
				Escribir "Opci�n no v�lida..."
				Esperar 1 Segundos
		Fin Segun
	Hasta Que saldo <= 0
	
	Escribir "Total depositado: ", totalDepositado, " Lps"
	Escribir "Total retirado: ", totalRetirado, " Lps"
	Escribir "Total de transacciones: ", totalTransacciones
	
FinAlgoritmo
