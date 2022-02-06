<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
   
   <!-- Removing content we don't want to display -->
    <xsl:template match="head"/>
    <xsl:template match="header"/>
    <xsl:template match="script"/>
    <xsl:template match="div[@class = 'breadcrumbs']"/>
    <xsl:template match="h1"/>
    <xsl:template match="div[@style = 'display:none']"/>
    <xsl:template match="div[@class = 'block']"/>
    <xsl:template match="div[@class = 'interior-rail']"/>
    <xsl:template match="li/p[2]"/>
    
    <!-- Formatting -->
    <xsl:strip-space elements="*"/>
    <xsl:output indent="yes"/>
    
     <xsl:template match="*/text()[normalize-space()]">
        <xsl:value-of select="normalize-space()"/>
    </xsl:template>
    
    <xsl:template match="*/text()[not(normalize-space())]" />
    
    <!-- Begin content templates -->
    <xsl:template match="div[@class='interior-content']/ul">
        <journal-list>
            <xsl:apply-templates select="li">
                <xsl:sort select="p[1]/span/substring-after(text(), '- ')" order="ascending" data-type="text"></xsl:sort>
            </xsl:apply-templates>
        </journal-list>
    </xsl:template>
    
    <xsl:template match="ul/li">
        <journal-record>
            <xsl:apply-templates/>
        </journal-record>
    </xsl:template>
    
    <xsl:template match="li/p[1]/a">
        <journal-title>
            <xsl:apply-templates/>
        </journal-title>
        <URL>
            <xsl:value-of select="@href"/>
        </URL>
    </xsl:template>
    
    <xsl:template match="li/p[1]/span">
        <institution>
            <xsl:value-of select="substring-after(text(), '- ')"/>
        </institution>
    </xsl:template>
   
</xsl:stylesheet>