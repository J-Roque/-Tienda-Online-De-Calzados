create database Tienda;
use Tienda;
CREATE TABLE usuarios (
  id int primary key auto_increment,
  nombre varchar(30) NOT NULL,
  apellido varchar(30)NOT NULL,
  sexo char(1) NOT NULL,
  email varchar(20) NOT NULL,
  password varchar(50) NOT NULL
);
CREATE TABLE contactoF (
  idcontacto int primary key auto_increment,
  linkmap text(100),
  dirección varchar(50) NOT NULL,
  teléfono char(15) NOT NULL,
  fax char(15) NOT NULL,
  correo char(20) NOT NULL
  
);


CREATE TABLE filtro_productos (
  id int primary key auto_increment,
  genero varchar(30) NOT NULL,
  total int(10) NOT NULL,
  color_producto varchar(40) NOT NULL
);


CREATE TABLE genero (
  idGenero int primary key auto_increment,
  Detalle char(30) DEFAULT NULL
);

/*
create table Imagenes (
  idImg int primary key auto_increment,
  idJpg1 int not null,
  idJpg2 int not null,
  idJpg3 int not null,
  idJpg4 int not null );

  */
CREATE TABLE productos (
  idProduc int primary key auto_increment,
  precio char(10) NOT NULL,
  precioD char(10) NOT NULL,
  descripcion varchar(50) NOT NULL,
  existencias char(10) NOT NULL,
  nombre varchar(50) NOT NULL,
  Titulo Varchar(50)NOT NULL,
  comentario varchar(50) NOT NULL
  
);

CREATE TABLE DetalleProduc(
idDetalleProc int primary key auto_increment,
marca varchar(20) NOT NULL,
modelo varchar(20) NOT NULL,
tipo varchar(50) NOT NULL,
genero varchar (20) NOT NULL,
material varchar(50)NOT NULL,
descripcionP text(800)

);
alter table DetalleProduc add foreign key(idDetalleProc) references productos(idProduc);
#productos
INSERT  productos(precio,precioD,descripcion,existencias,nombre,Titulo,comentario) VALUES
('355','349','Zapatillas Urbanas Hombre adidas Originals','10','ADIDAS ZX Boost','Zapatillas Urbanas Hombre','Capsule Dark Green'),
('899','890','Zapatillas Hombre Camper Capsule','10',' camper Dark Green','Zapatillas Hombre Camper','Originals ZX 1K'),
('599','590','Zapatillas Urbanas Hombre Converse ','10',' Converse Weapon','Zapatillas Urbanas Hombre Converse','Weapon Cx Archive'),
('259','550','Zapatillas Urbanas Hombre Skechers','5','Skechers lites','Zapatillas Urbanas Hombre Skechers ','D lites 4.0'),
('265','365','Zapatillas Urbanas Hombre Converse ','50','CT AS Leather Ox','Zapatillas Urbanas Hombre','CT AS Leather Ox'),
('156','235','Zapatillas Urbanas Hombre Converse ','12','CT AS Leather Hi','Zapatillas Urbanas Hombre','AS Leather Hi'),
('201','254','Zapatillas Urbanas Converse','23',' El Distrito','Zapatillas Urbanas Hombre','7.0'),
('365','384','Zapatillas Urbanas Converse','56',' El Distrito','Zapatillas Urbanas Hombre',' 2.0 7'),
('369','654','Zapatillas Running','96','Adidas Adizero','Zapatillas Running',' Adios 6 Primegreen'),
('541','358','Zapatillas Urbanas','52','Adidas Originals','Zapatillas Running',' Forum Low'),
('454','628','Zapatillas Running','32','Run Falcon','Zapatillas Running',' Run Falcon 2.0'),
('231','378','Zapatillas Deportivas','12',' Hombres WER','Zapatillas Deportivas','FSDFWE'),
('365','391','Zapatillas Fútbol','58',' Hombre adidas Deportivo','Zapatillas Deportivas Hombre',' Pasto Sintético'),
('485','596','Zapatillas Casuales','69',' Hombre Camper Camp ','Zapatillas urbanas','Camper Camp'),
('156','945','Zapatillas Casuales','50',' Mujer Camper Cuero ','Zapatillas urbanas','Camper Cuero'),
('354','541','Zapatillas Casuales','98','Hombre Camper Cuero','Zapatillas urbanas','Camper Cuero'),
('654','287','Zapatillas Casuales','94',' Mujer Camper Cuero','Zapatillas urbanas','Camper Cuero'),
('123','189','Zapatillas Running','98','Running tela',' Nike Revolution','Nike Revolution 5.6'),
('358','458','Zapatillas Running','65','Zapatillas Running Tela','Mujer Nike ','Swift 65'),
('289','597','Zapatillas Running','213',' Mujer W ','Nike Run','Swift 2'),
('478','654','Zapatillas Running','541','Zapatillas Mujer',' Air Max',' Infinity 2 CU9453-100'),
('299','399','Zapatillas Urbanas','54',' Mujer Nike ','Court','Court Legacy'),
('319','419','Zapatillas Urbanas','25',' Mujer Nike','Venture','Venture Runner');

