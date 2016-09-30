<SOAP:Envelope xmlns:SOAP="http://schemas.xmlsoap.org/soap/envelope/">
  <SOAP:Body>
    <OrderDataBuilder xmlns="http://www.webex.com/blis/1.0/SOA/main">
		<getNewSubscriptionCode>
			<PageSubscriptionCode>
			</PageSubscriptionCode>
			<orderId>${orderId}</orderId>
			<serviceType>${serviceType}</serviceType>
		</getNewSubscriptionCode>
	</OrderDataBuilder>
  </SOAP:Body>
</SOAP:Envelope>