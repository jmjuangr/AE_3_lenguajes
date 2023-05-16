<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="/ite/@nombre"/>
                </title>
                <a href="{/ite/@web}">Sitio web del Instituto</a>
                <link rel="stylesheet" href="css/styles.css" />
            </head>
            <body>
                <h2>
                    <xsl:value-of select="ite/empresa" />
                </h2>
                <h2>Teléfono: <xsl:value-of select="ite/telefono" />
                </h2>

                <h3>Profesores</h3>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                    </tr>
                    <xsl:for-each select="/ite/profesores/profesor">
                        <tr>
                            <td>
                                <xsl:value-of select="id" />
                            </td>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h3>Director</h3>
                <p>Nombre: <xsl:value-of select="/ite/director/nombre" />
                </p>
                <p>Despacho: <xsl:value-of select="/ite/director/despacho" />
                </p>

                <h3>Jefe de Estudios</h3>
                <p>Nombre: <xsl:value-of select="/ite/jefe_estudios/nombre" />
                </p>
                <p>Despacho: <xsl:value-of select="/ite/jefe_estudios/despacho" />
                </p>

                <h3>Ciclos</h3>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Grado</th>
                        <th>Año de Decreto de Título</th>
                    </tr>
                    <xsl:for-each select="/ite/ciclos/ciclo">
                        <tr>
                            <td>
                                <xsl:value-of select="@id" />
                            </td>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                            <td>
                                <xsl:value-of select="grado" />
                            </td>
                            <td>
                                <xsl:value-of select="decretoTitulo/@año" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h3>Contacto</h3>
                <form>
                    <br />
                    <label for="nombre" class="colocar_nombre">Nombre <span class="obligatorio">*</span>
                    </label>
                    <br />
                    <input type="text" name="introducir_nombre" id="nombre" required="obligatorio"
                        placeholder="Escribe tu nombre" />
                    <br />
                    <label for="email">Correo electrónico: <span class="obligatorio">*</span>
                    </label>
                    <br />
                    <input type="email" id="email" name="email" required="obligatorio"
                        placeholder="email" />
                    <br />
                    <label for="tlf" class="colocar_tlf">Teléfono</label>
                    <br />
                    <input type="text" name="introducir_telefono" id="tlf" required="obligatorio"
                        placeholder="Telefono de contacto" />
                    <br />
                    <input type="submit" value="Enviar" />
                </form>


            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>