#*Detalle_productos
INSERT INTO Detalleproduc (marca,modelo,tipo,genero,material,descripcionP)VALUES
('Adidas original','H00430','Zapatillas urbanas','Hombre','Tela','La línea ZX fue pionera en un nuevo enfoque de la velocidad. Elevó el listón en comodidad y estilo. Ahora, está tomando un clima fresco. Confeccionados con una suela preparada para el invierno y superposiciones de ante, estos zapatos adidas mantienen su paso firme y sus pies calientes mientras navega por los días fríos en la ciudad. Los detalles reflectantes aseguran que su estilo siempre brille. Además, duplica la comodidad con EVA y Boost bajo los pies. Este producto está elaborado con contenido reciclado como parte de nuestra ambición de acabar con los residuos plásticos. El 20% de las piezas utilizadas para hacer la parte superior se fabrican con un mínimo de 50% de contenido reciclado.'),
('Camper','Capsule','Zapatillas urbanas','Hombre','Cuero','Para esta temporada, hemos unido fuerzas con SailGP para convertirnos en su proveedor oficial de calzado y hemos creado dos colecciones únicas: una diseñada exclusivamente para el equipo español de SailGP y otra para el circuito en sí.Esta vez presentamos una estética nueva, y personalizada con todas las opciones, que combina los colores característicos del equipo.Con una silueta renovada y una suela suave, nuestro mejorado modelo Pelotas XL refleja una nueva interpretación del calzado urbano.'),
('Converse','171556C','Zapatillas urbanas','Hombre','Leather','El colorido en la parte superior de cuero premium se une al cuello de espuma de PU y a la suela de goma para dar más confort. Los paneles en forma de Y y la etiqueta tejida en la lengüeta celebran nuestra historia, mientras que la entresuela CX y la plantilla de confort CX ligera traen el futuro'),
('Skechers','237225-BKW','Zapatillas urbanas','Hombre','Sintético','Skechers D Lites 4.0 Obtén una nueva actualización con un estilo icónico con el zapato Skechers D lites 4.0. Esta zapatilla deportiva de moda con cordones presenta una parte superior de cuero y material sintético con una plantilla de espuma viscoelástica refrigerada por aire (R) y una entresuela acolchada con purpurina.'),
('Converse','171461C','Zapatillas urbanas','Hombre','Cuero','Actualizamos el diseño con un cuero suave y flexible, un parche de tobillo tricolor, detalles clásicos como la entresuela de goma y la suela con patrón de rombos.. Terminado con una plantilla OrthoLite para ayudar a mantenerte cómodo.'),
('Converse','171463C','Zapatillas urbanas','Hombre','Cuero','Actualizamos el diseño con un cuero suave y flexible, una etiqueta tejida de tres colores en la lengüeta, detalles clásicos como un parachoques de goma en la puntera y suela con patrón de rombos. Terminado con una plantilla OrthoLite para ayudar a mantenerte cómodo.'),
('Converse','167008C','Zapatillas urbanas','Hombre','Sintetico',' Ahora más cómoda. La Converse El Distrito 2.0 en lona duradera fue diseñada para soportar el desgaste diario. El acolchado adicional en la lengüeta y el forro resisten al tiempo, mientras que los detalles de gamuza agregan textura para una zapatilla que no se rinde. Además, una plantilla actualizada ayuda a mantener esta versión aún más cómoda.'),
('Converse','167011C','Zapatillas urbanas','Hombre','Cuero','Ahora más cómoda. La Converse El Distrito 7.0 en lona duradera fue diseñada para soportar el desgaste diario. El acolchado adicional en la lengüeta y el forro resisten al tiempo, mientras que los detalles de gamuza agregan textura para una zapatilla que no se rinde.'),
('Adidas','H67512','Zapatillas deportivas','Mujer','Tela','Los intervalos, las carreras de tempo y las frías sesiones matutinas dieron sus frutos. Llegaste a la línea de salida. Todo lo que queda es ponerse en marcha y recorrer la distancia con estas zapatillas adidas de corte ancho. Su parte superior de malla es tan ligera que apenas la sentirás en el campo. La amortiguación Lightstrike brinda una conducción ágil y receptiva. Este producto está elaborado con Primegreen, una serie de materiales reciclados de alto rendimiento. El 50% de la parte superior es contenido reciclado. Sin poliéster virgen.'),
('Adidas','H05108','Zapatillas urbanas','Mujer','Sintetico','Zapatillas Urbanas Mujer adidas Originals Forum Low ofrecen mayor comidad para sesiones matutinas de larga duracion.'),
('Adidas','FY9624','Zapatillas deportivas','Mujer','Tela','Con estos tenis adidas en tus pies podrás correr en el parque y luego tomar un café con amigos con total comodidad. Su exterior de malla ofrece transpirabilidad que mantiene tus pies frescos de la mañana a la noche. La suela tipo cupsole de caucho brinda la estabilidad necesaria para enfrentarte a todo lo que te depare el día.'),
('Adidas','FX3624','Zapatillas deportivas','Hombre','Textil','Perfectos para una jornada de trote matutino'),
('Adidas','FV7943','Zapatillas Fútbol','Hombre','Cuero','Desata tus habilidades con la pelota sobre pasto sintético. El talón de estos chimpunes adidas Deportivo para jóvenes tiene un diseño especial que sujeta el pie el todo momento. La lengüeta perforada ayuda a mantener tus pies frescos, incluso en los momentos más intensos. Las puntadas en el antepié mantienen la pelota pegada a tu pie y el sistema de amarre asimétrico crea una superficie lisa para un mayor control con cada golpe.'),
('Camper','HFK98','Zapatillas urbanas','Hombre','Cuero','Botas de cuero liso encerado con efecto rústico. Ideales para esas actividades al aire libre que nos conectan con la naturaleza gracias a la acción repelente de salpicaduras de agua del cuero y su suela tractora en TR (material durable y cómodo).'),
('Camper','DRE124','Zapatilas urbanas','Hombre','Cuero','Zapatillas Courb en piel grises de Camper con puntera redonda cierre con cordones en la parte delantera, perforaciones decorativas plantilla con la marca y suela plana de goma.'),
('Camper','OIU854','Zapatillas urbanas','Hombre','Cuero','Zapatillas Achilles Low Summer Edition en cuero negras de Common Projects con paneles de malla, puntera redonda, cierre con cordones en la parte delantera, plantilla con la marca y suela plana de goma.'),
('Camper','EW1548','Zapatillas urbanas','Hombre','Cuero','Suela de Sintético. Parche con logotipo en la lengüeta, lateral y talón'),
('Nike','BQ3204','Zapatillas running','Hombre','Tela','Cuando la calle te llama, responde a la llamada con un par ligero que te mantiene en movimiento kilómetro tras kilómetro. La espuma suave amortigua tu pisada, y el talón reforzado brinda una pisada suave y estable. Está confeccionado con material de tejido Knit que brinda soporte transpirable, mientras que el diseño minimalista se ajusta a cualquier lugar donde el día te lleve.'),
('Nike','CU3528','Zapatillas running','Mujer','Tela',' Por nuevos desafíos en el pavimento.Sabemos que la comodidad es la clave de una carrera exitosa, así que nos aseguramos de que tus pasos sean amortiguados y flexibles para brindar una pisada suave.Una correa y un cierre envolvente hacen que estos zapatos sean muy fáciles de poner y quitar.Es una evolución de un favorito, con un diseño transpirable confeccionado con al menos un 20% de contenido reciclado por peso.'),
('Nike','CU3527','Zapatillas running','Mujer','Tela',' Este calzado solo refleja energía positiva, perfecta para jugar o disfrutar del día a día.Los gráficos coloridos y el Swoosh brillante realzan el arte callejero que amamos.Confeccionado con al menos un 20% de contenido reciclado en peso, ligero, transpirable y acolchado para los pies en crecimiento; no hay margen de error con este calzado.'),
('Nike','CU9845','Zapatillas running','Mujer','Tela','Se centra en mostrar lo positivo, ya sea en tu juego diario o en cualquier parte.Los gráficos coloridos y el Swoosh brillante realzan el arte callejero que amamos.Confeccionado con al menos un 20 % de contenido reciclado en peso, ligero, transpirable y acolchado para los pies en crecimiento; no hay margen de error con este calzado.'),
('Nike','CU4149','Zapatillas urbanas','Mujer','Cuero','El Nike Court Legacy Canvas rinde tributo a una historia arraigada en la cultura del tenis y te ofrece un clásico con un diseño moderno y urbano. Hecho con lona duradera, costuras de herencia y un diseño Swoosh retro, te permite combinar el deporte y la moda.'),
('Nike','CK2948','Zapatillas urbanas','Mujer','Sintetico','Creado para la cancha, pero llevado a las calles, el ícono del baloncesto de los 80 regresa con estampados de animal print y detalles metalizados que permiten que tu lado primario se destaque.Con su clásico diseño de básquetbol, el Nike Dunk Low SE canaliza el estilo vintage con un cuello acolchado de corte bajo que te permite llevar tu juego a cualquier lugar con comodidad.');
#contactoF
INSERT contactoF(linkmap,dirección,teléfono,fax,correo)VALUES
('https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4639.887266193335!2d-77.01751109338475!3d-12.0665845540402!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c89e603372e5%3A0xff156f2ac58b1468!2sGaler%C3%ADa%20Gamarra%20Az%C3%BAl!5e0!3m2!1ses-419!2spe!4v1638978833220!5m2!1ses-419!2spe','Agustin Gamarra 840, La Victoria 15018','98631290','800 589 25','calzadosWD@gmail.com');

