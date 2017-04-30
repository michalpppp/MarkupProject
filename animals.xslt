<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>


<xsl:template match="/">
<html>

  <body>
  <h1>Veterinary Clinic</h1>
    <table border="1">
      <tr bgcolor="white">
        <th style="text-align:left">Name</th>
        <th style="text-align:left">Surname</th>
        <th style="text-align:left">Phone Number</th>
        <th style="text-align:right">Owns Animal</th>
        <th style="text-align:right">Breed of Animal</th>
        <th style="text-align:right">Animal Gender</th>
        <th style="text-align:right">Animal Date of Birth</th>
      </tr>
      <xsl:for-each select="ListOfAnimals/Animal">
      <tr>
        
			<td><xsl:value-of select="OwnerInfo/Name"/></td>
			<td><xsl:value-of select="OwnerInfo/Surname"/></td>
			<td><xsl:value-of select="OwnerInfo/Phone"/></td>
			<td><xsl:value-of select="AnimalInfo/AnimalType"/></td>
			<td><xsl:value-of select="AnimalInfo/Breed"/></td>
			<td><xsl:value-of select="AnimalInfo/Gender"/></td>
			<td><xsl:value-of select="AnimalInfo/DateOfBirth"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
