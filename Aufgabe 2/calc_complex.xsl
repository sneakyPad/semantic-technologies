<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
   
    <xsl:output method="html" />
    <xsl:template match="course[@cid = 'IM130']">
        <xsl:value-of select="count(./course)"/>
        <xsl:apply-templates/>
        
              
    </xsl:template>
    <xsl:template match="course[@cid = 'IM131']">
        <xsl:assert test="./grade/. &lt;= 4.0">
            <xsl:message>FEHLER: Der Kurs wurde nicht bestanden</xsl:message>  
        </xsl:assert>     
    </xsl:template>
    <xsl:template match="course[@cid = 'IM132']">
        <xsl:assert test="./grade/. &lt;=  4.0">
            <xsl:message>FEHLER: Der Kurs wurde nicht bestanden</xsl:message>  
        </xsl:assert>     
    </xsl:template>
    <xsl:template match="course[@cid = 'IM133']">
        <xsl:assert test="./grade/. &lt;=  4.0">
            <xsl:message>FEHLER: Der Kurs wurde nicht bestanden</xsl:message>  
        </xsl:assert>     
    </xsl:template>
    
</xsl:stylesheet>