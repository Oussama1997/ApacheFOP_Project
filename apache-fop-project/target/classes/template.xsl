<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:output encoding="UTF-8" indent="yes" method="xml" standalone="no" omit-xml-declaration="no"/>
    <xsl:template match="users-data">
        <fo:root language="EN">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4-portrail" page-height="297mm" page-width="210mm" margin-top="5mm" margin-bottom="5mm" margin-left="5mm" margin-right="5mm">
                    <fo:region-body margin-top="25mm" margin-bottom="20mm"/>
                    <fo:region-before region-name="xsl-region-before" extent="25mm" display-align="before" precedence="true"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="A4-portrail">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:table table-layout="fixed" width="100%" font-size="10pt" border-color="black" border-width="0.4mm" border-style="solid">
                        <fo:table-column column-width="proportional-column-width(20)"/>
                        <fo:table-column column-width="proportional-column-width(45)"/>
                        <fo:table-column column-width="proportional-column-width(20)"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell text-align="left" display-align="center" padding-left="2mm">
                                    <fo:block>
                                        Report ID:<xsl:value-of select="header-section/data-type/@id"/>
                                        , Date: <xsl:value-of select="header-section/process-date"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell text-align="center" display-align="center">
                                    <fo:block font-size="150%">
                                        <fo:basic-link external-destination="http://www.example.com">XXX COMPANY</fo:basic-link>
                                    </fo:block>
                                    <fo:block space-before="3mm"/>
                                </fo:table-cell>
                                <fo:table-cell text-align="right" display-align="center" padding-right="2mm">
                                    <fo:block>
                                        <xsl:value-of select="data-type"/>
                                    </fo:block>
                                    <fo:block display-align="before" space-before="6mm">Page <fo:page-number/> of <fo:page-number-citation ref-id="end-of-document"/>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body" border-collapse="collapse" reference-orientation="0">
                    <fo:block>MONTHLY USERS REPORT</fo:block>
                    <fo:table table-layout="fixed" width="100%" font-size="12pt" border-color="black" border-width="0.35mm" border-style="solid" text-align="center" display-align="center" space-after="5mm">
                        <fo:table-column column-width="proportional-column-width(30)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-column column-width="proportional-column-width(25)"/>
                        <fo:table-column column-width="proportional-column-width(50)"/>
                        <fo:table-body font-size="95%">
                            <fo:table-row height="8mm">
								<fo:table-cell>
                                    <fo:block>Code</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Full Name</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>National ID</fo:block>
                                </fo:table-cell>
                                <fo:table-cell>
                                    <fo:block>Payment</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <xsl:for-each select="user-bill-data">
                                <fo:table-row>
									<fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="code"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="full-name"/>
                                        </fo:block>
                                    </fo:table-cell>  
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="national-id"/>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:value-of select="price"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:for-each>
                        </fo:table-body>
                    </fo:table>
                    <fo:block id="end-of-document"></fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>