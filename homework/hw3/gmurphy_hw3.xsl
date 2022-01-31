<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:strip-space elements="*"/>
    <xsl:template match="CATALOG">
        <html>
            <style>
                body {
                font-family: Garamond;
                }
                table {
                border-collapse: collapse;
                width: 80%;
                }
                td, th {
                border: 1px solid #708090;
                text-align: left;
                padding: 10px;
                }
                tr:nth-child(even) {
                background-color: #8FBC8F;
                }
            </style>
            <head>
            <title>Grayson's Plant Shop</title>
            <link rel="stylesheet" type="test/css" href="https://gmiugrad.github.io/css/main.css"/>        
            </head>
            <body>
                <center>
                <h1>PLANT CATALOG</h1>
                <p>This is a page about my plants for sale! See the table below for all necessary info on each plant we offer.</p>       
                    <table>
                        <th style="text-align:center">COMMON NAME</th>
                        <th style="text-align:center">SCIENTIFIC NAME</th>
                        <th style="text-align:center">ZONE</th>
                        <th style="text-align:center">LIGHT</th>
                        <th style="text-align:center">PRICE</th>
                        <th style="text-align:center">AVAILABILITY</th>
                        <xsl:apply-templates/>
                     </table>
                </center>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="PLANT">
        <tr style="text-align:center"><xsl:apply-templates/></tr>
    </xsl:template>
    
    <xsl:template match="COMMON">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="BOTANICAL">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="ZONE">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="LIGHT">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="PRICE">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="AVAILABILITY">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
    
</xsl:stylesheet>
