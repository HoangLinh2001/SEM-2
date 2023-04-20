<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr style="color:green; font-size:50px; padding-right: 50px">
                        <th>Company</th>
                        <th>Model</th>
                        <th>Price</th>
                        <th>Aceessories</th>
                    </tr>
                    <xsl:for-each select = "/Mobiles/Mobile">
                        <xsl:if test = "Price &gt; 10">
                            <tr style="font-size:50px;">
                                <td>
                                    <xsl:value-of select = "Company"></xsl:value-of>
    
                                </td>
                                <td>
                                    <xsl:value-of select = "Model"></xsl:value-of>
    
                                </td>
                                <td>
                                    <xsl:value-of select = "Price"></xsl:value-of>
    
                                </td>
                                <td>
                                    <xsl:value-of select = "Accessories"></xsl:value-of>
    
                                </td>
    
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
