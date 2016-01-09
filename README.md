Este fichero contiene algunos ejemplos para trabajar con XML

# Contenidos

* `pedido.xml`: fichero XML con los datos
* `pedido.dtd`: DTD para validar el fichero XML
* `pedido.xsd`: XML Schema para validar el fichero XML
* `pedido.xsl`: Fichero XSLT que permite convertir de XML a HTML 
* `pedido.css`: Hoja de estilos CSS utilizada por el fichero HTML generado
* `pedido2.xsl`: Fichero XSLT que permite convertir de XML a HTML (enlaza con imágenes)
* `pedido2svg.xsl`: Fichero XSLT que permite convertir de XML a SVG
* `pedido2json.xsl`: Fichero XSLT que permite convertir de XML a JSON
* `pedido2fo.xsl`: Fichero XSLT que permite convertir de XML a XSL-FO
* `pedido2rdf.xsl`: Fichero XSLT que permite convertir de XML a RDF

# Utilización

Para chequear que está bien formado

> xmllint pedido.xml

Para validar con DTD

> xmllint --dtdvalid pedido.dtd pedido.xml

Para validar con XML Schema

> xmllint --schema pedido.xsd --noout pedido.xml

Convertir XML a HTML mediante XSLT (versión 1)

> xsltproc pedido.xsl pedido.xml -o pedido.html

Convertir XML a HTML mediante XSLT (versión 2, con imágenes)

> xsltproc pedido2.xsl pedido.xml -o pedido2.html

Convertir XML a SVG mediante XSLT 

> xsltproc pedido2svg.xsl pedido.xml -o pedido.svg

Convertir XML a JSON mediante XSLT

> xsltproc pedido2json.xsl pedido.xml -o pedido.json

Convertir XML a FO mediante XSLT

> xsltproc pedido2fo.xsl pedido.xml -o pedido.fo

Convertir FO a PDF mediante Apache FOP (requiere su instalación aparte)

> fop pedido.fo pedido.pdf

Convertir XML a RDF mediante XSLT

> xsltproc pedido2rdf.xsl pedido.xml -o pedido.rdf

