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

#Tomaestados



#Usuarios

User.create(email: 'martin@martin.com', encrypted_password: 'martin')