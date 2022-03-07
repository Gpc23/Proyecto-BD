# Gonzalo Peña Calero 1ºASIR

from funcionesBD import *
import time

db = conectarse_BD("localhost","gonzalo","admin","ProyectoBD")

opcion=mostrarMenu()
while opcion!=0:
    
    if opcion==1:
        for Personajes in listar_personajes(db):
            print("Nombre:",Personajes.get("Nombre"))
        print ("Número total de personajes:",contar_personajes(db))
        time.sleep(3)
    
    if opcion==2:
        Nombre=str(input("Escribe nombre del personaje: "))
        if len(ver_habfuerza(db,Nombre)) != 0:
            for Personajes in ver_habfuerza(db,Nombre):
                print(Personajes.get("Fuerza"))
        else:
            print("El personaje que has introducido no existe")
        time.sleep(2)
    
    if opcion==3:
        Nombre=int(input("Indica el nombre del equipo: "))
        if len(personajes_de_equipo(db,Nombre)) != 0:    
            for Personajes in personajes_de_equipo(db,Nombre):
                print(Personajes.get("Nombre"))
        else:
            print("No existen personajes en ese equipo")
        time.sleep(2)
    
    if opcion==4:
        Personaje={}
        Personaje["Nombre"]=input("Nombre del Personaje: ")
        insertar_personaje(db,Personaje)
        time.sleep(2)
    
    if opcion == 5:
        Equipo=input("Escribe el nombre del equipo que quieras borrar: ")
        Nombre=Equipo.lower()
        borrar_equipo(db,Nombre)
        time.sleep(2)
    
    if opcion ==6:
        Nombre=input("Escribe el nombre del personaje del cual le quieres actualizar la habilidad de inteligencia: ")
        Inteligencia=input("Introduce la nueva habilidad de inteligencia: ")
        actualizar_inteligencia(db,Inteligencia,Nombre)
        time.sleep(2)
    else:
        print("Opción incorrecta.")
    
    opcion=mostrarMenu()

Desconectar_BD(db)
