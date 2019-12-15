<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />
<xsl:template match="grade[@type = 'simple']">
    <xsl:choose>
        <xsl:when test="(. != '1.0' and . != '1.3'and . != '1.7'and . != '2.0'and . != '2.3' and . != '2.7' and . !=  '3.0'and . != '3.3'and . != '3.7'and . != '4.0'and . != '4.7'and . != '5.0')">
            <error>
                <xsl:value-of select="."/>
            </error>
        </xsl:when> 
        <xsl:otherwise>
            <xsl:value-of select="."/>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
<xsl:template match="course">
    <xsl:choose>
        <xsl:when test="count(./*)>=./grade/@attempt">
            <xsl:value-of select="."/>
        </xsl:when> 
        <xsl:otherwise>
            <error>
            <xsl:value-of select="."/>
            </error>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>
</xsl:stylesheet>