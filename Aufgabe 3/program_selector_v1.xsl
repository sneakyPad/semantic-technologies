<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:output method="html" />
    <xsl:strip-space  elements="*"/>
    
    <xsl:param name="pTime"/><!--select="'20191126011500 +0100'" --> 
    <xsl:param name="pChannel"/> <!--  select="'KabelEinsClassic.de'" --> 
    
    <xsl:template match="/">
        <out>
            <xsl:apply-templates/>
        </out>
    </xsl:template> 
    
    <xsl:template match="programme">
        <!-- <xsl:value-of select="xs:dateTime(fn:convertDate($pTime))"/>  -->
        <xsl:choose>
            <xsl:when test="./@channel = $pChannel and number(substring($pTime, 1, 14)) &gt; number(substring(./@start, 1, 14)) and  number(substring($pTime, 1, 14))  &lt;= number(substring(./@stop, 1, 14))">
                <xsl:value-of select="./title"/>
            </xsl:when>
            <xsl:otherwise>
                
            </xsl:otherwise>
        </xsl:choose>
        
    </xsl:template>
    
    <xsl:template match="channel">
    </xsl:template>
</xsl:stylesheet>
<!-- a.) Write an XSLT style sheet that uses two parameters $time and $channel to return
the data for the programme which is running on that channel at the time given.  -->
