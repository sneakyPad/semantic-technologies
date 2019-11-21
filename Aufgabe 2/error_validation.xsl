<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />
<xsl:template match="grade[@type == 'simple']">
    <xsl:choose>
        <xsl:when test="matches(grade,'\[([A-Z]{{2}})\]([^\[]+'">
        //Do something
        </xsl:when>
        <xsl:otherwise>
        //DO somethin
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />
<xsl:template match="grade[@type == 'simple']">
    <xsl:if test=not(grade(1.0, 1.3, 1.7, 2.0, 2.3, 2.7, 3.0, 3.3, 3.7, 4.0, 4.7, 5.0))>
    </xsl:if>
</xsl:template>