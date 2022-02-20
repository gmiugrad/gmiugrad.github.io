<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
   <xsl:template match ="essays">
       <html>
           <style>
               ul {
               list-style-type: none;
               margin: 0;
               padding: 0;
               overflow: hidden;
               border: 1px solid #e7e7e7;
               background-color: #f3f3f3;
               font-family: Georgia, serif;
               }
               
               li {
               float: left;
               }
               
               li a {
               display: block;
               color: #666;
               text-align: center;
               padding: 14px 16px;
               text-decoration: none;
               }
               
               li a:hover:not(.active) {
               background-color: #E98074;
               }
               
               li a.active {
               color: white;
               background-color: Grey;
               }
               body {
               font-family: Verdana, sans-serif;
               font-size: 16px;
               background-color: #EAE7DC;
               }
               h1 {
               color: #E85A4F;
               font-family: Georgia, serif;
               font-size: 46px;
               }
               h2{
               font-family: Georgia, serif;
               }
               table {
               border-collapse: collapse;
               width: 80%;
               }
               td, th {
               border: 1px solid;
               text-align: left;
               padding: 10px;
               }
               tr:nth-child(even) {
               background-color: #D8C3A5;
               }
           </style>
           <head>
               <title>Transgender Experiences in the American Prison Writing Archive</title>
               <link rel="stylesheet" type="test/css" href="https://gmiugrad.github.io/css/project.css"/> 
           </head>
           <body>
               <center>
                   <h1>Transgender Experiences in the American Prison Writing Archive</h1>
                   <div>
                       <ul>
                           <li><a href="https://gmiugrad.github.io/finalproject/home">Home</a></li>
                           <li><a href="https://gmiugrad.github.io/finalproject/about">About</a></li>
                           <li><a href="https://gmiugrad.github.io/finalproject/resources">Further Resources</a></li>
                       </ul>
                   </div>
                   
                   <h2>Essays in the Archive</h2>
                   <p>Click the table headings to sort them.</p>
                   <script src="https://www.kryogenix.org/code/browser/sorttable/sorttable.js"></script>       
                   <table class="sortable">
                       <th style="text-align:center">Title</th>
                       <th style="text-align:center">Author</th>
                       <th style="text-align:center">Author Ethnicity</th>
                       <th style="text-align:center">Essay Length</th>
                       <th style="text-align:center">Date</th>
                       <th style="text-align:center">Prison Name &amp; Location</th>
                       <th style="text-align:center">Prison Type</th>
                       <th style="text-align:center">Prison Security Level</th>
                       <xsl:apply-templates/>
                   </table>
               </center>
           </body>
       </html>
   </xsl:template>
   
    <xsl:template match="essay">
        <tr style="text-align:center"><xsl:apply-templates/></tr>
    </xsl:template>
   
    <xsl:template match="title">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="author">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="author-ethnicity">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="length">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="date">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="prison-name">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="facility-type">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
    
    <xsl:template match="security">
        <td style="text-align:center"><xsl:apply-templates/></td>
    </xsl:template>
</xsl:stylesheet>