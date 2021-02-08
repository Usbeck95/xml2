<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns="http://www.w3.org/1999/xhtml">

	<xsl:output method="xml"
				indent="yes"
				omit-xml-declaration="no"
	            doctype-system="about:legacy-compat"/>

	<!-- The following rule matches the root element,
		 irrespective of name,
	     and creates an html outline with an apply templates somewhere
	-->
	<xsl:template match="/">
		<html>
			<head>
				<title><xsl:value-of select="/booksCanon/book"/></title>
				<meta charset="utf-8"/>
			</head>
			<body>
				<xsl:apply-templates/>		<!-- here the following
				                                 rules wil place
				                                 content -->
			</body>
		</html>
	</xsl:template>

	<!-- on meeting the chapter/title in the xml doc xslt will
	     create an h1 element in the html. Its content will be
	     the content of the chapter/title element of the xml -->
    
        
	<xsl:template match="booksCanon/book">
		<table border="1"><xsl:apply-templates/></table>
	</xsl:template>

	<xsl:template match="book/title">
    <th style="text-align:left">Title</th>
		<td><xsl:apply-templates/></td>
	</xsl:template>

    <xsl:template match="book/edition">
    <th>Edition</th>
		<td><xsl:apply-templates/></td>
	</xsl:template>

     <xsl:template match="book/authors">
     <th>Authors</th>
		<td><xsl:apply-templates/></td>
	</xsl:template>

    <xsl:template match="book/publisher">
    <th>Publisher</th>
		<td><xsl:apply-templates/></td>
	</xsl:template>

     <xsl:template match="book/pages">
     <th>Pages</th>
		<td><xsl:apply-templates/></td>
	</xsl:template>

    <xsl:template match="book/isbn">
    <th>ISBN</th>
		<td><xsl:apply-templates/></td>
	</xsl:template>

     <xsl:template match="book/price">
     <th>Price</th>
		<td><xsl:apply-templates/></td>
	</xsl:template>
    
    <xsl:template match="book/currency">
    <th>Currency</th>
		<td><xsl:apply-templates/></td>
	</xsl:template>
    
    <xsl:template match="book/comments">
    <th>Comments</th>
		<td><xsl:apply-templates/></td>
	</xsl:template>

</xsl:stylesheet>