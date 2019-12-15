<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
   
    <xsl:output method="html" />
    <xsl:template match="course[@cid = 'IM130']">
        <xsl:value-of select="count(./course)"/>
     
        <xsl:choose>
            <xsl:when test="./course/@cid = 'IM131' and ./course/@cid = 'IM132' and ./course/@cid = 'IM133' and not(./course/grade/text() > 4.0)">
                
                Grade: <xsl:value-of select="."/>
                Average: <xsl:value-of select="avg(./course/grade/text())"/>
            </xsl:when>
            <xsl:otherwise>
                <out>FEHLER: Einer der Kurse wurde nicht bestanden</out>  
            </xsl:otherwise>
        </xsl:choose>
        
        <xsl:apply-templates/>
    </xsl:template>
</xsl:stylesheet>