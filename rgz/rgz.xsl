<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html><head><title>РГЗ</title></head>
<body bgcolor="#ffffff" background="jpg.jpg"><h2>РГЗ</h2>
<h3>Выполнил: Бессонов Алексей Евгеньевич</h3>
<h3>Группа: ИВ-121</h3><h3>Вариант: 4</h3><hr/>
<xsl:apply-templates/></body></html>
</xsl:template>
<xsl:template match="hiblock">
<xsl:apply-templates/>
</xsl:template>
<xsl:template match="page">
<hr/><h2>Станица <xsl:value-of select="@num"/></h2><hr/>
<xsl:if test="@num = 0"><tr><xsl:apply-templates/></tr></xsl:if>
<xsl:if test="@num = 1"><tr><xsl:apply-templates/></tr></xsl:if>
<xsl:if test="@num = 2"><tr><xsl:apply-templates/></tr></xsl:if>
<xsl:if test="@num = 3"><tr><xsl:apply-templates/></tr></xsl:if></xsl:template>

<!--factorial-->

<xsl:template match="sequence"><pp>
<xsl:if test="@variant = 4">
<xsl:value-of select="name"/>
<pp2><table border="1" bgcolor="#FFFFFF"><tr><td>№</td>
<td bgcolor="#336600"><font color="ffffff">1</font></td>
<td bgcolor="#330000"><font color="ffffff">2</font></td>
<td bgcolor="#330066"><font color="ffffff">3</font></td>
<td bgcolor="#660033"><font color="ffffff">4</font></td>
<td bgcolor="#006633"><font color="ffffff">5</font></td>
<td bgcolor="#000033"><font color="ffffff">6</font></td>
<td bgcolor="#663300"><font color="ffffff">7</font></td>
<td bgcolor="#003300"><font color="ffffff">8</font></td>
<td bgcolor="#003366"><font color="ffffff">9</font></td>
</tr><tr><td>Значение</td>
<xsl:for-each select="items/item">
<td><xsl:value-of select="val"/></td>
</xsl:for-each></tr></table></pp2>
</xsl:if></pp></xsl:template>

<!--image-->

<xsl:template match="table">
<table border="1" bgcolor="#FFF666"><tr>
<xsl:for-each select="item">
<xsl:sort select="order" data-type="number" order="descending"/>
<xsl:if test="position() mod 7 = 1">
<tr2><xsl:value-of select="'&lt;br/&gt;'" disable-output-escaping="yes" /> 
</tr2><xsl:text>&#xa;</xsl:text></xsl:if>
<img width="100" height="100" src="{url}" class="CalloutRightPhoto"/>
</xsl:for-each></tr></table></xsl:template>

<!--countries-->

<xsl:template match="countries">
<table border="1" >
<xsl:for-each select="country">
<xsl:sort select="id" data-type="number" />
<tr><td><xsl:value-of select="id"/></td><td>
<xsl:value-of select="uf_name"/></td>
<td><img width="100" height="100" src="{uf_icon}" class="CalloutRightPhoto"/>
</td></tr></xsl:for-each></table></xsl:template>

<!--students-->

<xsl:template match="subject">
<h2 data-subject-id="{@id}"><xsl:value-of select="name/text()"/></h2>
<table border="1" cellspacing="0">
<tbody>
<xsl:variable name="subject-id" select="@id"/>
<xsl:apply-templates select="ancestor::page/students/student[subjects/subject/text() = $subject-id]" />
</tbody>
</table>
</xsl:template>
<xsl:template match="student">
<div style="display:none;">
<tr>
<th>
<xsl:value-of select="lname"/>&#160;<xsl:value-of select="fname"/>&#160;<xsl:value-of select="sname"/>
</th>
<td>
<xsl:variable name="group-id" select="group/text()"/>
<xsl:value-of select="../../groups/group[@id = $group-id]/name/text()"/></td></tr></div>
</xsl:template></xsl:stylesheet>