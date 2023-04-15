<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="ProductList">
        <html>
            <head>
                <title>index</title>
            </head>
            <body>
                <h2>Product List</h2>
                <table border="1">
                    <tr style="color:yellow; background-color:black">
                        <th>Sr.no</th>
                        <th>Product code</th>
                        <th>Product name</th>
                        <th>Manufacture</th>
                        <th>Quantity</th>
                        <th>Unit price</th>
                    </tr>
                    <xsl:for-each select="Product">
                        <xsl:sort data-type="number" 
                                  order="descending"
                                  select="Quantity"/>
                        <xsl:if test="Quantity &gt; 19">
                            <xsl:choose>
                                <xsl:when test="Quantity &gt; 20">
                                    <tr style="color:red">
                                        <td>
                                            <xsl:number value="position()" format="1"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Code"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Name"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Manufacture"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Quantity"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Price"/>
                                        </td>
                                    </tr>
                                </xsl:when>
                                <xsl:otherwise>
                                     <tr style="color:white;background-color:black">
                                        <td>
                                            <xsl:number value="position()" format="1"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Code"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Name"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Manufacture"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Quantity"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="Price"/>
                                        </td>
                                    </tr>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
