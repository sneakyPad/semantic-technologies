<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0"
    xmlns:fn="http://whatever">
<xsl:output method="html" />
    
 <xsl:variable name="pTime" select="'20191126011500 +0100'" />
 <xsl:variable name="pTimeI" select="'20191126011500 +0100'" />
 <xsl:variable name="pChannel" select="KabelEinsClassic.de" />
    
 <xsl:function name="fn:convertDate">
     <xsl:param name="string1"/>
     <xsl:variable name="timeFormatted" select="concat(
         substring($string1, 1, 4),
         '-',
         substring($string1, 5, 2),
         '-',
         substring($string1, 7, 2),
         'T',
         substring($string1, 9, 2),
         ':',
         substring($string1, 11, 2),
         ':',
         substring($string1, 13, 2)
         )" />
     
     <xsl:value-of select="$timeFormatted"/>
 </xsl:function>
    <xsl:function name="fn:toNumber">
        <xsl:param name="string1"/>
        <xsl:variable name="timeFormatted" select="number(substring($string1, 1, 14))" />
        <xsl:value-of select="$timeFormatted"/>
    </xsl:function>     
    
 <xsl:template match="/">
    <xsl:apply-templates/>
 </xsl:template> 
    
 <xsl:template match="programme">
     <!-- <xsl:value-of select="xs:dateTime(fn:convertDate($pTime))"/>  -->
     <xsl:choose>
         <xsl:when test="./@channel = $pChannel and fn:toNumber($pTimeI) &gt;= fn:toNumber(./@start) and fn:toNumber($pTimeI) &lt;= fn:toNumber(./@stop)">
             <xsl:value-of select="./title"/>
         </xsl:when>
         <xsl:otherwise>
             <out></out>
        </xsl:otherwise>
     </xsl:choose>
     
</xsl:template>

<xsl:template match="channel">
</xsl:template>
    
</xsl:stylesheet>

<!-- a.) Write an XSLT style sheet that uses two parameters $time and $channel to return
the data for the programme which is running on that channel at the time given.  -->
