
CREATE TABLE configuracion (
                id_config INT NOT NULL,
                id_ideo_relacion INT NOT NULL,
                director VARCHAR(25) NOT NULL,
                duracion_pelicula VARCHAR(25) NOT NULL,
                PRIMARY KEY (id_config)
);


CREATE TABLE video (
                id_video INT NOT NULL,
                id_config INT NOT NULL,
                video_nombre VARCHAR(25) NOT NULL,
                PRIMARY KEY (id_video, id_config)
);


CREATE TABLE membresia (
                metodo_pago VARCHAR(25) NOT NULL,
                inicio_de_plan INT NOT NULL,
                precio_por_inscripcion INT NOT NULL,
                PRIMARY KEY (metodo_pago)
);


CREATE TABLE usuario (
                id_usuario INT NOT NULL,
                nombre_cliente VARCHAR(25) NOT NULL,
                usuario_correo VARCHAR(25) NOT NULL,
                password VARCHAR(25) NOT NULL,
                metodo_pago VARCHAR(25) NOT NULL,
                PRIMARY KEY (id_usuario)
);


ALTER TABLE video ADD CONSTRAINT configuracion_video_fk
FOREIGN KEY (id_config)
REFERENCES configuracion (id_config)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE usuario ADD CONSTRAINT metodo_de_pago_usuario_fk
FOREIGN KEY (metodo_pago)
REFERENCES membresia (metodo_pago)
ON DELETE NO ACTION
ON UPDATE NO ACTION;