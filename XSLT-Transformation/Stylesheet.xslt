<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="@*|*">

		<xsl:variable name="var1" select="'1'" />

		<xsl:if test="$var1 = '1'">
			<xsl:copy>
				<xsl:apply-templates select="*|@*|text()" />
			</xsl:copy>
		</xsl:if>
		
	</xsl:template>
	
	<xsl:template match="/products/product[@id='p1']/country/text()">
		<xsl:text>toto</xsl:text>
	</xsl:template>

</xsl:stylesheet>