#Procedure
create procedure   usp_getVerProductos()
select  idProduc,precio,descripcion,existencias,nombre from  Productos;

create procedure  usp_getProducto(in _idDetalleProc int)
select DetalleProduc.idDetalleProc,productos.Titulo,productos.comentario,productos.precio,productos.precioD,productos.descripcion,DetalleProduc.marca,DetalleProduc.modelo,DetalleProduc.tipo,DetalleProduc.genero,DetalleProduc.material,DetalleProduc.descripcionP from productos INNER JOIN DetalleProduc  ON productos.idProduc = DetalleProduc.idDetalleProc WHERE idDetalleProc = _idDetalleProc;

create procedure   usp_getcontacto()
select * from  contactoF;
/*
create procedure  usp_getVerProductosH()
select  Productos.idProduc,Productos.precio,Productos.descripcion,Productos.existencias,Productos.nombre,detalleproduc.genero from  Productos INNER JOIN detalleproduc ON productos.idProduc = DetalleProduc.idDetalleProc where genero = 'Hombre'

-------------------------------------------------------------------------
call usp_getVerProductos()
call usp_getProducto(4)
call usp_getcontacto()
call usp_getVerProductosH()
--------------------------------------------------------------------------
https://platanitos.com/converse-converse-all-court-vltg-leather-blanco-rojo-213790
UPDATE productos 
SET nombre='Running WZA' WHERE idProduc='19'



