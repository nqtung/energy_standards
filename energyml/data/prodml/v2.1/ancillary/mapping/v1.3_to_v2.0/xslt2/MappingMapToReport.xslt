<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2017sp2

YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.

Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tbf="http://www.altova.com/MapForce/UDF/tbf" xmlns:ns0="http://www.prodml.org/schemas/1series" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" exclude-result-prefixes="tbf ns0 xs fn">
	<xsl:template name="tbf:tbf1_CustomData">
		<xsl:param name="input" select="()"/>
		<xsl:for-each select="$input/node()">
			<xsl:choose>
				<xsl:when test="fn:boolean(self::*)">
					<xsl:if test="fn:boolean(self::*)">
						<xsl:element name="{fn:string(fn:node-name(.))}" namespace="{fn:namespace-uri-from-QName(fn:node-name(.))}">
							<xsl:sequence select="(./@node(), ./node())"/>
						</xsl:element>
					</xsl:if>
				</xsl:when>
				<xsl:otherwise>
					<xsl:if test="fn:not(fn:boolean(self::text()))">
						<xsl:sequence select="."/>
					</xsl:if>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:output method="xml" encoding="UTF-8" byte-order-mark="no" indent="yes"/>
	<xsl:template match="/">
		<xsl:variable name="var2_report" as="node()?" select="ns0:report"/>
		<Report xmlns="http://www.energistics.org/energyml/data/prodmlv2" xmlns:eml="http://www.energistics.org/energyml/data/commonv2" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gsr="http://www.isotc211.org/2005/gsr" xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:xlink="http://www.w3.org/1999/xlink">
			<xsl:attribute name="xsi:schemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance" select="'http://www.energistics.org/energyml/data/prodmlv2 file:///C:/Energistics2/energyml/data/prodml/v2.0/xsd_schemas/Report.xsd'"/>
			<xsl:for-each select="$var2_report">
				<xsl:attribute name="schemaVersion" namespace="" select="'2.0'"/>
				<xsl:attribute name="uuid" namespace="" select="'00000000-0000-0000-0000-000000000000'"/>
			</xsl:for-each>
			<xsl:for-each select="$var2_report">
				<eml:Citation>
					<xsl:for-each select="ns0:title">
						<eml:Title>
							<xsl:sequence select="fn:string(.)"/>
						</eml:Title>
					</xsl:for-each>
					<eml:Originator>131_input</eml:Originator>
					<eml:Creation>
						<xsl:sequence select="xs:string(fn:current-dateTime())"/>
					</eml:Creation>
					<eml:Format>Mapforce</eml:Format>
				</eml:Citation>
				<xsl:for-each select="ns0:customData">
					<eml:CustomData>
						<xsl:call-template name="tbf:tbf1_CustomData">
							<xsl:with-param name="input" select="." as="node()"/>
						</xsl:call-template>
					</eml:CustomData>
				</xsl:for-each>
				<xsl:for-each select="ns0:kind">
					<Kind>
						<xsl:sequence select="fn:string(.)"/>
					</Kind>
				</xsl:for-each>
				<xsl:for-each select="ns0:date">
					<Date>
						<xsl:sequence select="xs:string(xs:date(fn:string(.)))"/>
					</Date>
				</xsl:for-each>
				<xsl:for-each select="ns0:dateEnd">
					<DateEnd>
						<xsl:sequence select="xs:string(xs:date(fn:string(.)))"/>
					</DateEnd>
				</xsl:for-each>
				<xsl:for-each select="ns0:month">
					<Month>
						<xsl:sequence select="fn:string(.)"/>
					</Month>
				</xsl:for-each>
				<xsl:for-each select="ns0:year">
					<Year>
						<xsl:sequence select="xs:string(xs:integer(fn:string(.)))"/>
					</Year>
				</xsl:for-each>
				<xsl:for-each select="ns0:comment">
					<Comment>
						<xsl:sequence select="fn:string(.)"/>
					</Comment>
				</xsl:for-each>
				<xsl:for-each select="ns0:reportVersion">
					<ReportVersion>
						<xsl:sequence select="fn:string(.)"/>
					</ReportVersion>
				</xsl:for-each>
				<ReportStatus>preliminary</ReportStatus>
				<xsl:for-each select="ns0:installation">
					<Installation>
						<xsl:for-each select="@kind">
							<xsl:attribute name="kind" namespace="" select="fn:string(.)"/>
						</xsl:for-each>
						<xsl:for-each select="@siteKind">
							<xsl:attribute name="siteKind" namespace="" select="fn:string(.)"/>
						</xsl:for-each>
						<xsl:for-each select="@namingSystem">
							<xsl:attribute name="namingSystem" namespace="" select="fn:string(.)"/>
						</xsl:for-each>
						<xsl:for-each select="@uidRef">
							<xsl:attribute name="uidRef" namespace="" select="fn:string(.)"/>
						</xsl:for-each>
						<xsl:sequence select="fn:string(.)"/>
					</Installation>
				</xsl:for-each>
				<xsl:for-each select="ns0:contextFacility">
					<ContextFacility>
						<xsl:for-each select="@kind">
							<xsl:attribute name="kind" namespace="" select="fn:string(.)"/>
						</xsl:for-each>
						<xsl:for-each select="@siteKind">
							<xsl:attribute name="siteKind" namespace="" select="fn:string(.)"/>
						</xsl:for-each>
						<xsl:for-each select="@namingSystem">
							<xsl:attribute name="namingSystem" namespace="" select="fn:string(.)"/>
						</xsl:for-each>
						<xsl:for-each select="@uidRef">
							<xsl:attribute name="uidRef" namespace="" select="fn:string(.)"/>
						</xsl:for-each>
						<xsl:sequence select="fn:string(.)"/>
					</ContextFacility>
				</xsl:for-each>
				<xsl:for-each select="ns0:issueDate">
					<IssueDate>
						<xsl:sequence select="xs:string(xs:date(fn:string(.)))"/>
					</IssueDate>
				</xsl:for-each>
				<xsl:for-each select="ns0:approvalDate">
					<ApprovalDate>
						<xsl:sequence select="xs:string(xs:date(fn:string(.)))"/>
					</ApprovalDate>
				</xsl:for-each>
				<xsl:for-each select="ns0:operator">
					<Operator>
						<Name>
							<xsl:sequence select="fn:string(ns0:name)"/>
						</Name>
						<xsl:for-each select="ns0:role">
							<Role>
								<xsl:sequence select="fn:string(.)"/>
							</Role>
						</xsl:for-each>
						<xsl:for-each select="ns0:alias">
							<Alias>
								<xsl:sequence select="fn:string(.)"/>
							</Alias>
						</xsl:for-each>
						<xsl:for-each select="ns0:address">
							<Address>
								<xsl:for-each select="@uid">
									<xsl:attribute name="uid" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
								<xsl:for-each select="@kind">
									<xsl:attribute name="kind" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
								<xsl:for-each select="ns0:name">
									<Name>
										<xsl:sequence select="fn:string(.)"/>
									</Name>
								</xsl:for-each>
								<xsl:for-each select="ns0:street">
									<Street>
										<xsl:sequence select="fn:string(.)"/>
									</Street>
								</xsl:for-each>
								<City>
									<xsl:sequence select="fn:string(ns0:city)"/>
								</City>
								<xsl:for-each select="ns0:country">
									<Country>
										<xsl:sequence select="fn:string(.)"/>
									</Country>
								</xsl:for-each>
								<xsl:for-each select="ns0:county">
									<County>
										<xsl:sequence select="fn:string(.)"/>
									</County>
								</xsl:for-each>
								<xsl:for-each select="ns0:postalCode">
									<PostalCode>
										<xsl:sequence select="fn:string(.)"/>
									</PostalCode>
								</xsl:for-each>
								<xsl:for-each select="ns0:state">
									<State>
										<xsl:sequence select="fn:string(.)"/>
									</State>
								</xsl:for-each>
								<xsl:for-each select="ns0:province">
									<Province>
										<xsl:sequence select="fn:string(.)"/>
									</Province>
								</xsl:for-each>
							</Address>
						</xsl:for-each>
						<xsl:for-each select="ns0:phoneNumber">
							<PhoneNumber>
								<xsl:attribute name="type" namespace="" select="fn:string(@type)"/>
								<xsl:for-each select="@qualifier">
									<xsl:attribute name="qualifier" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
								<xsl:for-each select="@extension">
									<xsl:attribute name="extension" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
								<xsl:sequence select="fn:string(.)"/>
							</PhoneNumber>
						</xsl:for-each>
						<xsl:for-each select="ns0:email">
							<Email>
								<xsl:for-each select="@qualifier">
									<xsl:attribute name="qualifier" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
							</Email>
						</xsl:for-each>
						<xsl:for-each select="ns0:associatedWith">
							<AssociatedWith>
								<xsl:sequence select="fn:string(.)"/>
							</AssociatedWith>
						</xsl:for-each>
						<xsl:for-each select="ns0:contact">
							<Contact>
								<xsl:sequence select="fn:string(.)"/>
							</Contact>
						</xsl:for-each>
						<xsl:for-each select="ns0:personnelCount">
							<PersonnelCount>
								<xsl:sequence select="xs:string(xs:integer(fn:string(.)))"/>
							</PersonnelCount>
						</xsl:for-each>
						<xsl:for-each select="ns0:personName">
							<PersonName>
								<xsl:for-each select="ns0:prefix">
									<Prefix>
										<xsl:sequence select="fn:string(.)"/>
									</Prefix>
								</xsl:for-each>
								<First>
									<xsl:sequence select="fn:string(ns0:first)"/>
								</First>
								<xsl:for-each select="ns0:middle">
									<Middle>
										<xsl:sequence select="fn:string(.)"/>
									</Middle>
								</xsl:for-each>
								<Last>
									<xsl:sequence select="fn:string(ns0:last)"/>
								</Last>
								<xsl:for-each select="ns0:suffix">
									<Suffix>
										<xsl:sequence select="fn:string(.)"/>
									</Suffix>
								</xsl:for-each>
							</PersonName>
						</xsl:for-each>
					</Operator>
				</xsl:for-each>
				<xsl:for-each select="ns0:issuedBy">
					<IssuedBy>
						<Name>
							<xsl:sequence select="fn:string(ns0:name)"/>
						</Name>
						<xsl:for-each select="ns0:role">
							<Role>
								<xsl:sequence select="fn:string(.)"/>
							</Role>
						</xsl:for-each>
						<xsl:for-each select="ns0:alias">
							<Alias>
								<xsl:sequence select="fn:string(.)"/>
							</Alias>
						</xsl:for-each>
						<xsl:for-each select="ns0:address">
							<Address>
								<xsl:for-each select="@uid">
									<xsl:attribute name="uid" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
								<xsl:for-each select="@kind">
									<xsl:attribute name="kind" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
								<xsl:for-each select="ns0:name">
									<Name>
										<xsl:sequence select="fn:string(.)"/>
									</Name>
								</xsl:for-each>
								<xsl:for-each select="ns0:street">
									<Street>
										<xsl:sequence select="fn:string(.)"/>
									</Street>
								</xsl:for-each>
								<City>
									<xsl:sequence select="fn:string(ns0:city)"/>
								</City>
								<xsl:for-each select="ns0:country">
									<Country>
										<xsl:sequence select="fn:string(.)"/>
									</Country>
								</xsl:for-each>
								<xsl:for-each select="ns0:county">
									<County>
										<xsl:sequence select="fn:string(.)"/>
									</County>
								</xsl:for-each>
								<xsl:for-each select="ns0:postalCode">
									<PostalCode>
										<xsl:sequence select="fn:string(.)"/>
									</PostalCode>
								</xsl:for-each>
								<xsl:for-each select="ns0:state">
									<State>
										<xsl:sequence select="fn:string(.)"/>
									</State>
								</xsl:for-each>
								<xsl:for-each select="ns0:province">
									<Province>
										<xsl:sequence select="fn:string(.)"/>
									</Province>
								</xsl:for-each>
							</Address>
						</xsl:for-each>
						<xsl:for-each select="ns0:phoneNumber">
							<PhoneNumber>
								<xsl:attribute name="type" namespace="" select="fn:string(@type)"/>
								<xsl:for-each select="@qualifier">
									<xsl:attribute name="qualifier" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
								<xsl:for-each select="@extension">
									<xsl:attribute name="extension" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
								<xsl:sequence select="fn:string(.)"/>
							</PhoneNumber>
						</xsl:for-each>
						<xsl:for-each select="ns0:email">
							<Email>
								<xsl:for-each select="@qualifier">
									<xsl:attribute name="qualifier" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
							</Email>
						</xsl:for-each>
						<xsl:for-each select="ns0:associatedWith">
							<AssociatedWith>
								<xsl:sequence select="fn:string(.)"/>
							</AssociatedWith>
						</xsl:for-each>
						<xsl:for-each select="ns0:contact">
							<Contact>
								<xsl:sequence select="fn:string(.)"/>
							</Contact>
						</xsl:for-each>
						<xsl:for-each select="ns0:personnelCount">
							<PersonnelCount>
								<xsl:sequence select="xs:string(xs:integer(fn:string(.)))"/>
							</PersonnelCount>
						</xsl:for-each>
						<xsl:for-each select="ns0:personName">
							<PersonName>
								<xsl:for-each select="ns0:prefix">
									<Prefix>
										<xsl:sequence select="fn:string(.)"/>
									</Prefix>
								</xsl:for-each>
								<First>
									<xsl:sequence select="fn:string(ns0:first)"/>
								</First>
								<xsl:for-each select="ns0:middle">
									<Middle>
										<xsl:sequence select="fn:string(.)"/>
									</Middle>
								</xsl:for-each>
								<Last>
									<xsl:sequence select="fn:string(ns0:last)"/>
								</Last>
								<xsl:for-each select="ns0:suffix">
									<Suffix>
										<xsl:sequence select="fn:string(.)"/>
									</Suffix>
								</xsl:for-each>
							</PersonName>
						</xsl:for-each>
					</IssuedBy>
				</xsl:for-each>
				<xsl:for-each select="ns0:approver">
					<Approver>
						<Name>
							<xsl:sequence select="fn:string(ns0:name)"/>
						</Name>
						<xsl:for-each select="ns0:role">
							<Role>
								<xsl:sequence select="fn:string(.)"/>
							</Role>
						</xsl:for-each>
						<xsl:for-each select="ns0:alias">
							<Alias>
								<xsl:sequence select="fn:string(.)"/>
							</Alias>
						</xsl:for-each>
						<xsl:for-each select="ns0:address">
							<Address>
								<xsl:for-each select="@uid">
									<xsl:attribute name="uid" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
								<xsl:for-each select="@kind">
									<xsl:attribute name="kind" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
								<xsl:for-each select="ns0:name">
									<Name>
										<xsl:sequence select="fn:string(.)"/>
									</Name>
								</xsl:for-each>
								<xsl:for-each select="ns0:street">
									<Street>
										<xsl:sequence select="fn:string(.)"/>
									</Street>
								</xsl:for-each>
								<City>
									<xsl:sequence select="fn:string(ns0:city)"/>
								</City>
								<xsl:for-each select="ns0:country">
									<Country>
										<xsl:sequence select="fn:string(.)"/>
									</Country>
								</xsl:for-each>
								<xsl:for-each select="ns0:county">
									<County>
										<xsl:sequence select="fn:string(.)"/>
									</County>
								</xsl:for-each>
								<xsl:for-each select="ns0:postalCode">
									<PostalCode>
										<xsl:sequence select="fn:string(.)"/>
									</PostalCode>
								</xsl:for-each>
								<xsl:for-each select="ns0:state">
									<State>
										<xsl:sequence select="fn:string(.)"/>
									</State>
								</xsl:for-each>
								<xsl:for-each select="ns0:province">
									<Province>
										<xsl:sequence select="fn:string(.)"/>
									</Province>
								</xsl:for-each>
							</Address>
						</xsl:for-each>
						<xsl:for-each select="ns0:phoneNumber">
							<PhoneNumber>
								<xsl:attribute name="type" namespace="" select="fn:string(@type)"/>
								<xsl:for-each select="@qualifier">
									<xsl:attribute name="qualifier" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
								<xsl:for-each select="@extension">
									<xsl:attribute name="extension" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
								<xsl:sequence select="fn:string(.)"/>
							</PhoneNumber>
						</xsl:for-each>
						<xsl:for-each select="ns0:email">
							<Email>
								<xsl:for-each select="@qualifier">
									<xsl:attribute name="qualifier" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
							</Email>
						</xsl:for-each>
						<xsl:for-each select="ns0:associatedWith">
							<AssociatedWith>
								<xsl:sequence select="fn:string(.)"/>
							</AssociatedWith>
						</xsl:for-each>
						<xsl:for-each select="ns0:contact">
							<Contact>
								<xsl:sequence select="fn:string(.)"/>
							</Contact>
						</xsl:for-each>
						<xsl:for-each select="ns0:personnelCount">
							<PersonnelCount>
								<xsl:sequence select="xs:string(xs:integer(fn:string(.)))"/>
							</PersonnelCount>
						</xsl:for-each>
						<xsl:for-each select="ns0:personName">
							<PersonName>
								<xsl:for-each select="ns0:prefix">
									<Prefix>
										<xsl:sequence select="fn:string(.)"/>
									</Prefix>
								</xsl:for-each>
								<First>
									<xsl:sequence select="fn:string(ns0:first)"/>
								</First>
								<xsl:for-each select="ns0:middle">
									<Middle>
										<xsl:sequence select="fn:string(.)"/>
									</Middle>
								</xsl:for-each>
								<Last>
									<xsl:sequence select="fn:string(ns0:last)"/>
								</Last>
								<xsl:for-each select="ns0:suffix">
									<Suffix>
										<xsl:sequence select="fn:string(.)"/>
									</Suffix>
								</xsl:for-each>
							</PersonName>
						</xsl:for-each>
					</Approver>
				</xsl:for-each>
				<xsl:for-each select="ns0:geographicContext">
					<GeographicContext>
						<xsl:for-each select="ns0:country">
							<Country>
								<xsl:sequence select="fn:string(.)"/>
							</Country>
						</xsl:for-each>
						<xsl:for-each select="ns0:state">
							<State>
								<xsl:sequence select="fn:string(.)"/>
							</State>
						</xsl:for-each>
						<xsl:for-each select="ns0:field">
							<Field>
								<xsl:sequence select="fn:string(.)"/>
							</Field>
						</xsl:for-each>
						<xsl:for-each select="ns0:comment">
							<Comment>
								<xsl:sequence select="fn:string(.)"/>
							</Comment>
						</xsl:for-each>
						<xsl:for-each select="ns0:offshoreLocation">
							<OffshoreLocation>
								<xsl:for-each select="ns0:areaName">
									<AreaName>
										<xsl:sequence select="fn:string(.)"/>
									</AreaName>
								</xsl:for-each>
								<xsl:for-each select="ns0:blockID">
									<BlockID>
										<xsl:sequence select="fn:string(.)"/>
									</BlockID>
								</xsl:for-each>
								<xsl:for-each select="ns0:comment">
									<Comment>
										<xsl:sequence select="fn:string(.)"/>
									</Comment>
								</xsl:for-each>
								<xsl:variable name="var1_northSeaOffshore" as="node()" select="ns0:northSeaOffshore"/>
								<NorthSeaOffshore>
									<xsl:for-each select="$var1_northSeaOffshore/ns0:areaName">
										<AreaName>
											<xsl:sequence select="fn:string(.)"/>
										</AreaName>
									</xsl:for-each>
									<Quadrant>
										<xsl:sequence select="fn:string($var1_northSeaOffshore/ns0:quadrant)"/>
									</Quadrant>
									<xsl:for-each select="$var1_northSeaOffshore/ns0:blockSuffix">
										<BlockSuffix>
											<xsl:sequence select="fn:string(.)"/>
										</BlockSuffix>
									</xsl:for-each>
								</NorthSeaOffshore>
							</OffshoreLocation>
						</xsl:for-each>
					</GeographicContext>
				</xsl:for-each>
			</xsl:for-each>
		</Report>
	</xsl:template>
</xsl:stylesheet>
