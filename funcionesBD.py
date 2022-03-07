# Gonzalo Peña Calero 1ºASIR

import sys
import MySQLdb 

# Conectarse a la base de datos

def conectarse_BD(localhost,gonzalo,admin,ProyectoBD):
    try:
        db = MySQLdb.connect(localhost,gonzalo,admin,ProyectoBD)
        return db
    except MySQLdb.Error as e:
        print("No puedo conectar a la base de datos:",e)
        sys.exit(1)

def Desconectar_BD(db):
    db.close()

# Menú:

def mostrarMenu():
    menu='''
    1. Listar personajes y decir cuantos hay
    2. Mostrar habilidad de fuerza del personaje requerido
    3. Pide nombre equipo y mostrar personajes que pertenecen
    4. Insertar personaje
    5. Borrar equipo
    6Actualizar habilidad inteligencia de un personaje
    0. Salir
    '''
    print(menu)
    while True:
        try:
            opcion=int(input("Opción:"))
            return opcion
        except:
            print("Opción incorrecta, debe ser un número")

# Listar personajes

def listar_personajes(db):
    sql="select Nombre,title from Personajes"
    cursor = db.cursor(MySQLdb.cursors.DictCursor)
    try:
       cursor.execute(sql)
       registros = cursor.fetchall()
       return registros
    except:
       print("Error")

# Contar personajes

def contar_personajes(db):
    sql="select * from Personajes"
    cursor = db.cursor(MySQLdb.cursors.DictCursor)
    try:
       cursor.execute(sql)
       return cursor.rowcount
    except:
        print("Error")

# Pedir personaje y mostrar hablididad de fuerza

def ver_habfuerza(db,Nombre):
    sql="select Fuerza from Personajes where Nombre='%s';" %Nombre
    cursor=db.cursor(MySQLdb.cursors.DictCursor)
    try:
        cursor.execute(sql)
        registros=cursor.fetchall()
        return registros
    except:
        print("Error")

# Pedir equipo y mostrar personajes que pertenecen 

def personajes_de_equipo(db,Nombre):
    sql="select Nombre from Personajes where Nombre in(select Nombre from Equipos where Nombre=%d);"%Nombre
    cursor=db.cursor(MySQLdb.cursors.DictCursor)
    try:
        cursor.execute(sql)
        registros=cursor.fetchall()
        return registros
    except:
        print("Error en la consulta")

# Insertar nuevo personaje

def insertar_personaje(db,personaje):
    cursor=db.cursor()
    sql="insert into Personajes(Nombre) values('%s');"%(personaje.get("Nombre"))
    try:
        cursor.execute(sql)
        db.commit()
        print("Personaje añadido con éxito")
    except:
        print("Error al insertar al personaje")
        db.rollback


# Borrar un equipo

def borrar_equipo(db,Nombre):
    sql="delete from Equipos where Nombre='%s'"%Nombre
    cursor=db.cursor()
    pregunta=input("¿Quieres borrar el equipo? S/N")
    if pregunta=="s" or pregunta=="S":
        try:
            cursor.execute(sql)
            db.commit()
            print("Equipo borrado con éxito")
            if cursor.rowcount==0:
                print("No existe ningun equipo con ese nombre")
        except:
            print("Error al borrar")
            db.rollback()

# Actualizar habilidad de inteligencia

def actualizar_inteligencia(db,Inteligencia,Nombre):
    cursor=db.cursor()
    sql="update Personajes set Inteligencia='%s' where Nombre='%s'"%(Inteligencia,Nombre)
    try:
        cursor.execute(sql)
        db.commit()
        print("Habilidad de inteligencia actualizada")
    except:
        print("Error al actualizar")
        db.rollback()
