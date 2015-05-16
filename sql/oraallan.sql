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
    fechaActuPrecio DATE ,
    fechaRegistro   DATE ,
    ref_familia REF T_Familia ,
    list_ref_T_Componente T_Componente_Lista ,
   
    MAP MEMBER FUNCTION precioMap RETURN FLOAT ,
    CONSTRUCTOR FUNCTION T_FacturaCompra(
        pCodigo     IN VARCHAR2 ,
        pNombre     IN VARCHAR2 ,
        pMarca      IN VARCHAR2 ,
        pModelo     IN VARCHAR2 ,
        pCantMin    IN NUMBER ,
        pCantMax    IN NUMBER ,
        pPrecio     IN FLOAT ,
        pCodFamilia IN VARCHAR2 )
      RETURN SELF
    AS
      RESULT ) FINAL ;


--CREATE OR REPLACE TYPE T_Usuarios;

--CREATE OR REPLACE TYPE T_Clientes;

--CREATE OR REPLACE TYPE T_Proveedores;

--CREATE OR REPLACE TYPE T_Cotizaciones;

--CREATE OR REPLACE TYPE T_FacturaCompra;



  

      