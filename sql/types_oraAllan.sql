--CREATE OR REPLACE TYPE T_FacturaCompra;

CREATE OR REPLACE TYPE T_FacturaCompra AS OBJECT
  (
    codigo     VARCHAR2 (20 CHAR) ,
    nombre     VARCHAR2 (50 CHAR) ,
    marca      VARCHAR2 (20 CHAR) ,
    modelo     VARCHAR2 (20) ,
    cantMinima NUMBER (3) ,
    cantMaxima NUMBER (5) ,
    precio FLOAT ,
    fechaRegistro   DATE ,
    proveedor T_Proveedor,
    usuario T_Usuarios,
    
   
    CONSTRUCTOR FUNCTION T_FacturaCompra(
    
        pCodigo     IN VARCHAR2 ,
        pNombre     IN VARCHAR2 ,
        pMarca      IN VARCHAR2 ,
        pModelo     IN VARCHAR2 ,
        pCantMin    IN NUMBER ,
        pCantMax    IN NUMBER ,
        pPrecio     IN FLOAT ,
        fechaRegistro IN  DATE 
     
        )
      RETURN SELF
    AS
      RESULT ) FINAL ;


--CREATE OR REPLACE TYPE T_Usuarios;

CREATE OR REPLACE TYPE T_Usuarios AS OBJECT
  (
    codigo     VARCHAR2 (20 CHAR) ,
    nombre     VARCHAR2 (50 CHAR) ,
    nombreusuario      VARCHAR2 (20 CHAR) ,
    contraseña     VARCHAR2 (20) ,
    infoUsuario T_Info ,
   
   
    CONSTRUCTOR FUNCTION T_Usuarios(
    
        pCodigo     IN VARCHAR2 ,
        pNombre     IN VARCHAR2 ,
        pNombreUsuario     IN VARCHAR2 ,
        pContraseña    IN VARCHAR2 

        )
      RETURN SELF
    AS
      RESULT ) FINAL ;
      
--CREATE TYPE T_Info;

CREATE OR REPLACE TYPE T_Info AS OBJECT
  (
    codigo     VARCHAR2 (20 CHAR) ,
    correo     VARCHAR2 (50 CHAR) ,
    edad      NUMBER (5) ,
    fechaIngreso    DATE ,
   
    CONSTRUCTOR FUNCTION T_Info(
    
        pCodigo     IN VARCHAR2 ,
        pCorreo    IN VARCHAR2 ,
        pEdad     IN VARCHAR2 ,
        pFechaIngreso    IN DATE

        )
      RETURN SELF
    AS
      RESULT ) FINAL ;

--CREATE OR REPLACE TYPE T_Clientes;

CREATE OR REPLACE TYPE T_Clientes AS OBJECT
  (
    codigo     VARCHAR2 (20 CHAR) ,
    nombre     VARCHAR2 (50 CHAR) ,
    nombrecliente      VARCHAR2 (20 CHAR) ,
    infoCliente T_Info ,
   
   
    CONSTRUCTOR FUNCTION T_Usuarios(
    
        pCodigo     IN VARCHAR2 ,
        pNombre     IN VARCHAR2 ,
        pNombreCliente     IN VARCHAR2 
       
        )
      RETURN SELF
    AS
      RESULT ) FINAL ;

--CREATE OR REPLACE TYPE T_Proveedores;


CREATE OR REPLACE TYPE T_Proveedores AS OBJECT
  (
    codigo     VARCHAR2 (20 CHAR) ,
    nombre     VARCHAR2 (50 CHAR) ,
    nombreproveedor      VARCHAR2 (20 CHAR) ,
    infoProveedor T_Info ,
   
   
    CONSTRUCTOR FUNCTION T_Usuarios(
    
        pCodigo     IN VARCHAR2 ,
        pNombre     IN VARCHAR2 ,
        pNombreProveedor    IN VARCHAR2 
       
        )
      RETURN SELF
    AS
      RESULT ) FINAL ;

--CREATE OR REPLACE TYPE T_Cotizaciones;

--CREATE OR REPLACE TYPE T_FacturaCompra;

--CREATE OR REPLACE TYPE T_UnidadesMedida;





  

      