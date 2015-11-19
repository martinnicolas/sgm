# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Subestaciones
Subestacion.create(codigo: 1110, nombre: 'Subestacion Norte')
Subestacion.create(codigo: 1120, nombre: 'Subestacion Sur')
Subestacion.create(codigo: 1130, nombre: 'Subestacion Este')
Subestacion.create(codigo: 1140, nombre: 'Subestacion Oeste')

#Secciones
Seccion.create(nombre: 'Seccion 1', subestacion_id: 1)
Seccion.create(nombre: 'Seccion 2', subestacion_id: 1)
Seccion.create(nombre: 'Seccion 3', subestacion_id: 1)
Seccion.create(nombre: 'Seccion 4', subestacion_id: 1)

Seccion.create(nombre: 'Seccion 1', subestacion_id: 2)
Seccion.create(nombre: 'Seccion 2', subestacion_id: 2)
Seccion.create(nombre: 'Seccion 3', subestacion_id: 2)
Seccion.create(nombre: 'Seccion 4', subestacion_id: 2)

Seccion.create(nombre: 'Seccion 1', subestacion_id: 3)
Seccion.create(nombre: 'Seccion 2', subestacion_id: 3)
Seccion.create(nombre: 'Seccion 3', subestacion_id: 3)
Seccion.create(nombre: 'Seccion 4', subestacion_id: 3)

Seccion.create(nombre: 'Seccion 1', subestacion_id: 4)
Seccion.create(nombre: 'Seccion 2', subestacion_id: 4)
Seccion.create(nombre: 'Seccion 3', subestacion_id: 4)
Seccion.create(nombre: 'Seccion 4', subestacion_id: 4)

#Rutas
Rutum.create(nombre: 'Ruta 1')
Rutum.create(nombre: 'Ruta 2')
Rutum.create(nombre: 'Ruta 3')

#Roles
Role.create(id: 1, name:'administrador')
Role.create(id: 2, name:'tomaestado')

#Usuarios
#User.create(id: 1, email: 'martin@martin.com', encrypted_password: 'martin')
#User.create(id: 2, email: 'felipe@martin.com', encrypted_password: 'felipe')
#User.create(id: 3, email: 'mika@martin.com', encrypted_password: 'mika')

#Roles_Usuarios
#RolesUser.create(:role_id => 1,:user_id => 1)
#RolesUser.create(:role_id => 2,:user_id => 2)
#RolesUser.create(:role_id => 2,:user_id => 3)

#Tomaestados
#Tomaestado.create(dni: 31343209, apellido: 'Moreno', nombre: 'Felipe', user_id: 2)
#Tomaestado.create(dni: 32343209, apellido: 'Moreno', nombre: 'Mika', user_id: 3)

#Clientes
Cliente.create(dni: 11446687, apellido: 'Ferreras', nombre: 'Graciela Mónica', telefono: '2804405149', email: 'graciela.ferreras@gmail.com', domicilio: 'Facundo Quiroga 418')
Cliente.create(dni: 11446687, apellido: 'Moreno', nombre: 'María Cecilia', telefono: '2804681490', email: 'maria.cecilia.moreno12@gmail.com', domicilio: 'Rifleros 220')
