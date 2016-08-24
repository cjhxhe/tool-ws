<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<Organization>
			<xsl:if test="//OrganizationForm/ActionType= 'insert'">
				<ActionType>insert</ActionType>
			</xsl:if>
			<xsl:if test="//OrganizationForm/ActionType= 'update'">
				<ActionType>update</ActionType>
			</xsl:if>
			<xsl:if test="//OrganizationForm/ActionType= 'null'">
				<ActionType>update</ActionType>
			</xsl:if>
			<message xmlns="http://boss.webex.com/boss/schemas/2002/12/services">
				<header>
					<transactionid>10003</transactionid>
				</header>
				<body>
					<bodyContent xsi:type="java:com.webex.hes.blis2boss.services.binding.customer.UpsertCustomer" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
						<xsl:apply-templates/>
					</bodyContent>
				</body>
			</message>
		</Organization>
	</xsl:template>
	<xsl:template match="Organization">
		<xsl:apply-templates select="OrganizationForm"/>
	</xsl:template>
	<xsl:template match="OrganizationForm">
		<customer>
			<xsl:choose>
				<xsl:when test="ActionType='insert'">
					<customerid>0</customerid>
					<customername>
						<xsl:value-of select="OrgName"/>
					</customername>
					<blis_refkey>
						<xsl:value-of select="//Customer/CustomerID"/>
					</blis_refkey>
					<customerstatus>1</customerstatus>
					<accounttype>Customer</accounttype>
					<effectivedate>2003-02-05</effectivedate>
					<customerURL>
						<xsl:value-of select="URL"/>
					</customerURL>
					<parentid>
						<xsl:value-of select="ParentID"/>
					</parentid>
					<revenuecategory>1</revenuecategory>
					<MANDA>0</MANDA>
					<APINDA>0</APINDA>
					<GENNDA>0</GENNDA>
					<cancellationdate>
						<canceldate/>
						<canceleffectivedate/>
					</cancellationdate>
					<customergroup>0</customergroup>
					<level1support>0</level1support>
					<billingby>0</billingby>
					<auditBase>
						<createdate/>
						<lastmodifieddate/>
						<createuser>
							<xsl:value-of select="CreatedBy"/>
						</createuser>
						<lastmodifieduser>
							<xsl:value-of select="LastModifiedBy"/>
						</lastmodifieduser>
					</auditBase>
				</xsl:when>
				<xsl:when test="ActionType='update' or ActionType='null'">
						<customerid>1</customerid>
						<customername>
							<xsl:value-of select="OrgName"/>
						</customername>
						<blis_refkey>
							<xsl:value-of select="//Customer/CustomerID"/>
						</blis_refkey>
						<customerstatus>1</customerstatus>
						<accounttype>Customer</accounttype>
						<effectivedate>2003-02-05</effectivedate>
						<customerURL>
							<xsl:value-of select="URL"/>
						</customerURL>
						<parentid>
							<xsl:value-of select="ParentID"/>
						</parentid>
						<revenuecategory>1</revenuecategory>
						<MANDA>0</MANDA>
						<APINDA>0</APINDA>
						<GENNDA>1</GENNDA>
						<cancellationdate>
							<canceldate/>
							<canceleffectivedate/>
						</cancellationdate>
						<customergroup>0</customergroup>
						<level1support>1</level1support>
						<billingby>0</billingby>
						<auditBase>
							<createdate><xsl:value-of select="//OrganizationForm/CREATIONDATE"/></createdate>
							<lastmodifieddate><xsl:value-of select="//OrganizationForm/LastModifiedDate"/></lastmodifieddate>
							<createuser>
								<xsl:value-of select="CreatedBy"/>
							</createuser>
							<lastmodifieduser>
								<xsl:value-of select="LastModifiedBy"/>
							</lastmodifieduser>
						</auditBase>
				</xsl:when>
			</xsl:choose>
			<xsl:apply-templates select="AddressTypes"/>
			<xsl:apply-templates select="Addresses"/>
			<xsl:apply-templates select="Individuals"/>
			<xsl:apply-templates select="Contacts"/>
		</customer>
	</xsl:template>
	<xsl:template match="AddressTypes">
		<xsl:for-each select="BLIS_ADDRESSREFERENCE">
			<xsl:choose>
				<xsl:when test="ActionType='insert'">
					<xsl:variable name="addressid" select="ADDRESSID"/>
					<address>
						<addressid>0</addressid>
						<customerid>
							<xsl:value-of select="//Customer/CustomerID"/>
						</customerid>
						<blis_refkey>
							<xsl:value-of select="ADDRESSREFERENCEID"/>
						</blis_refkey>
						<addressstatus>1</addressstatus>
						<addressBase>
							<address1>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/ADDRESS1"/>
							</address1>
							<address2>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/ADDRESS2"/>
							</address2>
							<city>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/CITY"/>
							</city>
							<state>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/STATE"/>
							</state>
							<province>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/PROVINCE"/>
							</province>
							<county>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/COUNTY"/>
							</county>
							<zipCode>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/POSTALCODE"/>
							</zipCode>
							<country>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/COUNTRY"/>
							</country>
						</addressBase>
						<xsl:if test="//OrganizationForm//MainAddressID=$addressid">
							<primaryCode>Y</primaryCode>
						</xsl:if>
						<xsl:if test="//OrganizationForm//MainAddressID!=$addressid">
							<primaryCode>N</primaryCode>
						</xsl:if>
						<addressCode><xsl:value-of select="ADDRESSTYPE"/></addressCode>
						<auditBase>
							<createdate>
								<xsl:value-of select="CREATIONDATE"/>
							</createdate>
							<lastmodifieddate>
								<xsl:value-of select="LASTMODIFIEDDATE"/>
							</lastmodifieddate>
							<createuser>
								<xsl:value-of select="CREATEDBY"/>
							</createuser>
							<lastmodifieduser>
								<xsl:value-of select="LASTMODIFIEDBY"/>
							</lastmodifieduser>
						</auditBase>
					</address>
				</xsl:when>
				<xsl:when test="ActionType='update'">
					<xsl:variable name="addressid" select="ADDRESSID"/>
					<address>
						<addressid>1</addressid>
						<customerid>
							<xsl:value-of select="//Customer/CustomerID"/>
						</customerid>
						<blis_refkey>
							<xsl:value-of select="ADDRESSREFERENCEID"/>
						</blis_refkey>
						<addressstatus>1</addressstatus>
						<addressBase>
							<address1>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/ADDRESS1"/>
							</address1>
							<address2>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/ADDRESS2"/>
							</address2>
							<city>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/CITY"/>
							</city>
							<state>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/STATE"/>
							</state>
							<province>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/PROVINCE"/>
							</province>
							<county>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/COUNTY"/>
							</county>
							<zipCode>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/POSTALCODE"/>
							</zipCode>
							<country>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/COUNTRY"/>
							</country>
						</addressBase>
						<xsl:if test="//OrganizationForm//MainAddressID=$addressid">
							<primaryCode>Y</primaryCode>
						</xsl:if>
						<xsl:if test="//OrganizationForm//MainAddressID!=$addressid">
							<primaryCode>N</primaryCode>
						</xsl:if>
						<addressCode><xsl:value-of select="ADDRESSTYPE"/></addressCode>
						<auditBase>
							<createdate>
								<xsl:value-of select="CREATIONDATE"/>
							</createdate>
							<lastmodifieddate>
								<xsl:value-of select="LASTMODIFIEDDATE"/>
							</lastmodifieddate>
							<createuser>
								<xsl:value-of select="CREATEDBY"/>
							</createuser>
							<lastmodifieduser>
								<xsl:value-of select="LASTMODIFIEDBY"/>
							</lastmodifieduser>
						</auditBase>
					</address>
				</xsl:when>
				<xsl:when test="ActionType='delete'">
					<xsl:variable name="addressid" select="ADDRESSID"/>
					<address>
						<addressid>1</addressid>
						<customerid>
							<xsl:value-of select="//Customer/CustomerID"/>
						</customerid>
						<blis_refkey>
							<xsl:value-of select="ADDRESSREFERENCEID"/>
						</blis_refkey>
						<addressstatus>0</addressstatus>
						<addressBase>
							<address1>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/ADDRESS1"/>
							</address1>
							<address2>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/ADDRESS2"/>
							</address2>
							<city>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/CITY"/>
							</city>
							<state>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/STATE"/>
							</state>
							<province>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/PROVINCE"/>
							</province>
							<county>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/COUNTY"/>
							</county>
							<zipCode>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/POSTALCODE"/>
							</zipCode>
							<country>
								<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid]/COUNTRY"/>
							</country>
						</addressBase>
						<xsl:if test="//OrganizationForm//MainAddressID=$addressid">
							<primaryCode>Y</primaryCode>
						</xsl:if>
						<xsl:if test="//OrganizationForm//MainAddressID!=$addressid">
							<primaryCode>N</primaryCode>
						</xsl:if>
						<addressCode><xsl:value-of select="ADDRESSTYPE"/></addressCode>
						<auditBase>
							<createdate>
								<xsl:value-of select="CREATIONDATE"/>
							</createdate>
							<lastmodifieddate>
								<xsl:value-of select="LASTMODIFIEDDATE"/>
							</lastmodifieddate>
							<createuser>
								<xsl:value-of select="CREATEDBY"/>
							</createuser>
							<lastmodifieduser>
								<xsl:value-of select="LASTMODIFIEDBY"/>
							</lastmodifieduser>
						</auditBase>
					</address>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="Addresses">
		<xsl:for-each select="BLIS_ADDRESS">
			<xsl:choose>
				<xsl:when test="ActionType='update'">
					<xsl:variable name="addressid2" select="ADDRESSID"/>
					<xsl:for-each select="//BLIS_ADDRESSREFERENCE[ADDRESSID=$addressid2 and ActionType='null']">
						<xsl:variable name="addressrefid" select="ADDRESSREFERENCEID"/>
						<address>
							<addressid>1</addressid>
							<customerid>
								<xsl:value-of select="//Customer/CustomerID"/>
							</customerid>
							<blis_refkey>
								<xsl:value-of select="$addressrefid"/>
							</blis_refkey>
							<xsl:if test="STATUS = 'Active'">
								<addressstatus>1</addressstatus>
							</xsl:if>
							<xsl:if test="STATUS = 'Inactive'">
								<addressstatus>0</addressstatus>
							</xsl:if>
							<addressBase>
								<address1>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid2]/ADDRESS1"/>
								</address1>
								<address2>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid2]/ADDRESS2"/>
								</address2>
								<city>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid2]/CITY"/>
								</city>
								<state>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid2]/STATE"/>
								</state>
								<province>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid2]/PROVINCE"/>
								</province>
								<county>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid2]/COUNTY"/>
								</county>
								<zipCode>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid2]/POSTALCODE"/>
								</zipCode>
								<country>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$addressid2]/COUNTRY"/>
								</country>
							</addressBase>
							<xsl:if test="//OrganizationForm//MainAddressID=$addressid2">
								<primaryCode>Y</primaryCode>
							</xsl:if>
							<xsl:if test="//OrganizationForm//MainAddressID!=$addressid2">
								<primaryCode>N</primaryCode>
							</xsl:if>
							<addressCode><xsl:value-of select="ADDRESSTYPE"/></addressCode>
							<auditBase>
								<createdate>
									<xsl:value-of select="CREATIONDATE"/>
								</createdate>
								<lastmodifieddate>
									<xsl:value-of select="LASTMODIFIEDDATE"/>
								</lastmodifieddate>
								<createuser>
									<xsl:value-of select="CREATEDBY"/>
								</createuser>
								<lastmodifieduser>
									<xsl:value-of select="LASTMODIFIEDBY"/>
								</lastmodifieduser>
							</auditBase>
						</address>
					</xsl:for-each>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="Contacts">
		<xsl:for-each select="BLIS_CONTACT">
			<xsl:choose>
				<xsl:when test="ActionType='insert'">
					<xsl:variable name="individualid" select="INDIVIDUALID"/>
					<xsl:variable name="indivaddressid" select="//OrganizationForm//MainAddressID"/>
					<contact>
						<contactid>0</contactid>
						<customerid>0</customerid>
						<bosscontacttype>
							<xsl:value-of select="CONTACTTYPEID"/>
						</bosscontacttype>
						<contactstatus>1</contactstatus>
						<blis_refkey>
							<xsl:value-of select="CONTACTID"/>
						</blis_refkey>
						<userInfo>
							<firstName>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/FIRSTNAME"/>
							</firstName>
							<lastName>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/LASTNAME"/>
							</lastName>
							<title>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/JOBTITLE"/>
							</title>
							<department>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/DEPARTMENT"/>
							</department>
							<email>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/EMAIL"/>
							</email>
							<address>
								<address1>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/ADDRESS1"/>
								</address1>
								<address2>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/ADDRESS2"/>
								</address2>
								<city>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/CITY"/>
								</city>
								<state>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/STATE"/>
								</state>
								<province>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/PROVINCE"/>
								</province>
								<county>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/COUNTY"/>
								</county>
								<zipCode>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/POSTALCODE"/>
								</zipCode>
								<country>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/COUNTRY"/>
								</country>
							</address>
							<phone>
								<phone>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/WORKPHONENUMBER"/>
								</phone>
								<cell>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/CELLPHONENUMBER"/>
								</cell>
								<fax>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/FAXNUMBER"/>
								</fax>
							</phone>
						</userInfo>
						<auditBase>
							<createdate>
								<xsl:value-of select="CREATIONDATE"/>
							</createdate>
							<lastmodifieddate>
							</lastmodifieddate>
							<createuser>
								<xsl:value-of select="CREATEDBY"/>
							</createuser>
							<lastmodifieduser>
								<xsl:value-of select="LASTMODIFIEDBY"/>
							</lastmodifieduser>
						</auditBase>
						<emailpermission><xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/ALLOWEMAIL"/></emailpermission>
						<promotion>1</promotion>
					</contact>
				</xsl:when>
				<xsl:when test="ActionType='update'">
					<xsl:variable name="individualid" select="INDIVIDUALID"/>
					<xsl:variable name="indivaddressid" select="//OrganizationForm//MainAddressID"/>
					<contact>
						<contactid>1</contactid>
						<customerid>1</customerid>
						<bosscontacttype>
							<xsl:value-of select="CONTACTTYPEID"/>
						</bosscontacttype>
						<contactstatus>1</contactstatus>
						<blis_refkey>
							<xsl:value-of select="CONTACTID"/>
						</blis_refkey>
						<userInfo>
							<firstName>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/FIRSTNAME"/>
							</firstName>
							<lastName>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/LASTNAME"/>
							</lastName>
							<title>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/JOBTITLE"/>
							</title>
							<department>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/DEPARTMENT"/>
							</department>
							<email>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/EMAIL"/>
							</email>
							<address>
								<address1>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/ADDRESS1"/>
								</address1>
								<address2>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/ADDRESS2"/>
								</address2>
								<city>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/CITY"/>
								</city>
								<state>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/STATE"/>
								</state>
								<province>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/PROVINCE"/>
								</province>
								<county>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/COUNTY"/>
								</county>
								<zipCode>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/POSTALCODE"/>
								</zipCode>
								<country>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/COUNTRY"/>
								</country>
							</address>
							<phone>
								<phone>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/WORKPHONENUMBER"/>
								</phone>
								<cell>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/CELLPHONENUMBER"/>
								</cell>
								<fax>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/FAXNUMBER"/>
								</fax>
							</phone>
						</userInfo>
						<auditBase>
							<createdate>
								<xsl:value-of select="CREATIONDATE"/>
							</createdate>
							<lastmodifieddate>
								<xsl:value-of select="LASTMODIFIEDDATE"/>
							</lastmodifieddate>
							<createuser>
								<xsl:value-of select="CREATEDBY"/>
							</createuser>
							<lastmodifieduser>
								<xsl:value-of select="LASTMODIFIEDBY"/>
							</lastmodifieduser>
						</auditBase>
						<emailpermission><xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/ALLOWEMAIL"/></emailpermission>
						<promotion>1</promotion>
					</contact>
				</xsl:when>
				<xsl:when test="ActionType='delete'">
					<xsl:variable name="individualid" select="INDIVIDUALID"/>
					<xsl:variable name="indivaddressid" select="//OrganizationForm//MainAddressID"/>
					<contact>
						<contactid>1</contactid>
						<customerid>1</customerid>
						<bosscontacttype>
							<xsl:value-of select="CONTACTTYPEID"/>
						</bosscontacttype>
						<contactstatus>0</contactstatus>
						<blis_refkey>
							<xsl:value-of select="CONTACTID"/>
						</blis_refkey>
						<userInfo>
							<firstName>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/FIRSTNAME"/>
							</firstName>
							<lastName>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/LASTNAME"/>
							</lastName>
							<title>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/JOBTITLE"/>
							</title>
							<department>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/DEPARTMENT"/>
							</department>
							<email>
								<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/EMAIL"/>
							</email>
							<address>
								<address1>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/ADDRESS1"/>
								</address1>
								<address2>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/ADDRESS2"/>
								</address2>
								<city>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/CITY"/>
								</city>
								<state>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/STATE"/>
								</state>
								<province>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/PROVINCE"/>
								</province>
								<county>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/COUNTY"/>
								</county>
								<zipCode>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/POSTALCODE"/>
								</zipCode>
								<country>
									<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid]/COUNTRY"/>
								</country>
							</address>
							<phone>
								<phone>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/WORKPHONENUMBER"/>
								</phone>
								<cell>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/CELLPHONENUMBER"/>
								</cell>
								<fax>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/FAXNUMBER"/>
								</fax>
							</phone>
						</userInfo>
						<auditBase>
							<createdate>
								<xsl:value-of select="CREATIONDATE"/>
							</createdate>
							<lastmodifieddate>
								<xsl:value-of select="LASTMODIFIEDDATE"/>
							</lastmodifieddate>
							<createuser>
								<xsl:value-of select="CREATEDBY"/>
							</createuser>
							<lastmodifieduser>
								<xsl:value-of select="LASTMODIFIEDBY"/>
							</lastmodifieduser>
						</auditBase>
						<emailpermission><xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid]/ALLOWEMAIL"/></emailpermission>
						<promotion>1</promotion>
					</contact>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="Individuals">
		<xsl:for-each select="BLIS_INDIVIDUAL">
			<xsl:choose>
				<xsl:when test="ActionType='update'">
					<xsl:variable name="individualid2" select="INDIVIDUALID"/>
					<xsl:variable name="indivaddressid2" select="//OrganizationForm//MainAddressID"/>
					<xsl:for-each select="//BLIS_CONTACT[INDIVIDUALID=$individualid2 and ActionType='null']">
						<contact>
							<contactid>1</contactid>
							<customerid>1</customerid>
							<bosscontacttype>
								<xsl:value-of select="CONTACTTYPEID"/>
							</bosscontacttype>
							<blis_refkey>
								<xsl:value-of select="CONTACTID"/>
							</blis_refkey>
							<xsl:if test="STATUS = 'Active'">
								<contactstatus>1</contactstatus>
							</xsl:if>
							<xsl:if test="STATUS = 'Inactive'">
								<contactstatus>0</contactstatus>
							</xsl:if>
							<userInfo>
								<firstName>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid2]/FIRSTNAME"/>
								</firstName>
								<lastName>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid2]/LASTNAME"/>
								</lastName>
								<title>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid2]/JOBTITLE"/>
								</title>
								<department>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid2]/DEPARTMENT"/>
								</department>
								<email>
									<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid2]/EMAIL"/>
								</email>
								<address>
									<address1>
										<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid2]/ADDRESS1"/>
									</address1>
									<address2>
										<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid2]/ADDRESS2"/>
									</address2>
									<city>
										<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid2]/CITY"/>
									</city>
									<state>
										<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid2]/STATE"/>
									</state>
									<province>
										<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid2]/PROVINCE"/>
									</province>
									<county>
										<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid2]/COUNTY"/>
									</county>
									<zipCode>
										<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid2]/POSTALCODE"/>
									</zipCode>
									<country>
										<xsl:value-of select="//BLIS_ADDRESS[ADDRESSID=$indivaddressid2]/COUNTRY"/>
									</country>
								</address>
								<phone>
									<phone>
										<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid2]/WORKPHONENUMBER"/>
									</phone>
									<cell>
										<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid2]/CELLPHONENUMBER"/>
									</cell>
									<fax>
										<xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid2]/FAXNUMBER"/>
									</fax>
								</phone>
							</userInfo>
							<auditBase>
								<createdate>
									<xsl:value-of select="CREATIONDATE"/>
								</createdate>
								<lastmodifieddate>
									<xsl:value-of select="LASTMODIFIEDDATE"/>
								</lastmodifieddate>
								<createuser>
									<xsl:value-of select="CREATEDBY"/>
								</createuser>
								<lastmodifieduser>
									<xsl:value-of select="LASTMODIFIEDBY"/>
								</lastmodifieduser>
							</auditBase>
							<emailpermission><xsl:value-of select="//BLIS_INDIVIDUAL[INDIVIDUALID=$individualid2]/ALLOWEMAIL"/></emailpermission>
							<promotion>1</promotion>
						</contact>
					</xsl:for-each>
				</xsl:when>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>

