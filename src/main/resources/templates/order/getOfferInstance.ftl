<SOAP:Envelope xmlns:SOAP="http://schemas.xmlsoap.org/soap/envelope/">
	<SOAP:Body>
		<sendHighdealIntegrationRequest xmlns="http://www.webex.com/blis/1.0/custom">
			<getOfferDetail xmlns="">
				<OfferCode>${offerCode?if_exists}</OfferCode>
				<Owner>${creditor?if_exists}</Owner>
			</getOfferDetail>
			</sendHighdealIntegrationRequest>
	</SOAP:Body>
</SOAP:Envelope>