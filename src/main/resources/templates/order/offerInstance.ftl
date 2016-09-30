						<OfferInstance subscriptionCode="${subscriptionCode}" edit="true">   
							<offer code="MC Named Hosts Pro USD" hdoffercode="MC Named Hosts Pro USD" owner="WebEx USD" blisActivationType="new" blischecked="true">
								<chargeCondition subCode="Service Setup Charge USD" parentCode="Service Setup Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="SetupUnitPrice" description="S" isPrivate="false" type="number" value="0"/>
													<parameter name="InstallmentMonths" description="S" isPrivate="false" type="number" value="1"/>
													<parameter name="OfferName" description="S" isPrivate="false" type="string" value="NULL"/>
													<parameter name="Parameters_Root" description="S" isPrivate="false" type="string" value="C8"/>
													<parameter name="CIName" isPrivate="false" type="string" value="Setup"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="C8-1" s0="Parameters_Root" s1="Service Setup Charge USD" s2="Service Setup" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
												<line Number="L01">
													<row i0="C8-1-1" s0="Input_Box" s1="SetupUnitPrice" s2="Setup Price" s3="Number" s4="C8-1" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Extprice" s14="" s15="" s16=""/>
												</line>
												<line Number="L02">
													<row i0="C8-1-2" s0="Selection_Group" s1="InstallmentMonths" s2="Number of Installment Payments" s3="Number" s4="C8-1" s5="N" s6="Y" s7="1" s8="SS" s9="NULL" s10="NULL" s11="TRUE" s12="L02" s13="Quantity" s14="" s15="" s16="Mo">
														<row i0="C8-1-2-1" s0="Selection_Option" s1="1" s2="1" s3="Number" s4="C8-1-2" s5="NULL" s6="NULL" s7="1" s8="O" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
														<row i0="C8-1-2-2" s0="Selection_Option" s1="2" s2="2" s3="Number" s4="C8-1-2" s5="NULL" s6="NULL" s7="1" s8="O" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
														<row i0="C8-1-2-3" s0="Selection_Option" s1="3" s2="3" s3="Number" s4="C8-1-2" s5="NULL" s6="NULL" s7="1" s8="O" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
													</row>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="C8-1" s0="Service Setup Charge USD" s1="Charge" s2="Yes" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L01"/>
										</rows>
									</TranslationTableCtrl>
								</chargeCondition>
								<chargeCondition subCode="Branding Charge USD" parentCode="Branding Charge USD" manualActivable="true" blisActivationType="new" blischecked="true" creditor="WebEx USD" activationCode="Branding Charge USD#Trial-1472196873916-8">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="C99"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="Branding USD"/>
													<parameter name="CIName" isPrivate="false" type="string" value="Branding"/>
													<parameter name="IsBranding" isPrivate="false" type="number" value="1"/>
													<parameter name="Price" isPrivate="false" type="number" value="199" blisstatus="dirty" labelname="Branding Fee" labelvalue="199"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													<parameter name="DummyPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="IsFedRamp" isPrivate="false" type="number" value="0"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="C99-4" s0="Parameters_Root" s1="Branding Charge USD" s2="Branding (Generic Site if Un-selected) USD" s5="Y">
												<line Number="L01">
													<row s0="Input_Box" s1="Price" s2="Branding Fee" s3="Number" s5="N" s6="Y" s7="199" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
												</line>
												<line Number="L02">
													<row s0="Activation_Checkbox" s1="None" s2="Branding fee may be waived if customer orders 25 or more named hosts. This applies to Multi-Service Named Hosts also (sum of Multi-Service Named Hosts must be 25 or more). For Ports, Minutes Branding, consult the GOA Pages." s3="Number" s5="N" s6="N" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="C99-4" s0="Branding Charge USD" s1="Charge" s2="No" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y"/>
										</rows>
									</TranslationTableCtrl>
									<TrailRunResultItem>
										<transac amount="USD 199.000000" creditor="WebEx USD" debtor="ID-OSS-312536" offerCode="MC Named Hosts Pro USD" subscriptionCode="MCxxx-xx175516-001" chargeCode="Branding Charge USD#Trial-1472196873916-8" origin="2" date="2016-08-27T00:00:00" label="Branding" relationshipType="client" operationType="debit" chargeConditionCode="Branding Charge USD" serviceTag="MC Named Hosts" blisCurrency="USD" blisExtended="199.000000" chargeFrequence="1">
											<detail name="parameter.Parameters_Root" type="string" value="C99-4"/>
											<detail name="computed.LIST_PRICE_TYPE" type="string" value="STATIC"/>
											<detail name="computed.QTY" type="decimal" value="1"/>
											<detail name="computed.SKUID" type="string" value="WX12711"/>
											<detail name="default.agreement_creation_date" type="date" value="2016-08-27T00:00:00"/>
											<detail name="default.price_plan_name" type="string" value="Branding"/>
											<detail name="parameter.DummyPrice" type="decimal" value="0"/>
											<detail name="parameter.Price" type="decimal" value="199"/>
											<detail name="computed.LIST_PRICE" type="decimal" value="199.0"/>
											<detail name="tax.vat.ratecode" type="string" value="0"/>
											<detail name="parameter.Service_Tag" type="string" value="MC Named Hosts"/>
											<detail name="computed.UNIT_PRICE" type="decimal" value="199.0"/>
											<detail name="computed.QTY_TYPE" type="string" value="RUNTIME"/>
											<detail name="computed.SKU_DESCRIPTION" type="string" value="Branding"/>
											<detail name="parameter.IsBranding" type="decimal" value="1"/>
											<detail name="computed.SKU_LOCATION" type="string" value="NULL"/>
											<detail name="parameter.IsFedRamp" type="decimal" value="0"/>
											<detail name="parameter.CIName" type="string" value="Branding"/>
											<detail name="parameter.OfferName" type="string" value="Branding USD"/>
											<detail name="computed.CIName" type="string" value="Branding"/>
											<detail name="computed.EXT_PRICE" value="199.0"/>
											<AdditionSKUInfo RATINGCHARGETYPE="One-time" COMPONENTNAME="Branding" RATINGMODELNAME="One-time" SKUTYPE="Setup" COMPONENTID="1435" BASEPRICE="199" CHAREGEFREQUENCY="Once" UOMCODE="Each" SKUID="WX12711" RATINGMODELID="1" COMPONENTTYPEID="5"/>
											<OrderItemBooking>
												<BkgItem>
													<BookTypeID>15</BookTypeID>
													<BookValue>199.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>4</BookTypeID>
													<BookValue>199.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>19</BookTypeID>
													<BookValue>199.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>11</BookTypeID>
													<BookValue>199.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>16</BookTypeID>
													<BookValue>199.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>18</BookTypeID>
													<BookValue>199.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>3</BookTypeID>
													<BookValue>199.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>12</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>17</BookTypeID>
													<BookValue>199.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>2</BookTypeID>
													<BookValue>199.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>13</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>1</BookTypeID>
													<BookValue>199.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>20</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>14</BookTypeID>
													<BookValue>199.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>10</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>5</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
											</OrderItemBooking>
										</transac>
									</TrailRunResultItem>
								</chargeCondition>
								<chargeCondition subCode="Primary Language Charge USD" parentCode="Primary Language Charge USD" manualActivable="false" blisActivationType="new" blischecked="true" creditor="WebEx USD" activationCode="Primary Language Charge USD#Trial-1472196873916-9">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Primary Language" description="x" isPrivate="false" type="string" value="English" blisstatus="dirty" labelname="Primary Language" labelvalue="English"/>
													<parameter name="OfferName" description="x" isPrivate="false" type="string" value="Primary Language USD"/>
													<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C19"/>
													<parameter name="UNIT_PRICE" isPrivate="false" type="number" value="0"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="C19-1" s0="Parameters_Root" s1="Primary Language Charge USD" s2="Primary Language" s5="N">
												<line Number="L01">
													<row s0="Selection_Group" s1="Primary Language" s2="Primary Language" s3="String" s5="N" s6="Y" s7="English" s9="NULL" s10="NULL" s11="TRUE" s13="Normal">
														<row s0="Selection_Option" s1="Chinese Simplified" s2="Chinese Simplified" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="Chinese Traditional" s2="Chinese Traditional" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="Danish" s2="Danish" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="Dutch" s2="Dutch" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="English" s2="English" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="European Spanish" s2="European Spanish" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="French" s2="French" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="German" s2="German" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="Italian" s2="Italian" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="Japanese" s2="Japanese" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="Korean" s2="Korean" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="Spanish" s2="Latin American Spanish" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="Portuguese" s2="Portuguese" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="Russian" s2="Russian" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="Swedish" s2="Swedish" s3="String" s11="FALSE" s7="English"/>
														<row s0="Selection_Option" s1="Turkish" s2="Turkish" s3="String" s11="FALSE" s7="English"/>
													</row>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="C19-1" s0="Primary Language Charge USD" s1="Charge" s2="Yes" s3="Single" s4="No" s5="Immediately" s6="Replace" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L04"/>
										</rows>
									</TranslationTableCtrl>
									<TrailRunResultItem>
										<transac amount="USD 0.000000" creditor="WebEx USD" debtor="ID-OSS-312536" offerCode="MC Named Hosts Pro USD" subscriptionCode="MCxxx-xx175516-001" chargeCode="Primary Language Charge USD#Trial-1472196873916-9" origin="2" date="2016-08-27T00:00:00" label="Primary Language English" relationshipType="client" operationType="debit" chargeConditionCode="Primary Language Charge USD" serviceTag="MC Named Hosts" blisCurrency="USD" blisExtended="0.000000" chargeFrequence="1">
											<detail name="parameter.Parameters_Root" type="string" value="C19-1"/>
											<detail name="parameter.Primary Language" type="string" value="English"/>
											<detail name="computed.LIST_PRICE_TYPE" type="string" value="STATIC"/>
											<detail name="computed.QTY" type="decimal" value="1"/>
											<detail name="computed.SKUID" type="string" value="WX12039e"/>
											<detail name="default.agreement_creation_date" type="date" value="2016-08-27T00:00:00"/>
											<detail name="default.price_plan_name" type="string" value="Primary Language"/>
											<detail name="computed.LIST_PRICE" type="decimal" value="0.0"/>
											<detail name="tax.vat.ratecode" type="string" value="0"/>
											<detail name="parameter.Service_Tag" type="string" value="MC Named Hosts"/>
											<detail name="computed.UNIT_PRICE" type="decimal" value="0.0"/>
											<detail name="parameter.UNIT_PRICE" type="decimal" value="0"/>
											<detail name="computed.QTY_TYPE" type="string" value="STATIC"/>
											<detail name="computed.SKU_DESCRIPTION" type="string" value="Primary Language English"/>
											<detail name="computed.SKU_LOCATION" type="string" value="NULL"/>
											<detail name="parameter.OfferName" type="string" value="Primary Language USD"/>
											<detail name="computed.EXT_PRICE" value="0.0"/>
											<AdditionSKUInfo RATINGCHARGETYPE="One-time" COMPONENTNAME="Primary Language English" RATINGMODELNAME="One-time" SKUTYPE="Multilingual" COMPONENTID="85" BASEPRICE="0" CHAREGEFREQUENCY="Once" UOMCODE="Each" SKUID="WX12039e" RATINGMODELID="1" COMPONENTTYPEID="6"/>
											<OrderItemBooking>
												<BkgItem>
													<BookTypeID>15</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>4</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>19</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>11</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>16</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>18</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>3</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>12</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>17</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>2</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>13</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>1</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>20</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>14</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>10</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>5</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
											</OrderItemBooking>
										</transac>
									</TrailRunResultItem>
								</chargeCondition>
								<offerCondition subCode="Ports1 USD" offerCode="Ports1 USD" blisActivationType="new" optionalOrder="false" blischecked="true">
									<chargeCondition subCode="Ports Charge USD" parentCode="Ports Charge USD" manualActivable="false" blisActivationType="new" blischecked="true" creditor="WebEx USD" activationCode="Ports Charge USD#Trial-1472196873916-3">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="CompPortUnitPrice" description="xy1" isPrivate="false" type="number" value="0"/>
														<parameter name="CompPortQty" description="xy1" isPrivate="false" type="number" value="0"/>
														<parameter name="PortQty" description="xy1" isPrivate="false" type="number" value="0"/>
														<parameter name="PortUnitPrice" description="xy1" isPrivate="false" type="number" value="0"/>
														<parameter name="Free_Month" description="xy1" isPrivate="false" type="number" value="0"/>
														<parameter name="Initial_Term" description="xy1" isPrivate="false" type="number" value="4"/>
														<parameter name="OfferName" description="xy1" isPrivate="false" type="string" value="NULL"/>
														<parameter name="ExtendedPortsPrice" description="xy1" isPrivate="false" type="number" value="0"/>
														<parameter name="ComplimentaryCIName" description="?" isPrivate="false" type="string" value="Null"/>
														<parameter name="PortsCIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Renewal_Term" isPrivate="false" type="number" value="0"/>
														<parameter name="CancelType" isPrivate="false" type="string" value="Null"/>
														<parameter name="OfferCreationDate" isPrivate="false" type="date" value="1992-01-01T00:00:00"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C2"/>
														<parameter name="AdjustmentDays" isPrivate="false" type="number" value="0"/>
														<parameter name="BillingMonths" description="# of remaining months to be billed for Termination" isPrivate="false" type="number" value="0"/>
														<parameter name="BillDay" isPrivate="false" type="number" value="1"/>
														<parameter name="SubsCode" isPrivate="false" type="string" value="null"/>
														<parameter name="FreeMoType" description="0:end, 1:beginning" isPrivate="false" type="number" value="0"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="null"/>
														<parameter name="CollabPortQty" description="" isPrivate="false" type="number" value="0"/>
														<parameter name="CollabUnitPrice" description="" isPrivate="false" type="number" value="0"/>
														<parameter name="CollabExtendedPrice" description="" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S2-C2-1" s0="Ports Charge USD" s1="Charge" s2="Yes" s3="Single" s4="No" s5="Next bill date" s6="No" s7="Immediately - 10 secs" s8="No" s9="NA" s10="Y" s11="L07"/>
											</rows>
										</TranslationTableCtrl>
										<TrailRunResultItem>
											<transac amount="USD 0.000000" creditor="WebEx USD" debtor="ID-OSS-312536" offerCode="MC Named Hosts Pro USD" subscriptionCode="MCxxx-xx175516-001" chargeCode="Ports Charge USD#Trial-1472196873916-3" origin="1" date="2017-09-27T00:00:00" label="Complimentary - Meeting Center Pro Named Hosts 15" relationshipType="client" operationType="debit" chargeConditionCode="Ports Charge USD" chargeFrequence="Recurring Monthly" serviceTag="MC Named Hosts" blisCurrency="USD" blisExtended="0.000000">
												<detail name="counter.Adjust Amount" type="decimal" value="0"/>
												<detail name="default.activation_date" type="date" value="2017-09-27T00:00:00"/>
												<detail name="parameter.Service_Tag" type="string" value="MC Named Hosts"/>
												<detail name="parameter.CompPortUnitPrice" type="decimal" value="0"/>
												<detail name="parameter.Prepay_Term" type="decimal" value="1"/>
												<detail name="computed.RoundExt" type="decimal" value="0"/>
												<detail name="counter_pre.CmttUnitPrice" type="decimal" value="0"/>
												<detail name="parameter.OfferName" type="string" value="MC Named Hosts Pro USD"/>
												<detail name="computed.Ext.Price" type="decimal" value="0"/>
												<detail name="default.recurring_stop_ref" type="date" value="2017-10-27T00:00:00"/>
												<detail name="computed.QTY" type="decimal" value="10"/>
												<detail name="default.agreement_creation_date" type="date" value="2016-08-27T00:00:00"/>
												<detail name="computed.LIST_PRICE" type="decimal" value="225.0"/>
												<detail name="counter.QtyFreeOveragePorts" type="decimal" value="0"/>
												<detail name="parameter.ExtendedPortsPrice" type="decimal" value="0"/>
												<detail name="default.recurring_stop" type="date" value="2017-10-27T00:00:00"/>
												<detail name="parameter.PortQty" type="decimal" value="15"/>
												<detail name="default.recurring_start_ref" type="date" value="2017-09-27T00:00:00"/>
												<detail name="counter.FreeMonthPortQty" type="decimal" value="0"/>
												<detail name="parameter.OfferCreationDate" type="date" value="1992-01-01T00:00:00"/>
												<detail name="parameter.CompPortQty" type="decimal" value="10"/>
												<detail name="counter_pre.FreeMonthMRC" type="decimal" value="0"/>
												<detail name="parameter.AdjustmentDays" type="decimal" value="0"/>
												<detail name="parameter.Parameters_Root" type="string" value="S2-C2-1"/>
												<detail name="parameter.CancelType" type="string" value="Null"/>
												<detail name="parameter.BillDay" type="decimal" value="1"/>
												<detail name="parameter.PortsCIName" type="string" value="Pro Ports"/>
												<detail name="computed.SKUID" type="string" value="WX12140"/>
												<detail name="parameter.SubsCode" type="string" value="MCxxx-xx175516-001"/>
												<detail name="default.price_plan_name" type="string" value="Ports"/>
												<detail name="default.recurring_refund" type="string" value="not refunded"/>
												<detail name="computed.UNIT_PRICE" type="decimal" value="0.0"/>
												<detail name="counter.MRC" type="decimal" value="0"/>
												<detail name="parameter.BillingMonths" type="decimal" value="0"/>
												<detail name="parameter.PortUnitPrice" type="decimal" value="0"/>
												<detail name="parameter.FreeMoType" type="decimal" value="0"/>
												<detail name="computed.Prepay_Flag" type="decimal" value="0"/>
												<detail name="parameter.Initial_Term" type="decimal" value="1"/>
												<detail name="parameter.CollabPortQty" type="decimal" value="0"/>
												<detail name="computed.LIST_PRICE_TYPE" type="string" value="STATIC"/>
												<detail name="counter.Month Counter" type="decimal" value="14"/>
												<detail name="counter_pre.FreeMonthFlag" type="decimal" value="0"/>
												<detail name="counter.FreeMonthMRC" type="decimal" value="0"/>
												<detail name="parameter.CollabUnitPrice" type="decimal" value="0"/>
												<detail name="tax.vat.ratecode" type="string" value="0"/>
												<detail name="counter_pre.Adjust Amount" type="decimal" value="0"/>
												<detail name="counter_pre.Month Counter" type="decimal" value="14"/>
												<detail name="counter.FreeMonthFlag" type="decimal" value="0"/>
												<detail name="counter_pre.FreeMonthPortQty" type="decimal" value="0"/>
												<detail name="parameter.ComplimentaryCIName" type="string" value="Pro Complimentary Ports"/>
												<detail name="default.recurring_prorata" type="string" value="not prorated"/>
												<detail name="computed.QTY_TYPE" type="string" value="STATIC"/>
												<detail name="counter_pre.MRC" type="decimal" value="0"/>
												<detail name="parameter.Renewal_Term" type="decimal" value="0"/>
												<detail name="computed.SKU_DESCRIPTION" type="string" value="Complimentary - Meeting Center Pro Named Hosts 15"/>
												<detail name="parameter.CollabExtendedPrice" type="decimal" value="0"/>
												<detail name="counter_pre.QtyFreeOveragePorts" type="decimal" value="0"/>
												<detail name="computed.SKU_LOCATION" type="string" value="NULL"/>
												<detail name="default.recurring_start" type="date" value="2017-09-27T00:00:00"/>
												<detail name="counter.CmttUnitPrice" type="decimal" value="0"/>
												<detail name="computed.CIName" type="string" value="Pro Complimentary Ports"/>
												<detail name="parameter.Free_Month" type="decimal" value="0"/>
												<detail name="computed.EXT_PRICE" value="0.0"/>
												<AdditionSKUInfo RATINGCHARGETYPE="Recurring" COMPONENTNAME="Complimentary - Meeting Center Pro Named Hosts 15" RATINGMODELNAME="Seats" SKUTYPE="Seats" COMPONENTID="460" BASEPRICE="225" CHAREGEFREQUENCY="Monthly" UOMCODE="NHosts" SKUID="WX12140" RATINGMODELID="13" COMPONENTTYPEID="12"/>
												<OrderItemBooking>
													<BkgItem>
														<BookTypeID>15</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>4</BookTypeID>
														<BookValue>2250.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>19</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>11</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>16</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>18</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>3</BookTypeID>
														<BookValue>2250.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>12</BookTypeID>
														<BookValue>100.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>17</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>2</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>13</BookTypeID>
														<BookValue>100.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>1</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>20</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>14</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>10</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>5</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
												</OrderItemBooking>
											</transac>
											<transac amount="USD 0.000000" creditor="WebEx USD" debtor="ID-OSS-312536" offerCode="MC Named Hosts Pro USD" subscriptionCode="MCxxx-xx175516-001" chargeCode="Ports Charge USD#Trial-1472196873916-3" origin="1" date="2017-09-27T00:00:00" label="Meeting Center Pro Named Hosts 15" relationshipType="client" operationType="debit" chargeConditionCode="Ports Charge USD" chargeFrequence="Recurring Monthly" serviceTag="MC Named Hosts" blisCurrency="USD" blisExtended="0.000000">
												<detail name="computed.Temp" type="decimal" value="0"/>
												<detail name="default.activation_date" type="date" value="2017-09-27T00:00:00"/>
												<detail name="counter.Adjust Amount" type="decimal" value="0"/>
												<detail name="parameter.Service_Tag" type="string" value="MC Named Hosts"/>
												<detail name="parameter.CompPortUnitPrice" type="decimal" value="0"/>
												<detail name="parameter.Prepay_Term" type="decimal" value="1"/>
												<detail name="counter_pre.CmttUnitPrice" type="decimal" value="0"/>
												<detail name="computed.CurrentMonthFree" type="decimal" value="0"/>
												<detail name="parameter.OfferName" type="string" value="MC Named Hosts Pro USD"/>
												<detail name="default.recurring_stop_ref" type="date" value="2017-10-27T00:00:00"/>
												<detail name="computed.CommonList_Price" type="decimal" value="0"/>
												<detail name="computed.QTY" type="decimal" value="15"/>
												<detail name="computed.TMP" type="decimal" value="1"/>
												<detail name="default.agreement_creation_date" type="date" value="2016-08-27T00:00:00"/>
												<detail name="computed.Prepay_Adjust_Amount" type="decimal" value="0"/>
												<detail name="computed.Prepay_Unit_Price" type="decimal" value="0"/>
												<detail name="computed.LIST_PRICE" type="decimal" value="225.0"/>
												<detail name="counter.QtyFreeOveragePorts" type="decimal" value="0"/>
												<detail name="parameter.ExtendedPortsPrice" type="decimal" value="0"/>
												<detail name="default.recurring_stop" type="date" value="2017-10-27T00:00:00"/>
												<detail name="parameter.PortQty" type="decimal" value="15"/>
												<detail name="default.recurring_start_ref" type="date" value="2017-09-27T00:00:00"/>
												<detail name="parameter.OfferCreationDate" type="date" value="1992-01-01T00:00:00"/>
												<detail name="counter.FreeMonthPortQty" type="decimal" value="0"/>
												<detail name="parameter.CompPortQty" type="decimal" value="10"/>
												<detail name="computed.InitialMonthFree" type="decimal" value="0"/>
												<detail name="counter_pre.FreeMonthMRC" type="decimal" value="0"/>
												<detail name="parameter.AdjustmentDays" type="decimal" value="0"/>
												<detail name="parameter.Parameters_Root" type="string" value="S2-C2-1"/>
												<detail name="parameter.CancelType" type="string" value="Null"/>
												<detail name="parameter.BillDay" type="decimal" value="1"/>
												<detail name="parameter.PortsCIName" type="string" value="Pro Ports"/>
												<detail name="computed.SKUID" type="string" value="WX12135"/>
												<detail name="parameter.SubsCode" type="string" value="MCxxx-xx175516-001"/>
												<detail name="default.price_plan_name" type="string" value="Ports"/>
												<detail name="default.recurring_refund" type="string" value="not refunded"/>
												<detail name="computed.UNIT_PRICE" type="decimal" value="0.0"/>
												<detail name="counter.MRC" type="decimal" value="0"/>
												<detail name="parameter.BillingMonths" type="decimal" value="0"/>
												<detail name="parameter.PortUnitPrice" type="decimal" value="0"/>
												<detail name="parameter.FreeMoType" type="decimal" value="0"/>
												<detail name="computed.Prepay_Flag" type="decimal" value="0"/>
												<detail name="computed.RatedMonths" type="decimal" value="1"/>
												<detail name="parameter.Initial_Term" type="decimal" value="1"/>
												<detail name="parameter.CollabPortQty" type="decimal" value="0"/>
												<detail name="computed.LIST_PRICE_TYPE" type="string" value="STATIC"/>
												<detail name="counter.Month Counter" type="decimal" value="15"/>
												<detail name="counter_pre.FreeMonthFlag" type="decimal" value="0"/>
												<detail name="computed.MRC" type="decimal" value="0"/>
												<detail name="computed.NetMRC" type="decimal" value="0"/>
												<detail name="counter.FreeMonthMRC" type="decimal" value="0"/>
												<detail name="parameter.CollabUnitPrice" type="decimal" value="0"/>
												<detail name="tax.vat.ratecode" type="string" value="0"/>
												<detail name="counter_pre.Month Counter" type="decimal" value="14"/>
												<detail name="counter_pre.Adjust Amount" type="decimal" value="0"/>
												<detail name="counter.FreeMonthFlag" type="decimal" value="0"/>
												<detail name="parameter.ComplimentaryCIName" type="string" value="Pro Complimentary Ports"/>
												<detail name="counter_pre.FreeMonthPortQty" type="decimal" value="0"/>
												<detail name="computed.Prepay_Adjust_Desc" type="string" value="NULL"/>
												<detail name="default.recurring_prorata" type="string" value="not prorated"/>
												<detail name="computed.CurrentMoFree" type="decimal" value="0"/>
												<detail name="computed.QTY_TYPE" type="string" value="STATIC"/>
												<detail name="computed.TierModel" type="string" value="Std"/>
												<detail name="counter_pre.MRC" type="decimal" value="0"/>
												<detail name="parameter.Renewal_Term" type="decimal" value="0"/>
												<detail name="parameter.CollabExtendedPrice" type="decimal" value="0"/>
												<detail name="computed.SKU_DESCRIPTION" type="string" value="Meeting Center Pro Named Hosts 15"/>
												<detail name="counter_pre.QtyFreeOveragePorts" type="decimal" value="0"/>
												<detail name="computed.SKU_LOCATION" type="string" value="NULL"/>
												<detail name="computed.PORT_PRICE" type="decimal" value="0"/>
												<detail name="default.recurring_start" type="date" value="2017-09-27T00:00:00"/>
												<detail name="computed.Free_Month" type="decimal" value="0"/>
												<detail name="counter.CmttUnitPrice" type="decimal" value="0"/>
												<detail name="parameter.Free_Month" type="decimal" value="0"/>
												<detail name="computed.CIName" type="string" value="Pro Ports"/>
												<detail name="computed.EXT_PRICE" value="0.0"/>
												<AdditionSKUInfo RATINGCHARGETYPE="Recurring" COMPONENTNAME="Meeting Center Pro Named Hosts 15" RATINGMODELNAME="Seats" SKUTYPE="Seats" COMPONENTID="440" BASEPRICE="225" CHAREGEFREQUENCY="Monthly" UOMCODE="NHosts" SKUID="WX12135" RATINGMODELID="13" COMPONENTTYPEID="12"/>
												<OrderItemBooking>
													<BkgItem>
														<BookTypeID>15</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>4</BookTypeID>
														<BookValue>3375.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>19</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>11</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>16</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>18</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>3</BookTypeID>
														<BookValue>3375.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>12</BookTypeID>
														<BookValue>100.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>17</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>2</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>13</BookTypeID>
														<BookValue>100.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>1</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>20</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>14</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>10</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>5</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
												</OrderItemBooking>
											</transac>
										</TrailRunResultItem>
									</chargeCondition>
									<chargeCondition subCode="Ports Prorata Charge USD" parentCode="Ports Prorata Charge USD" manualActivable="false" blisActivationType="new" blischecked="true" creditor="WebEx USD" activationCode="Ports Prorata Charge USD#Trial-1472196873916-4">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="PortQty" isPrivate="false" type="number" value="0"/>
														<parameter name="PortUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="ExtendedPortsPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="CompPortQty" description="?" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Null"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C1"/>
														<parameter name="ProrationDays" isPrivate="false" type="number" value="0"/>
														<parameter name="Free_Month" description="Number of free months" isPrivate="false" type="number" value="0"/>
														<parameter name="BillDay" isPrivate="false" type="number" value="1"/>
														<parameter name="PrevSubsCode" isPrivate="false" type="string" value="null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="BirthDate" isPrivate="false" type="date" value="2011-07-01T00:00:00"/>
														<parameter name="IsVoIP" isPrivate="false" type="number" value="0"/>
														<parameter name="VoIPUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="isFlatFeeOld2New" isPrivate="false" type="number" value="0"/>
														<parameter name="PackQty" isPrivate="false" type="number" value="0"/>
														<parameter name="SubsCode" isPrivate="false" type="string" value="Null"/>
														<parameter name="CancelType" isPrivate="false" type="string" value="Null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S2-C1-1" s0="Ports Prorata Charge USD" s1="Charge" s2="Yes" s3="Single" s4="No" s5="Immediately" s6="No" s7="Immediately - 10 secs" s8="No" s9="NA" s10="Y" s11="L08"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="Null"/>
											<parameter name="PortQty" isPrivate="false" type="number" value="15" blisstatus="dirty" labelname="Named Hosts" labelvalue="15"/>
											<parameter name="PortUnitPrice" isPrivate="false" type="number" value="0" blisstatus="dirty" labelname="Unit Price " labelvalue="0"/>
											<parameter name="Free_Month" description="Number of free months" isPrivate="false" type="number" value="0"/>
											<parameter name="Initial_Term" isPrivate="false" type="number" value="4"/>
											<parameter name="ExtendedPortsPrice" isPrivate="false" type="number" value="0" blisstatus="dirty" labelname="Extended Price" labelvalue="0"/>
											<parameter name="CompPortQty" isPrivate="false" type="number" value="10" blisstatus="dirty" labelname="Complimentary Named Hosts" labelvalue="10"/>
											<parameter name="CompUnitPrice" isPrivate="false" type="number" value="0"/>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S2"/>
											<parameter name="Renewal_Term" isPrivate="false" type="number" value="4"/>
											<parameter name="CancelType" isPrivate="false" type="string" value="Null"/>
											<parameter name="OfferCreationDate" isPrivate="false" type="date" value="1992-01-01T00:00:00"/>
											<parameter name="BillingMonths" description="Number of remaining months to be billed" isPrivate="false" type="number" value="0"/>
											<parameter name="BillDay" isPrivate="false" type="number" value="1"/>
											<parameter name="SubsCode" isPrivate="false" type="string" value="null"/>
											<parameter name="PrevSubsCode" isPrivate="false" type="string" value="null"/>
											<parameter name="FreeMoType" description="0:end, 1:begin" isPrivate="false" type="number" value="0"/>
											<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="NULL"/>
											<parameter name="IsVoIP" isPrivate="false" type="number" value="0" blisstatus="dirty" labelname="Monthly Flat Fee Integrated VoIP with Proration" labelvalue="0"/>
											<parameter name="VoIPUnitPrice" isPrivate="false" type="number" value="10.00" blisstatus="dirty" labelname="" labelvalue="10.00"/>
											<parameter name="BirthDate" isPrivate="false" type="date" value="2011-11-01T00:00:00"/>
											<parameter name="isFlatFeeOld2New" description="" isPrivate="false" type="number" value="0"/>
											<parameter name="CollabPortQty" description="" isPrivate="false" type="number" value="0"/>
											<parameter name="CollabUnitPrice" description="" isPrivate="false" type="number" value="0"/>
											<parameter name="CollabExtendedPrice" description="" isPrivate="false" type="number" value="0"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="T68-S2-MCNH" s0="Parameters_Root" s1="Ports1 USD" s2="Named Hosts" s5="N">
												<line Number="L01">
													<row s0="Input_Box" s1="PortQty" s2="Named Hosts" s3="Number" s5="N" s6="Y" s7="1" s9="CompPortQty,PortQty,ExtendedPortsPrice" s10="var q = &apos;CMR Business Model&apos;; var qNH=&apos;CMR Business Model;CMR with Prorata Charge&apos;;  var qAH=&apos;CMR Business Model;CMR with Prorata Charge USD#1 in CMR Business Model&apos;;  var qEC=&apos;CMR Business Model;CMR with Prorata Charge USD#2 in CMR Business Model&apos;;     if(c_hs(q) == true || c_hs(q) == &apos;true&apos;) {  if (p[&apos;ACTarget&apos;]==&apos;PortQty&apos; || p[&apos;ACTarget&apos;]==&apos;CompPortQty&apos; )    {    if(c_hs(qNH) == &apos;true&apos; || c_hs(qNH) == true){       var q2=&apos;CMRQty&apos;;     var q3=&apos;CMRCompQty&apos;;       var q4 =c_cp(qNH,q2).value;    var q5 =c_cp(qNH,q3).value;     var p1 =eval(q4)+eval(q5);       var q6=o[&apos;PortQty&apos;].value;       var q7=o[&apos;CompPortQty&apos;].value;     var p2 =eval(q6)+eval(q7);        if (p1&gt;p2) {                  pt(&apos;CMR Cloud Named Hosts must be equal to or less than WebEx Named Hosts. WebEx Named Host Quantity:&apos; +  p2 + &apos;.&apos;);}            }  if(c_hs(qEC) == &apos;true&apos; || c_hs(qEC)== true){   var q2 = &apos;CMRQty&apos;;   var q4 = c_cp(qEC , q2).value;   var p1 = eval(q4);   var ut = 0;   var q6 = o[&apos;PortQty&apos;].value; var q7=o[&apos;CompPortQty&apos;].value;   var p2 = eval(q6)+eval(q7);     if(p2 &lt; 100)   {    pt(&apos;Minimum Order for CMR Cloud Employee Count is 100.&apos;);   }   var orderType = s[&apos;orderType&apos;];  if(orderType != 3){     s_cpv(qEC ,[&apos;CMRECunderEC&apos;],[p[&apos;PortQty&apos;]+p[&apos;CompPortQty&apos;]]);    s_cpv(qEC ,[&apos;CMRQty&apos;],[p[&apos;PortQty&apos;]+p[&apos;CompPortQty&apos;]]);     } p1=eval(c_cp(qEC , q2).value);     if(p1&lt;=99) ut= 17;    else if(p1&lt;=999) ut= 17;       else if(p1&lt;=9999) ut= 10;            else if(p1&lt;=24999) ut= 9;    else  ut= 8;    c_cp(qEC,&apos;CMRUnitPrice&apos;).value=ut;    c_cp(qEC,&apos;CMRExtPrice&apos;).value=fxMultiply(ut,p1);   } else if(c_hs(qAH) == &apos;true&apos; || c_hs(qAH) == true){    s_cpv(qAH ,[&apos;CMRECunderAH&apos;],[p[&apos;PortQty&apos;]+p[&apos;CompPortQty&apos;]]);  var q2=&apos;CMRQty&apos;;      var q4 =c_cp(qAH,q2).value;               var p1 =eval(q4);     var q6=o[&apos;PortQty&apos;].value;     var q7=o[&apos;CompPortQty&apos;].value;    var p2 =eval(q6)+eval(q7);         if (p1&gt;p2)    {                  pt(&apos;CMR Cloud Active Hosts must be equal to or less than WebEx Active Hosts. WebEx Host Quantity:&apos; +  p2 + &apos;.&apos;);   }} } } var qNU= &apos;Toll Named Users Charge&apos;;if(c_hs(qNU) == true || c_hs(qNU) == &apos;true&apos;)  {if (p[&apos;ACTarget&apos;]==&apos;PortQty&apos; || p[&apos;ACTarget&apos;]==&apos;CompPortQty&apos; ){  var p4 =c_cp(qNU,&apos;TollNUQty&apos;).value;   var p5 =c_cp(qNU,&apos;TollNUCompQty&apos;).value;   var p9 =eval(p4)+eval(p5); var p6=o[&apos;PortQty&apos;].value;     var p7=o[&apos;CompPortQty&apos;].value;  var p8 =eval(p6)+eval(p7);   if (p9!=p8) { pt(&apos;Toll Named Users Options quantity must match the Core Offer Nhost quantity or Employee Count quantity (for Employee Count Offers). Please adjust your input.&apos;);}}} " s11="TRUE" s13="Quantity" s16="NHost"/>
													<row s0="Input_Box" s1="PortUnitPrice" s2="Unit Price " s3="Number" s5="N" s6="N" s7="49.00" s9="PortQty,ExtendedPortsPrice" s10="function calTiers(q,tiers){if(q&lt;=4) return tiers[0];if(q&lt;=9) return tiers[1]; if(q&lt;=24) return tiers[2];if(q&lt;=49) return tiers[3];if(q&lt;=74) return tiers[4];if(q&lt;=99) return   tiers[5];    if(q&lt;=199) return tiers[6]; if(q&lt;=299) return tiers[7]; if(q&lt;=399) return tiers[8];if(q&lt;=499) return tiers[9];    if(q&lt;=749) return tiers[10];  if(q&lt;=999)   return tiers[11]; if(q&lt;=1499) return tiers[12]; if(q&lt;=2499) return tiers[13];   if(q&lt;=3499) return tiers[14];if(q&lt;=4999) return tiers[15];  if(q&lt;=7499) return tiers  [16]; if(q&lt;=9999) return tiers[17];  if(q&lt;=14999) return tiers[18]; if(q&lt;=24999) return tiers[19]; if(q&lt;=34999) return tiers[20]; if(q&lt;=49999) return tiers[21];   if  (q&lt;=74999) return tiers[22]; if(q&lt;=99999) return tiers[23]; if(q&lt;=149999) return tiers[24]; if(q&lt;=249999) return tiers[25];   return tiers[26];  }     var to=c_tp  (&apos;OfferName&apos;).value;     if(to==&apos;MC Named Hosts Pro 25 USD&apos;||to==&apos;MC NH Pro 25+EC LMR 500 USD&apos;||to==&apos;MC NH Pro 25+EC LMR 1000 USD&apos; ||to==&apos;MC25 Self-Service   Spring 09 Promo USD&apos;||to==&apos;MC25 Named Host Spring 09 Promo USD&apos; || to==&apos;Add Counter Citrix (MC NH25) USD&apos;){    var q=p[&apos;PortQty&apos;];       if(p[&apos;ACTarget&apos;]  ==&apos;PortQty&apos; &amp;&amp; p[&apos;ExtendedPortsPrice&apos;] == 0) {             var tiers=[49,49,49,49,  49,     49,45,37.5,37.5,35,        27.5,25,22.5,20,15,        15,13,  12,10,10,        10,10,10,10,10,        10,10];    if (&apos;USD&apos;==&apos;GBP&apos;)   {    var tiers=  [30.00,30.00,30.00,30.00,30.00,30.00,27.40,22.85,22.85,21.30,16.75,15.25,13.70,12.20,9.15,9.15,7.90,7.30,6.10,6.10,6.10,6.10,6.10,6.10,6.10,6.10,6.10];   }   return   calTiers(q,tiers);        }    return (p[&apos;ExtendedPortsPrice&apos;]/q).toFixed(6);   }  else if(to==&apos;MC Named Hosts Pro 200 USD&apos;){        var q=p[&apos;PortQty&apos;];           if(p[&apos;ACTarget&apos;]==&apos;PortQty&apos; &amp;&amp; p[&apos;ExtendedPortsPrice&apos;] == 0) {            var tiers=[65,65,65,65,65,        60,52,44,43,40,         34,32,30,26,21,        21,18,16.5,14,14,        14,14,14,  14,14,           14,14];   return calTiers(q,tiers);        }      return (p  [&apos;ExtendedPortsPrice&apos;]/q).toFixed(6);   } else if(to==&apos;MC Named Hosts Pro 8 EDU (Restricted) USD&apos; || to==&apos;MC Named Hosts Pro 8 HCS (Restricted) USD&apos;){ var   q=p[&apos;PortQty&apos;];  if(p[&apos;ACTarget&apos;]==&apos;PortQty&apos; &amp;&amp; p[&apos;ExtendedPortsPrice&apos;]== 0){ return 24; }else return (p[&apos;ExtendedPortsPrice&apos;] / q).toFixed  (6);} else if(to==&apos;Full Deployment MC200 Named Host USD&apos;){     var q=p[&apos;PortQty&apos;];    if(p[&apos;ACTarget&apos;]==&apos;PortQty&apos; &amp;&amp; p[&apos;ExtendedPortsPrice&apos;]== 0) {            var   tiers=[27,27,27,27,27,        27,27,26,24,22,        20,18,16,  14,12,        11,10,9,8,8,          8,8,8,8,8,        8,8];   return calTiers(q,tiers);        }else return (p[&apos;ExtendedPortsPrice&apos;]/q).toFixed(6);   }else if(to==&apos;Full Deployment MC25 Named Host USD&apos;){        var q=p[&apos;PortQty&apos;];     if(p[&apos;ACTarget&apos;]==&apos;PortQty&apos; &amp;&amp; p[&apos;ExtendedPortsPrice&apos;]== 0) {           var tiers=[20,20,20,20,20,        20,20,19,17.5,  16.5,        14.5,13,11.5,10,8.5,        7.5,6.75,6,5,5,        5,5,5,5,5,        5,5];   return calTiers(q,tiers);        }  else return (p  [&apos;ExtendedPortsPrice&apos;]/q).toFixed(6);    }else if(to==&apos;MC+US Toll Call in+VoIP USD&apos;||to==&apos;MC25 (MC + Toll + VoIP) Spring 09 Promo USD&apos;||  to==&apos;MC25 Self-  Service (MC + Toll + VoIP) Spring 09 Promo USD&apos;){    var q=p[&apos;PortQty&apos;];         if(q&gt;9 ){   pt(&apos;The Meetings Plus promo offer is for Qty 1-9 only&apos;);}            else if(q&lt;1){   pt(&apos;The Meetings Plus promo offer is for Qty 1-9 only&apos;);o[&apos;PortQty&apos;].value=1;  }         if(p[&apos;ACTarget&apos;]==&apos;PortQty&apos; &amp;&amp; p[&apos;ExtendedPortsPrice&apos;] == 0)   o[&apos;PortUnitPrice&apos;].value= 49;        else o[&apos;PortUnitPrice&apos;].value=(p[&apos;ExtendedPortsPrice&apos;]/o[&apos;PortQty&apos;].value).toFixed(6);    }else if(to==&apos;MC NH   25 for Emerging Market USD&apos;||to==&apos;MC25 Emerging Markets Spring 09 Promo USD&apos;){      var q=p[&apos;PortQty&apos;];   if(p[&apos;ACTarget&apos;]==&apos;PortQty&apos; &amp;&amp; p  [&apos;ExtendedPortsPrice&apos;]== 0) {       var tiers=[49,49,49,49,49,        49,45,37.5,37.5,35,       27.5,25,22.5,20,15,       15,13,12,  10,10,       10,10,10,10,10,       10,10];           if(&apos;USD&apos;==&apos;CNY&apos; || &apos;USD&apos;==&apos;JPY&apos; || &apos;USD&apos;==&apos;HKD&apos;) tiers=[49,      49,49,49,49,           49,45,38,38,35,          28,25,23,  20,15,          15,13,12,10,10,        10,10,10,10,10,        10,  10];       if (&apos;USD&apos;==&apos;GBP&apos;)   {    var tiers=  [30.00,30.00,30.00,30.00,30.00,30.00,27.40,22.85,22.85,21.30,16.75,15.25,13.70,12.20,9.15,9.15,7.90,7.30,6.10,6.10,6.10,6.10,6.10,6.10,6.10,6.10,6.10];   }   return   calTiers(q,tiers);        }else return (p[&apos;ExtendedPortsPrice&apos;]/q).toFixed(6);    } else if (to==&apos;Special China Package 1 USD&apos;) {    var q=p[&apos;PortQty&apos;];       if  (p[&apos;ACTarget&apos;]==&apos;PortQty&apos; &amp;&amp; p[&apos;ExtendedPortsPrice&apos;]== 0) return 100; else return (p[&apos;ExtendedPortsPrice&apos;]/q).toFixed(6);   } else if (to==&apos;Special   China Package 2 USD&apos;) {    var q=p[&apos;PortQty&apos;];       if(p[&apos;ACTarget&apos;]==&apos;PortQty&apos; &amp;&amp; p[&apos;ExtendedPortsPrice&apos;]== 0) return 150; else return (p  [&apos;ExtendedPortsPrice&apos;]/q).toFixed(6);  } else if (to==&apos;Special China Package 3 USD&apos;) {    var q=p[&apos;PortQty&apos;];    if(p[&apos;ACTarget&apos;]==&apos;PortQty&apos; &amp;&amp; p  [&apos;ExtendedPortsPrice&apos;]== 0) return 225; else return (p[&apos;ExtendedPortsPrice&apos;]/q).toFixed(6);  } else if (to==&apos;Special China Package 4 USD&apos;) {        var q=p[&apos;PortQty&apos;];       if(p[&apos;ACTarget&apos;]==&apos;PortQty&apos; &amp;&amp; p[&apos;ExtendedPortsPrice&apos;]== 0) return 400; else return (p  [&apos;ExtendedPortsPrice&apos;]/q).toFixed(6);   }  else if (to==&apos;Special China Package 5 USD&apos;) {        var q=p[&apos;PortQty&apos;];    if(p[&apos;ACTarget&apos;]==&apos;PortQty&apos; &amp;&amp; p  [&apos;ExtendedPortsPrice&apos;]== 0)   return 800; else return (p[&apos;ExtendedPortsPrice&apos;]/q).toFixed(6); }else { var q=p[&apos;PortQty&apos;];   if(p[&apos;ACTarget&apos;]  ==&apos;PortQty&apos; &amp;&amp; p[&apos;ExtendedPortsPrice&apos;]== 0) {          if(q&lt;10) return 49;   else return 0;     } else return (p[&apos;ExtendedPortsPrice&apos;]/q).toFixed  (6); }" s11="FALSE" s13="Unitprice" s16="NHost"/>
													<row s0="Input_Box" s1="ExtendedPortsPrice" s2="Extended Price" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="FALSE" s13="Extprice" s16="NHost"/>
												</line>
												<line Number="L02">
													<row s0="Input_Box" s1="CompPortQty" s2="Complimentary Named Hosts" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="NHost"/>
												</line>
												<line Number="L03">
													<row s0="Activation_Checkbox" s1="IsVoIP" s2="Monthly Flat Fee Integrated VoIP with Proration" s3="Number" s5="N" s6="Y" s7="NULL" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="NHost"/>
													<row s0="Input_Box" s1="VoIPUnitPrice" s2="" s3="Number" s5="N" s6="Y" s7="10.00" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="NHost"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="T68-S2" s0="Ports1 USD" s1="Sub Offer" s2="Yes" s3="Single" s4="No" s5="Immediately" s6="Replace" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L06"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<chargeCondition subCode="Employee Count Charge USD" parentCode="Employee Count Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="EmployeeCount" isPrivate="false" type="number" value="0"/>
													<parameter name="CIName" isPrivate="false" type="string" value="Employee Count"/>
													<parameter name="IsGenerateSKU" isPrivate="false" type="number" value="0"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="Employee Count USD"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="NULL"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="ECount" s0="Parameters_Root" s1="Employee Count Charge USD" s2="Employee Count" s5="N">
												<line Number="L01">
													<row s0="Input_Box" s1="EmployeeCount" s2="Employee Count" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Employees"/>
												</line>
												<line Number="L02">
													<row s0="Comments" s1="NULL" s2="This employee count value will display on the order form. This is the number of employees on date of execution of this Order Form." s3="String" s5="N" s6="Y" s7="NULL" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="ECount" s0="Employee Count Charge USD" s1="Charge" s2="No" s3="Single" s4="No" s5="Immediately" s6="Replace" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y"/>
										</rows>
									</TranslationTableCtrl>
								</chargeCondition>
								<chargeCondition subCode="Attendee Overage Charge USD" parentCode="Attendee Overage Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="C48"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="Null"/>
													<parameter name="CIName" isPrivate="false" type="string" value="Attendee Overage"/>
													<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="RoomSize" isPrivate="false" type="number" value="0"/>
													<parameter name="SiteURL" description="temporary param" isPrivate="false" type="string" value="Null"/>
													<parameter name="OfferFlag" description="0:single, 1:multi" isPrivate="false" type="number" value="0"/>
													<parameter name="MCType" isPrivate="false" type="string" value="Null"/>
													<parameter name="SCType" isPrivate="false" type="string" value="Null"/>
													<parameter name="ECType" isPrivate="false" type="string" value="Null"/>
													<parameter name="TCType" isPrivate="false" type="string" value="Null"/>
													<parameter name="SAType" isPrivate="false" type="string" value="Null"/>
													<parameter name="MCPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="SCPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="ECPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="TCPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="SAPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													<parameter name="AUOType" isPrivate="false" type="string" value="Null"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="C48-1" s0="Parameters_Root" s1="Attendee Overage Charge USD" s2="Additional Attendees" s5="N">
												<line Number="L01">
													<row s0="Input_Box" s1="UnitPrice" s2="Additional Attendees" s3="Number" s5="N" s6="Y" s7="15.00" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Attendee"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="C48-1" s0="Attendee Overage Charge USD" s1="Charge" s2="No" s3="Single" s4="No" s5="Immediately" s6="Replace" s7="Immediately - 10 secs" s8="No" s9="NA" s10="Y" s11="L30"/>
										</rows>
									</TranslationTableCtrl>
									<UsageInfo chargeCode="Attendee Overage Charge USD">
										<access productCode="EE Product USD" serviceAccessCode="MEETING@" userAccessCode="$CONTRACTID$"/>
									</UsageInfo>
								</chargeCondition>
								<offerCondition subCode="Additional Named Hosts USD" offerCode="Additional Named Hosts USD" blisActivationType="new" optionalOrder="true" blischecked="false">
									<chargeCondition subCode="Additional Named Hosts Charge USD#1" parentCode="Additional Named Hosts Charge USD" manualActivable="true" blisActivationType="new" description="Committed" blischecked="true" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C73"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="EE Named Users USD"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="FreeQty" isPrivate="false" type="number" value="0"/>
														<parameter name="FreeMonths" isPrivate="false" type="number" value="0"/>
														<parameter name="CapBeyondFree" description="1:yes, 0:no" isPrivate="false" type="number" value="0"/>
														<parameter name="IsEE" description="1:yes, 0:no" isPrivate="false" type="number" value="0"/>
														<parameter name="BusinessModel" description="Committed/Un-Committed" isPrivate="false" type="string" value="Committed"/>
														<parameter name="Service_Tag" description="" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S54-C73-1" s0="Parameters_Root" s1="Additional Named Hosts Charge USD" s2="Committed Named Hosts" s3="NULL" s4="NULL" s5="Y" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L03">
														<row i0="S54-C73-1-1" s0="Input_Box" s1="BusinessModel" s2="BusinessModel" s3="String" s4="S54-C73-1" s5="N" s6="Hidden" s7="Committed" s8="I" s9="NULL" s10="NULL" s11="FALSE" s12="L03" s13="Normal" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S54-C73-1" s0="Additional Named Hosts Charge USD" s1="Charge" s2="No" s3="Single" s4="No" s5="Next bill date" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11=""/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Additional Named Hosts Charge USD">
											<access productCode="Site Host EDR USD" serviceAccessCode="SITE-HOST@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Additional Named Hosts Charge USD#1#1" parentCode="Additional Named Hosts Charge USD" manualActivable="true" blisActivationType="new" description="Un-Committed" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C73"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="EE Named Users USD"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="FreeQty" isPrivate="false" type="number" value="0"/>
														<parameter name="FreeMonths" isPrivate="false" type="number" value="0"/>
														<parameter name="CapBeyondFree" description="1:yes, 0:no" isPrivate="false" type="number" value="0"/>
														<parameter name="IsEE" description="1:yes, 0:no" isPrivate="false" type="number" value="0"/>
														<parameter name="BusinessModel" description="Committed/Un-Committed" isPrivate="false" type="string" value="Committed"/>
														<parameter name="Service_Tag" description="" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S54-C73-2" s0="Parameters_Root" s1="Additional Named Hosts Charge USD" s2="Un-Committed Named Hosts (Obsolete)" s5="N">
													<line Number="L01">
														<row s0="Activation_Checkbox" s1="None" s2="Un-Committed Named Hosts deals MUST be approved by Bhupinder. Un-approved Deals will be rejected without his approval" s3="Number" s5="N" s6="N" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L02">
														<row s0="Input_Box" s1="UnitPrice" s2="Additional Named Hosts" s3="Number" s5="N" s6="Y" s7="0.00" s9="UnitPrice" s10="pt(&apos;Additional Uncommitted Named Hosts deals must be approved by Bhupinder&apos;);" s11="TRUE" s13="Unitprice" s16="NHost"/>
													</line>
													<line Number="L03">
														<row s0="Input_Box" s1="FreeQty" s2="Temporary Free Named Hosts" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="NHost"/>
													</line>
													<line Number="L04">
														<row s0="Input_Box" s1="FreeMonths" s2="Free Period" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Months"/>
													</line>
													<line Number="L05">
														<row s0="Selection_Group" s1="CapBeyondFree" s2="Cap Named Hosts beyond Temporary Free Qty" s3="String" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal">
															<row s0="Selection_Option" s1="1" s2="Yes" s3="String" s11="FALSE" s7="1"/>
															<row s0="Selection_Option" s1="0" s2="No" s3="String" s11="FALSE" s7="1"/>
														</row>
													</line>
													<line Number="L06">
														<row s0="Input_Box" s1="BusinessModel" s2="BusinessModel" s3="String" s5="N" s6="Hidden" s7="Un-Committed" s9="NULL" s10="NULL" s11="FALSE" s13="Normal"/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S54-C73-2" s0="Additional Named Hosts Charge USD" s1="Charge" s2="No" s3="Single" s4="No" s5="Next bill date" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11=""/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Additional Named Hosts Charge USD">
											<access productCode="Site Host EDR USD" serviceAccessCode="SITE-HOST@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="Additional Named Hosts USD"/>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S54"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="S54-1" s0="Parameters_Root" s1="Additional Named Hosts USD" s2="Additional Named Hosts" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="S54-1" s0="Additional Named Hosts USD" s1="Sub Offer" s2="No - Only One" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L31"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<chargeCondition subCode="MeetingPlace Audio Integration Charge USD" parentCode="MeetingPlace Audio Integration Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="OfferName" isPrivate="false" type="string" value="MC WebEx Node Ports USD"/>
													<parameter name="CIName" isPrivate="false" type="string" value="Meeting Place"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="MPlace"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="NODE-MP" s0="Parameters_Root" s1="MeetingPlace Audio Integration Charge USD" s2="MeetingPlace 8.0 (Do not select for 8.5)" s5="Y">
												<line Number="L01">
													<row s0="Activation_Checkbox" s1="NULL" s2="MeetingPlace Integration is not compatible with any WebEx teleconferenceing services for Meeting Center. Please ensure you do not select other telephony types in the Teleconference Services section." s3="Number" s5="N" s6="N" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="NODE-MP" s0="MeetingPlace Audio Integration Charge USD" s1="Charge" s2="No" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y"/>
										</rows>
									</TranslationTableCtrl>
								</chargeCondition>
								<chargeCondition subCode="Cloud Connect Audio Integration Charge USD" parentCode="Cloud Connect Audio Integration Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="OfferName" isPrivate="false" type="string" value="Cloud Connected Audio USD"/>
													<parameter name="CIName" isPrivate="false" type="string" value="CCA"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="CCA"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="CCA" s0="Parameters_Root" s1="Cloud Connect Audio Integration Charge USD" s2="Cloud Connected Audio Integration (Ports)" s5="N"/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="CCA" s0="Cloud Connect Audio Integration Charge USD" s1="Charge" s2="No" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y"/>
										</rows>
									</TranslationTableCtrl>
								</chargeCondition>
								<offerCondition subCode="CMR Business Model USD" offerCode="CMR Business Model USD" blisActivationType="new" optionalOrder="true" blischecked="false">
									<chargeCondition subCode="CMR with Prorata Charge USD" parentCode="CMR with Prorata Charge USD" manualActivable="true" blisActivationType="new" description="CMR NH" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="NULL"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="NULL"/>
														<parameter name="BirthDate" description="birthday for monthly recurring" isPrivate="false" type="date" value="2008-01-01T00:00:00"/>
														<parameter name="Initial_Term" description="Link from suboffer" isPrivate="false" type="number" value="0"/>
														<parameter name="Free_Month" description="Link from suboffer" isPrivate="false" type="number" value="0"/>
														<parameter name="Service_Tag" description="for provision" isPrivate="false" type="string" value="NULL"/>
														<parameter name="SubsCode" description="Link from suboffer" isPrivate="false" type="string" value="NULL"/>
														<parameter name="PrevSubsCode" description="Link from suboffer" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CancelType" description="set when do cancellation/link form top offer" isPrivate="false" type="string" value="NULL"/>
														<parameter name="BillingMonths" description="remaining months when termination/Link form top offer" isPrivate="false" type="number" value="0"/>
														<parameter name="Prepay_Term" description="Link from suboffer" isPrivate="false" type="number" value="1"/>
														<parameter name="CIName" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CMRQty" description="Set on UI" isPrivate="false" type="number" value="0"/>
														<parameter name="CMRUnitPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
														<parameter name="CMRExtPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
														<parameter name="CMRCompQty" description="Set on UI" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferType" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CMRECunderAH" isPrivate="false" type="number" value="0"/>
														<parameter name="CMRECunderEC" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="CMR-NH" s0="Parameters_Root" s1="CMR with Prorata Charge USD" s2="CMR Cloud Named Hosts 25" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CMRQty" s2="CMR Cloud Hosts" s3="Number" s5="N" s6="Y" s7="5" s9="CMRCompQty,CMRQty" s10="var q1=o[&apos;CMRQty&apos;].value;  var q2=o[&apos;CMRCompQty&apos;].value;  var q3=eval(q1)+eval(q2); if (q3&lt;5) {    pt(&apos;Minimum Order for CMR Cloud Named Host is 5.&apos;); } var p=&apos;Ports1&apos;;  var p1=&apos;PortQty&apos;;   var p2=&apos;CompPortQty&apos;;    p1=c_cp(p,p1).value;    p2=c_cp(p,p2).value;    var p3=eval(p1)+eval(p2);     if (q3&gt;p3)  {  pt(&apos;CMR Cloud Named Hosts must be equal to or less than WebEx Named Hosts. WebEx Named Host Quantity:&apos; +  p3 + &apos;.&apos;);   o[&apos;CMRQty&apos;].value = p1;   o[&apos;CMRCompQty&apos;].value = p2;   o[&apos;CMRQty&apos;].fireEvent(&apos;onChange&apos;); }" s11="TRUE" s13="Quantity" s16="NHost"/>
														<row s0="Input_Box" s1="CMRUnitPrice" s2="" s3="Number" s5="N" s6="N" s7="60.00" s9="CMRExtPrice,CMRUnitPrice,CMRQty" s10="var q=p[&apos;CMRQty&apos;];  var ut=0;    if(p[&apos;ACTarget&apos;]==&apos;CMRQty&apos;)      {        if(q&lt;=4) ut= 60;           else if(q&lt;=99) ut= 60;              else if(q&lt;=999) ut= 45;           else if(q&lt;=4999) ut= 28;  else  ut= 18;  o[&apos;CMRUnitPrice&apos;].value=ut; o[&apos;CMRExtPrice&apos;].value=fxMultiply(ut,q);}   else if(p[&apos;ACTarget&apos;]==&apos;CMRExtPrice&apos;) { ut=(p[&apos;CMRExtPrice&apos;]/q).toFixed(2);o[&apos;CMRUnitPrice&apos;].value=ut; } " s11="FALSE" s13="Unitprice" s16="NHost"/>
														<row s0="Input_Box" s1="CMRExtPrice" s2="" s3="Number" s5="N" s6="Y" s7="300.00" s9="NULL" s10="NULL" s11="FALSE" s13="Extprice" s16="NHost"/>
													</line>
													<line Number="L02">
														<row s0="Input_Box" s1="CMRCompQty" s2="Complimentary CMR Cloud Hosts" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="NHost"/>
													</line>
													<line Number="L03">
														<row s0="Selection_Group" s1="OfferType" s2="Offer Type" s3="String" s5="N" s6="Hidden" s7="Direct" s9="NULL" s10="NULL" s11="FALSE" s13="Normal">
															<row s0="Selection_Option" s1="Direct" s2="Direct" s3="String" s11="FALSE" s7="Direct"/>
															<row s0="Selection_Option" s1="GPL" s2="GPL" s3="String" s11="FALSE" s7="Direct"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="CMR-P" s0="CMR with Prorata Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="CMR with Prorata Charge USD#1 in CMR Business Model USD" parentCode="CMR with Prorata Charge USD" manualActivable="true" blisActivationType="new" description="CMR AH" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="NULL"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="NULL"/>
														<parameter name="BirthDate" description="birthday for monthly recurring" isPrivate="false" type="date" value="2008-01-01T00:00:00"/>
														<parameter name="Initial_Term" description="Link from suboffer" isPrivate="false" type="number" value="0"/>
														<parameter name="Free_Month" description="Link from suboffer" isPrivate="false" type="number" value="0"/>
														<parameter name="Service_Tag" description="for provision" isPrivate="false" type="string" value="NULL"/>
														<parameter name="SubsCode" description="Link from suboffer" isPrivate="false" type="string" value="NULL"/>
														<parameter name="PrevSubsCode" description="Link from suboffer" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CancelType" description="set when do cancellation/link form top offer" isPrivate="false" type="string" value="NULL"/>
														<parameter name="BillingMonths" description="remaining months when termination/Link form top offer" isPrivate="false" type="number" value="0"/>
														<parameter name="Prepay_Term" description="Link from suboffer" isPrivate="false" type="number" value="1"/>
														<parameter name="CIName" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CMRQty" description="Set on UI" isPrivate="false" type="number" value="0"/>
														<parameter name="CMRUnitPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
														<parameter name="CMRExtPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
														<parameter name="CMRCompQty" description="Set on UI" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferType" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CMRECunderAH" isPrivate="false" type="number" value="0"/>
														<parameter name="CMRECunderEC" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="CMR-AC-MCNH" s0="Parameters_Root" s1="CMR with Prorata Charge USD" s2="CMR Cloud Active Hosts 25" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CMRQty" s2="CMR Cloud Hosts" s3="Number" s5="N" s6="Y" s7="15" s9="CMRQty,CMRECunderAH" s10=" var q1=o[&apos;CMRQty&apos;].value; var q3=eval(q1);     if (q3&lt;15)  {      pt(&apos;Minimum Order for CMR Cloud Active Hosts is 15.&apos;);  } var p3=&apos;Ports1&apos;;     var p4=&apos;PortQty&apos;;  var p6=&apos;CompPortQty&apos;;  p4=c_cp(p3,p4).value; p6=c_cp(p3,p6).value; var p5=eval(p4)+eval(p6);  if (q3&gt;p5)    {       pt(&apos;CMR Cloud Active Hosts must be equal to or less than WebEx Active Hosts. WebEx Host Quantity:&apos; +  p5 + &apos;.&apos;);      o[&apos;CMRQty&apos;].value = p5;     o[&apos;CMRQty&apos;].fireEvent(&apos;onChange&apos;); } var pEV = o[&apos;CMRECunderAH&apos;].value;  if (p[&apos;ACTarget&apos;]==&apos;CMRQty&apos; &amp;&amp;Math.ceil(p[&apos;CMRQty&apos;]*Math.pow(10,4)/pEV)*Math.pow(10,-2)&lt; 2.99)  { pt(&apos;Minimum number of CMR Cloud Active Hosts should be greater than or equal to 3% of your Employee Count unless an exception has been granted.&apos;); }" s11="TRUE" s13="Quantity" s16="NHost"/>
														<row s0="Input_Box" s1="CMRUnitPrice" s2="" s3="Number" s5="N" s6="N" s7="25.00" s9="CMRExtPrice,CMRUnitPrice,CMRQty" s10="var q1=o[&apos;CMRQty&apos;].value; var q3=eval(q1); var ut=0; if(p[&apos;ACTarget&apos;]==&apos;CMRQty&apos;)      {        if(q3&lt;=99) ut= 25;           else if(q3&lt;=999) ut= 25;              else if(q3&lt;=9999) ut= 24;           else if(q3&lt;=24999) ut= 22;  else  ut= 19;  o[&apos;CMRUnitPrice&apos;].value=ut; o[&apos;CMRExtPrice&apos;].value=fxMultiply(ut,q3);}   else if(p[&apos;ACTarget&apos;]==&apos;CMRExtPrice&apos;) { ut=(p[&apos;CMRExtPrice&apos;]/q3).toFixed(2);o[&apos;CMRUnitPrice&apos;].value=ut; } " s11="FALSE" s13="Unitprice" s16="NHost"/>
														<row s0="Input_Box" s1="CMRExtPrice" s2="" s3="Number" s5="N" s6="Y" s7="375.00" s9="NULL" s10="NULL" s11="FALSE" s13="Extprice" s16="NHost"/>
													</line>
													<line Number="L02">
														<row s0="Comments" s1="None" s2="Employee Count" s3="String" s5="N" s6="Y" s7="NULL" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L03">
														<row s0="Input_Box" s1="CMRECunderAH" s2="This employee count value will display on the order form. This is the number of employees on date of execution of this Order Form." s3="Number" s5="N" s6="N" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Employees"/>
													</line>
													<line Number="L04">
														<row s0="Selection_Group" s1="OfferType" s2="Offer Type" s3="String" s5="N" s6="Hidden" s7="Direct" s9="NULL" s10="NULL" s11="FALSE" s13="Normal">
															<row s0="Selection_Option" s1="Direct" s2="Direct" s3="String" s11="FALSE" s7="Direct"/>
															<row s0="Selection_Option" s1="GPL" s2="GPL" s3="String" s11="FALSE" s7="Direct"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="CMR-P" s0="CMR with Prorata Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="CMR with Prorata Charge USD#2 in CMR Business Model USD" parentCode="CMR with Prorata Charge USD" manualActivable="true" blisActivationType="new" description="CMR EC" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="NULL"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="NULL"/>
														<parameter name="BirthDate" description="birthday for monthly recurring" isPrivate="false" type="date" value="2008-01-01T00:00:00"/>
														<parameter name="Initial_Term" description="Link from suboffer" isPrivate="false" type="number" value="0"/>
														<parameter name="Free_Month" description="Link from suboffer" isPrivate="false" type="number" value="0"/>
														<parameter name="Service_Tag" description="for provision" isPrivate="false" type="string" value="NULL"/>
														<parameter name="SubsCode" description="Link from suboffer" isPrivate="false" type="string" value="NULL"/>
														<parameter name="PrevSubsCode" description="Link from suboffer" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CancelType" description="set when do cancellation/link form top offer" isPrivate="false" type="string" value="NULL"/>
														<parameter name="BillingMonths" description="remaining months when termination/Link form top offer" isPrivate="false" type="number" value="0"/>
														<parameter name="Prepay_Term" description="Link from suboffer" isPrivate="false" type="number" value="1"/>
														<parameter name="CIName" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CMRQty" description="Set on UI" isPrivate="false" type="number" value="0"/>
														<parameter name="CMRUnitPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
														<parameter name="CMRExtPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
														<parameter name="CMRCompQty" description="Set on UI" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferType" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CMRECunderAH" isPrivate="false" type="number" value="0"/>
														<parameter name="CMRECunderEC" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="CMR-EC" s0="Parameters_Root" s1="CMR with Prorata Charge USD" s2="CMR Cloud Employee Count 25" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CMRQty" s2="CMR Cloud Hosts" s3="Number" s5="N" s6="N" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="NHost"/>
														<row s0="Input_Box" s1="CMRUnitPrice" s2="" s3="Number" s5="N" s6="Y" s7="17.00" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="NHost"/>
														<row s0="Input_Box" s1="CMRExtPrice" s2="" s3="Number" s5="N" s6="N" s7="1700.00" s9="CMRExtPrice,CMRUnitPrice" s10="var q1=o[&apos;CMRUnitPrice&apos;].value; var p1=eval(q1);  var q2=o[&apos;CMRQty&apos;].value; var p2=eval(q2);  if(p[&apos;ACTarget&apos;]==&apos;CMRUnitPrice&apos;)     o[&apos;CMRExtPrice&apos;].value=fxMultiply(p1,p2);" s11="FALSE" s13="Extprice" s16="NHost"/>
													</line>
													<line Number="L02">
														<row s0="Comments" s1="None" s2="Employee Count" s3="String" s5="N" s6="Y" s7="NULL" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L03">
														<row s0="Input_Box" s1="CMRECunderEC" s2="This employee count value will display on the order form. This is the number of employees on date of execution of this Order Form." s3="Number" s5="N" s6="N" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Employees"/>
													</line>
													<line Number="L04">
														<row s0="Selection_Group" s1="OfferType" s2="Offer Type" s3="String" s5="N" s6="Hidden" s7="Direct" s9="NULL" s10="NULL" s11="FALSE" s13="Normal">
															<row s0="Selection_Option" s1="Direct" s2="Direct" s3="String" s11="FALSE" s7="Direct"/>
															<row s0="Selection_Option" s1="GPL" s2="GPL" s3="String" s11="FALSE" s7="Direct"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="CMR-P" s0="CMR with Prorata Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="Null"/>
											<parameter name="BirthDate" isPrivate="false" type="date" value="2008-01-01T00:00:00"/>
											<parameter name="Initial_Term" isPrivate="false" type="number" value="0"/>
											<parameter name="Free_Month" isPrivate="false" type="number" value="0"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
											<parameter name="CancelType" isPrivate="false" type="string" value="Null"/>
											<parameter name="SubsCode" isPrivate="false" type="string" value="Null"/>
											<parameter name="PreSubsCode" isPrivate="false" type="string" value="Null"/>
											<parameter name="BillingMonths " isPrivate="false" type="number" value="0"/>
											<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="CMR-NHSub" s0="Parameters_Root" s1="CMR Business Model USD" s2="Collaboration Meeting Rooms Cloud" s5="N"/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="CMR-NHSub-P" s0="CMR Business Model USD" s1="Sub Offer" s2="No - Only One - Selection-Group" s3="Single" s4="No" s5="Immediately" s6="Replace" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<chargeCondition subCode="Toll Named Users Charge USD" parentCode="Toll Named Users Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="NULL"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="NULL"/>
													<parameter name="BirthDate" description="birthday for monthly recurring" isPrivate="false" type="date" value="2008-01-01T00:00:00"/>
													<parameter name="Initial_Term" description="Link from topoffer" isPrivate="false" type="number" value="0"/>
													<parameter name="Free_Month" description="Link from topoffer" isPrivate="false" type="number" value="0"/>
													<parameter name="Service_Tag" description="for provision" isPrivate="false" type="string" value="NULL"/>
													<parameter name="CancelType" description="set when do cancellation/link form top offer" isPrivate="false" type="string" value="NULL"/>
													<parameter name="SubsCode" description="Link from topoffer" isPrivate="false" type="string" value="NULL"/>
													<parameter name="PrevSubsCode" description="Link from topoffer" isPrivate="false" type="string" value="NULL"/>
													<parameter name="BillingMonths" description="remaining months when termination/Link form top offer" isPrivate="false" type="number" value="0"/>
													<parameter name="Prepay_Term" description="Link from topoffer" isPrivate="false" type="number" value="1"/>
													<parameter name="CIName" isPrivate="false" type="string" value="NULL"/>
													<parameter name="TollNUQty" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TollNUUnitPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TollNUExtPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TollNUCompQty" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TollNUGPLQty" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TollNUGPLUnitPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TollNUGPLExtPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TollAUQty" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TollAUUnitPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TollAUExtPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TollAUCompQty" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TollAUGPLQty" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TollAUGPLUnitPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TollAUGPLExtPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="TNUOptions" description="Set on UI" isPrivate="false" type="string" value="TNU"/>
													<parameter name="FedRAMPTNU" description="" isPrivate="false" type="number" value="0"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="TollNU-NH" s0="Parameters_Root" s1="Toll Named Users Charge USD" s2="Toll Named Users Options" s5="N">
												<line Number="L01">
													<row s0="Selection_Group" s1="TNUOptions" s2="Toll Named Users Options" s3="String" s5="N" s6="Y" s7="TNU" s9="TNUOptions" s10=" var q=o[&apos;TollNUQty&apos;].value; var ut=0; if(o[&apos;TNUOptions&apos;].value==&apos;TNU Plus&apos;){ut= 11.5000;}  else{ ut= 7.7500; }  o[&apos;TollNUUnitPrice&apos;].value=ut; o[&apos;TollNUExtPrice&apos;].value=fxMultiply(ut,q);" s11="TRUE" s13="Normal">
														<row s0="Selection_Option" s1="TNU" s2="Toll Named Users" s3="String" s11="FALSE" s7="TNU"/>
														<row s0="Selection_Option" s1="TNU Plus" s2="Toll Named Users Plus" s3="String" s11="FALSE" s7="TNU"/>
													</row>
												</line>
												<line Number="L02">
													<row s0="Input_Box" s1="TollNUQty" s2="Toll Named Users Options" s3="Number" s5="N" s6="Y" s7="1" s9="TollNUQty,TollNUCompQty" s10="var q1=o[&apos;TollNUQty&apos;].value;var q2=o[&apos;TollNUCompQty&apos;].value;  var q3=eval(q1)+eval(q2);var p3=&apos;Ports1&apos;;var p4=&apos;PortQty&apos;;var p5=&apos;CompPortQty&apos;;p4=c_cp(p3,p4).value;p5=c_cp(p3,p5).value; var p7=eval(p4)+eval(p5); if(q3 != p7 ) {pt(&apos;Toll Named Users Options quantity must match the Core Offer Nhost quantity or Employee Count quantity (for Employee Count Offers). Please adjust your input.&apos;);} " s11="TRUE" s13="Quantity" s16="User"/>
													<row s0="Input_Box" s1="TollNUUnitPrice" s2="" s3="Number" s5="N" s6="N" s7="7.7500" s9="TollNUExtPrice,TollNUQty,TollNUUnitPrice" s10="var q=p[&apos;TollNUQty&apos;];  var ut=0; var q1=o[&apos;TNUOptions&apos;].value;  if(p[&apos;ACTarget&apos;]==&apos;TollNUQty&apos;)      {   if(q1==&apos;TNU Plus&apos;){ut= 11.5;}else{ut= 7.75;}  o[&apos;TollNUUnitPrice&apos;].value=ut; o[&apos;TollNUExtPrice&apos;].value=fxMultiply(ut,q);}   else if(p[&apos;ACTarget&apos;]==&apos;TollNUExtPrice&apos;) { ut=(p[&apos;TollNUExtPrice&apos;]/q).toFixed(4);o[&apos;TollNUUnitPrice&apos;].value=ut;}" s11="FALSE" s13="Unitprice" s16="User"/>
													<row s0="Input_Box" s1="TollNUExtPrice" s2="TollNUExtPrice" s3="Number" s5="N" s6="Y" s7="7.7500" s9="NULL" s10="NULL" s11="FALSE" s13="Extprice" s16="User"/>
												</line>
												<line Number="L03">
													<row s0="Input_Box" s1="TollNUCompQty" s2="Complimentary Toll Named Users Options" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="User"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="TollNUNext" s0="Toll Named Users Charge USD" s1="Charge" s2="No" s3="Single" s4="No" s5="Immediately" s6="Replace" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y"/>
										</rows>
									</TranslationTableCtrl>
								</chargeCondition>
								<chargeCondition subCode="Additional Toll Named Users Charge USD" parentCode="Additional Toll Named Users Charge USD" manualActivable="true" blisActivationType="new" description="TNU" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="C73"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="Additional Toll Named Users USD"/>
													<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													<parameter name="TNUOptions" description="" isPrivate="false" type="string" value="TNU"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="EE-TU" s0="Parameters_Root" s1="Additional Toll Named Users Charge USD" s2="Additional Toll Named Users Options" s5="N">
												<line Number="L01">
													<row s0="Input_Box" s1="TNUOptions" s2="Toll Named Users Options" s3="String" s5="N" s6="Hidden" s7="TNU" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="TU" s0="Additional Toll Named Users Charge USD" s1="Charge" s2="No" s3="Single" s4="No" s5="Immediately" s6="Replace" s7="Immediately - 10 secs" s8="No" s9="NA" s10="Y"/>
										</rows>
									</TranslationTableCtrl>
									<UsageInfo chargeCode="Additional Toll Named Users Charge USD">
										<access productCode="Additional TNU EDR USD" serviceAccessCode="ADDITIONAL-TNU@" userAccessCode="$CONTRACTID$"/>
									</UsageInfo>
								</chargeCondition>
								<offerCondition subCode="Teleconference USD" offerCode="Teleconference USD" blisActivationType="new" optionalOrder="false" blischecked="true">
									<chargeCondition subCode="Teleconference USD" parentCode="Teleconference Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="IsCallinToll" description="1" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" description="1" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" description="1" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" description="1" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" description="1" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" description="1" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" description="1" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" description="1" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" description="1" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" description="1" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" description="1" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" description="1" isPrivate="false" type="number" value="0.25"/>
														<parameter name="Parameters_Root" description="1" isPrivate="false" type="string" value="C10"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" description="AudioBroadCast" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="null"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Type4IntelRatePlan" isPrivate="false" type="number" value="0"/>
														<parameter name="defaultCallinToll" description="1" isPrivate="false" type="number" value="0.05"/>
														<parameter name="defaultVoIP" description="1" isPrivate="false" type="number" value="0.02"/>
														<parameter name="defaultCallback" description="1" isPrivate="false" type="number" value="0.12"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S14-C10-2-TollNU-MCNH" s0="Parameters_Root" s1="Teleconference Charge USD" s2="Basic Teleconference" s5="N">
													<line Number="L01">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked){pt(A6); if(c_tp(&apos;OfferName&apos;).value!=&apos;MC+US Toll Call in+VoIP USD&apos;) {o[&apos;IsCallinTollfree&apos;].checked = false;}}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0500" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L02">
														<row s0="Input_Box" s1="defaultCallinToll" s2="" s3="Number" s5="N" s6="Hidden" s7="0.0500" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice"/>
													</line>
													<line Number="L03">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*) " s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="3 Mo 50 pct off" s2="3 Mo 50% off" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="3 Mo 33 pct off" s2="3 Mo 33% off" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L04">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="3 Mo 50 pct off" s2="3 Mo 50% off" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="3 Mo 33 pct off" s2="3 Mo 33% off" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L05">
														<row s0="Input_Box" s1="defaultCallback" s2="" s3="Number" s5="N" s6="Hidden" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice"/>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Type4RatePlan" s2="(USD/min)" s3="Number" s5="N" s6="Y" s7="6" s9="Intl Rate Plan,Type4RatePlan" s10="var qNU=&apos;Toll Named Users Charge&apos;; if(c_hs(qNU) == &apos;false&apos; || c_hs(qNU) == false) {  if (     (o[&apos;Type4RatePlan&apos;].value==0&amp;&amp;o[&apos;Intl Rate Plan&apos;].value==10)||(o[&apos;Type4RatePlan&apos;].value==6&amp;&amp;(o[&apos;Intl Rate Plan&apos;].value==1 ||o[&apos;Intl Rate Plan&apos;].value==2 ||o[&apos;Intl Rate Plan&apos;].value==3)     ))     {pt(&apos;You have configured telephony that mixes old and new rate plans.  Please go back and sync \&apos;Callback Intl\&apos; and \&apos;Global Toll/Toll free Call in\&apos; so they both use new rate plans or old rate plans (marked as (OLD))&apos;);} o[&apos;Type4IntelRatePlan&apos;].value=o[&apos;Type4RatePlan&apos;].value; }else{if(o[&apos;Type4RatePlan&apos;].value==0&amp;&amp;o[&apos;Intl Rate Plan&apos;].value==15){pt(&apos;You have configured telephony that mixes old and new rate plans.  Please go back and sync \&apos;Callback Intl\&apos; and \&apos;Global Toll/Toll free Call in\&apos; so they both use new rate plans or old rate plans (marked as (OLD))&apos;);} o[&apos;Type4IntelRatePlan&apos;].value=o[&apos;Type4RatePlan&apos;].value;}" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="6" s2="Uncommitted" s3="Number" s11="FALSE" s7="6"/>
															<row s0="Selection_Option" s1="0" s2="(OLD)Current" s3="Number" s11="FALSE" s7="6"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L08">
														<row s0="Input_Box" s1="defaultVoIP" s2="" s3="Number" s5="N" s6="Hidden" s7="0.0200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice"/>
													</line>
													<line Number="L09">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7);if(c_tp(&apos;OfferName&apos;).value!=&apos;MC+US Toll Call in+VoIP USD&apos;) {o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="10" s9="Intl Rate Plan" s10="var qNU=&apos;Toll Named Users Charge&apos;; var q1=eval(o[&apos;Intl Rate Plan&apos;].value); if(c_hs(qNU) == &apos;true&apos; || c_hs(qNU) == true) {  if(q1 != 15){  pt(&apos;This is not a valid global call-in rate plan for Toll Named Users Options. Please select a rate plan for Toll Named Users Options from the dropdown.&apos;);  o[&apos;Intl Rate Plan&apos;].value=15;  } }else {  if(q1 == 15){   pt(&apos;The rate plan you selected is for Toll Named Users Options only. Please select a valid rate plan from the dropdown.&apos;);   o[&apos;Intl Rate Plan&apos;].value=10;   } }" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="10" s2="Uncommitted" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="15" s2="Uncommitted Toll Users" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="2" s2="(OLD)Current" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="1" s2="(OLD)Flat USD 0.25&quot;/min&quot;" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="3" s2="(OLD)Custom" s3="Number" s11="FALSE" s7="10"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L10">
														<row s0="Input_Box" s1="IntlFreephoneUnitPrice" s2="Custom Price for Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="0.2500" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Min"/>
													</line>
													<line Number="L11">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L12">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L13">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L14">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L15">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L16">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L17">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L18">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S14-C10-2" s0="Teleconference Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L33"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Teleconference Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Prorata Callin Toll Committed Mo Charge USD in Teleconference USD" parentCode="Prorata Callin Toll Committed Mo Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="CommitMins" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="CommitUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="IsCallinToll" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" description="Callin Toll Unit Price" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" description="Callin Tollfree Unit Price" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" description="Callback Unit Price" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" description="Callback Intl Unit Price" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" description="VOIP Unit Price" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" description="Intl Freephone Unit Price" isPrivate="false" type="number" value="0.25"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C11"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="Tel Free Months" description="number of free months for telephony" isPrivate="false" type="number" value="0"/>
														<parameter name="Initial_Term" isPrivate="false" type="number" value="4"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="null"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="BirthDate" isPrivate="false" type="date" value="2010-06-01T00:00:00"/>
														<parameter name="PreSubsCode" isPrivate="false" type="string" value="Null"/>
														<parameter name="SubsCode" isPrivate="false" type="string" value="Null"/>
														<parameter name="CancelType" isPrivate="false" type="string" value="Null"/>
														<parameter name="isTelOld2New" isPrivate="false" type="number" value="0"/>
														<parameter name="Type4IntelRatePlan" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="Prorata_S14-C11-2-h-TollNU" s0="Parameters_Root" s1="Prorata Callin Toll Committed Mo Charge USD" s2="Mo Commit Toll Call in with Proration" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CommitMins" s2="Monthly Commitment" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Min"/>
														<row s0="Input_Box" s1="CommitUnitPrice" s2="Committment Rate" s3="Number" s5="N" s6="Y" s7="0.0500" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Input_Box" s1="NULL" s2="Extended Price" s3="Number" s5="N" s6="N" s7="0" s9="CommitMins,CommitUnitPrice" s10="return fxMultiply(p[&apos;CommitUnitPrice&apos;],p[&apos;CommitMins&apos;]);" s11="FALSE" s13="Extprice" s16="Min"/>
													</line>
													<line Number="L02">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked){pt(A6); o[&apos;IsCallinTollfree&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0500" s9="CommitMins,CommitUnitPrice" s10="o[&apos;CallinTollUnitPrice&apos;].value=p[&apos;CommitUnitPrice&apos;];" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L03">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*) " s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L04">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L05">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Type4RatePlan" s2="(USD/min)" s3="Number" s5="N" s6="Y" s7="6" s9="Intl Rate Plan,Type4RatePlan" s10="if (     (o[&apos;Type4RatePlan&apos;].value==0&amp;&amp;o[&apos;Intl Rate Plan&apos;].value==10)||(o[&apos;Type4RatePlan&apos;].value==6&amp;&amp;o[&apos;Intl Rate Plan&apos;].value!=10)     )     {pt(&apos;You have configured telephony that mixes old and new rate plans.  Please go back and sync \&apos;Callback Intl\&apos; and \&apos;Global Toll/Toll free Call in\&apos; so they both use new rate plans or old rate plans (marked as (OLD))&apos;);} o[&apos;Type4IntelRatePlan&apos;].value=o[&apos;Type4RatePlan&apos;].value; " s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="6" s2="Uncommitted" s3="Number" s11="FALSE" s7="6"/>
															<row s0="Selection_Option" s1="0" s2="(OLD)Current" s3="Number" s11="FALSE" s7="6"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7); o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="10" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="10" s2="Uncommitted" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="2" s2="(OLD)Current" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="1" s2="(OLD)Flat USD 0.25&quot;/min&quot;" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="3" s2="(OLD)Custom" s3="Number" s11="FALSE" s7="10"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L08">
														<row s0="Input_Box" s1="IntlFreephoneUnitPrice" s2="Custom Price for Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="0.2500" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Min"/>
													</line>
													<line Number="L09">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L10">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L11">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L12">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L13">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L14">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L15">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L16">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L17">
														<row s0="Selection_Group" s1="Tel Free Months" s2="Free Commitment" s3="Number" s5="N" s6="Hidden" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo">
															<row s0="Selection_Option" s1="0" s2="0" s3="Number" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="1" s2="1" s3="Number" s11="FALSE" s7="0"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="Prorata_S14-C11-2" s0="Prorata Callin Toll Committed Mo Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Immediately" s6="No" s7="Immediately - 10 secs" s8="No" s9="NA" s10="Y"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Prorata Callin Toll Committed Mo Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBack@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBackIntl@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Prorata Callin Tollfree Committed Mo Charge USD in Teleconference USD" parentCode="Prorata Callin Tollfree Committed Mo Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="CommitMins" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="CommitUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallinToll" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C12"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="Tel Free Months" description="number of free months for telephony" isPrivate="false" type="number" value="0"/>
														<parameter name="Initial_Term" isPrivate="false" type="number" value="4"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="null"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="BirthDate" isPrivate="false" type="date" value="2010-07-01T00:00:00"/>
														<parameter name="PreSubsCode" isPrivate="false" type="string" value="null"/>
														<parameter name="SubsCode" isPrivate="false" type="string" value="null"/>
														<parameter name="CancelType" isPrivate="false" type="string" value="null"/>
														<parameter name="isTelOld2New" isPrivate="false" type="number" value="0"/>
														<parameter name="Type4IntelRatePlan" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="Prorata_S14-C12-2-h-TollNU" s0="Parameters_Root" s1="Prorata Callin Tollfree Committed Mo Charge USD" s2="Mo Commit Toll-free Call in with Proration" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CommitMins" s2="Monthly Commitment" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Min"/>
														<row s0="Input_Box" s1="CommitUnitPrice" s2="Committment Price" s3="Number" s5="N" s6="Y" s7="0.1200" s9="CommitMins" s10="var q=p[&apos;CommitMins&apos;];if(p[&apos;ACTarget&apos;]==&apos;CommitMins&apos;) {   if(q&gt;=0&amp;&amp;q&lt;8326) {o[&apos;CommitUnitPrice&apos;].value= 0.1200; return;}  if(q&gt;=8326&amp;&amp;q&lt;90901) {o[&apos;CommitUnitPrice&apos;].value= 0.1100; return;}  if(q&gt;=90901&amp;&amp;q&lt;277768) {o[&apos;CommitUnitPrice&apos;].value= 0.0900; return;}  else {o[&apos;CommitUnitPrice&apos;].value= 0.0800;return;} }" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Input_Box" s1="NULL" s2="Extended Price" s3="Number" s5="N" s6="N" s7="0" s9="CommitMins,CommitUnitPrice" s10="return fxMultiply(p[&apos;CommitUnitPrice&apos;],p[&apos;CommitMins&apos;]);" s11="FALSE" s13="Extprice" s16="Min"/>
													</line>
													<line Number="L02">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked){pt(A6); o[&apos;IsCallinTollfree&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0500" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L03">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*) " s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="CommitMins,CommitUnitPrice" s10="o[&apos;CallinTollfreeUnitPrice&apos;].value=p[&apos;CommitUnitPrice&apos;];" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L04">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L05">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Type4RatePlan" s2="(USD/min)" s3="Number" s5="N" s6="Y" s7="6" s9="Intl Rate Plan,Type4RatePlan" s10="if (     (o[&apos;Type4RatePlan&apos;].value==0&amp;&amp;o[&apos;Intl Rate Plan&apos;].value==10)||(o[&apos;Type4RatePlan&apos;].value==6&amp;&amp;o[&apos;Intl Rate Plan&apos;].value!=10)     )      {pt(&apos;You have configured telephony that mixes old and new rate plans.  Please go back and sync \&apos;Callback Intl\&apos; and \&apos;Global Toll/Toll free Call in\&apos; so they both use new rate plans or old rate plans (marked as (OLD))&apos;);}  o[&apos;Type4IntelRatePlan&apos;].value=o[&apos;Type4RatePlan&apos;].value; " s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="6" s2="Uncommitted" s3="Number" s11="FALSE" s7="6"/>
															<row s0="Selection_Option" s1="0" s2="(OLD)Current" s3="Number" s11="FALSE" s7="6"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7); o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="10" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="10" s2="Uncommitted" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="2" s2="(OLD)Current" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="1" s2="(OLD)Flat USD 0.25&quot;/min&quot;" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="3" s2="(OLD)Custom" s3="Number" s11="FALSE" s7="10"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L08">
														<row s0="Input_Box" s1="IntlFreephoneUnitPrice" s2="Custom Price for Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="0.2500" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Min"/>
													</line>
													<line Number="L09">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L10">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L11">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L12">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L13">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L14">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L15">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L16">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L17">
														<row s0="Selection_Group" s1="Tel Free Months" s2="Free Commitment" s3="Number" s5="N" s6="Hidden" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo">
															<row s0="Selection_Option" s1="0" s2="0" s3="Number" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="1" s2="1" s3="Number" s11="FALSE" s7="0"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="Prorata_S14-C12-2" s0="Prorata Callin Tollfree Committed Mo Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Immediately" s6="No" s7="Immediately - 10 secs" s8="No" s9="NA" s10="Y"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Prorata Callin Tollfree Committed Mo Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBack@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBackIntl@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Prorata Callin Tollfree and Callback Committed Mo Charge USD in Teleconference USD" parentCode="Prorata Callin Tollfree and Callback Committed Mo Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="CommitUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallinToll" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="CommitMins" isPrivate="false" type="number" value="0"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C13"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="Tel Free Months" description="number of free months for telephony" isPrivate="false" type="number" value="0"/>
														<parameter name="Initial_Term" isPrivate="false" type="number" value="4"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="null"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelpHost" isPrivate="false" type="string" value="null"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="BirthDate" isPrivate="false" type="date" value="2010-07-01T00:00:00"/>
														<parameter name="PreSubsCode" isPrivate="false" type="string" value="Null"/>
														<parameter name="SubsCode" isPrivate="false" type="string" value="Null"/>
														<parameter name="CancelType" isPrivate="false" type="string" value="Null"/>
														<parameter name="isTelOld2New" isPrivate="false" type="number" value="0"/>
														<parameter name="Type4IntelRatePlan" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="Prorata_S14-C13-2-h-TollNU" s0="Parameters_Root" s1="Prorata Callin Tollfree and Callback Committed Mo Charge USD" s2="Mo Commit Toll-free Call in and Call back with Proration" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CommitMins" s2="Monthly Commitment" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Min"/>
														<row s0="Input_Box" s1="CommitUnitPrice" s2="Committment Price" s3="Number" s5="N" s6="Y" s7="0.1200" s9="CommitMins" s10="var q=p[&apos;CommitMins&apos;];if(p[&apos;ACTarget&apos;]==&apos;CommitMins&apos;) {   if(q&gt;=0&amp;&amp;q&lt;8326) {o[&apos;CommitUnitPrice&apos;].value= 0.1200; return;}  if(q&gt;=8326&amp;&amp;q&lt;90901) {o[&apos;CommitUnitPrice&apos;].value= 0.1100; return;}  if(q&gt;=90901&amp;&amp;q&lt;277768) {o[&apos;CommitUnitPrice&apos;].value= 0.0900; return;}  else {o[&apos;CommitUnitPrice&apos;].value= 0.0800;return;} }" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Input_Box" s1="NULL" s2="Extended Price" s3="Number" s5="N" s6="N" s7="0" s9="CommitMins,CommitUnitPrice" s10="return fxMultiply(p[&apos;CommitUnitPrice&apos;],p[&apos;CommitMins&apos;]);" s11="FALSE" s13="Extprice" s16="Min"/>
													</line>
													<line Number="L02">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked){pt(A6); o[&apos;IsCallinTollfree&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0500" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L03">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*) " s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="CommitMins,CommitUnitPrice" s10="o[&apos;CallbackUnitPrice&apos;].value= p[&apos;CommitUnitPrice&apos;];o[&apos;CallinTollfreeUnitPrice&apos;].value=p[&apos;CommitUnitPrice&apos;];" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L04">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="CallbackUnitPrice,CallinTollfreeUnitPrice" s10="if(p[&apos;ACTarget&apos;]==&apos;CallbackUnitPrice&apos;){o[&apos;CallinTollfreeUnitPrice&apos;].value=p[&apos;CallbackUnitPrice&apos;];}else{o[&apos;CallbackUnitPrice&apos;].value=p[&apos;CallinTollfreeUnitPrice&apos;];}" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L05">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Type4RatePlan" s2="(USD/min)" s3="Number" s5="N" s6="Y" s7="6" s9="Intl Rate Plan,Type4RatePlan" s10="if (     (o[&apos;Type4RatePlan&apos;].value==0&amp;&amp;o[&apos;Intl Rate Plan&apos;].value==10)||(o[&apos;Type4RatePlan&apos;].value==6&amp;&amp;o[&apos;Intl Rate Plan&apos;].value!=10)     )     {pt(&apos;You have configured telephony that mixes old and new rate plans.  Please go back and sync \&apos;Callback Intl\&apos; and \&apos;Global Toll/Toll free Call in\&apos; so they both use new rate plans or old rate plans (marked as (OLD))&apos;);} o[&apos;Type4IntelRatePlan&apos;].value=o[&apos;Type4RatePlan&apos;].value; " s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="6" s2="Uncommitted" s3="Number" s11="FALSE" s7="6"/>
															<row s0="Selection_Option" s1="0" s2="(OLD)Current" s3="Number" s11="FALSE" s7="6"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7); o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="10" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="10" s2="Uncommitted" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="2" s2="(OLD)Current" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="1" s2="(OLD)Flat USD 0.25&quot;/min&quot;" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="3" s2="(OLD)Custom" s3="Number" s11="FALSE" s7="10"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L08">
														<row s0="Input_Box" s1="IntlFreephoneUnitPrice" s2="Custom Price for Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="0.2500" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Min"/>
													</line>
													<line Number="L09">
														<row s0="Activation_Checkbox" s1="IsSMS" s2="SMS" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L10">
														<row s0="Input_Box" s1="SMSUnitPrice" s2="SMS Invitation" s3="Number" s5="N" s6="N" s7="0.0000" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Each"/>
														<row s0="Selection_Group" s1="PromotionSMS" s2="SMS Invitation Pro" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Each">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L11">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L12">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L13">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L14">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L15">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L16">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L17">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L18">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L19">
														<row s0="Selection_Group" s1="Tel Free Months" s2="Free Commitment" s3="Number" s5="N" s6="Hidden" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo">
															<row s0="Selection_Option" s1="0" s2="0" s3="Number" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="1" s2="1" s3="Number" s11="FALSE" s7="0"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="Prorata_S14-C13-2" s0="Prorata Callin Tollfree and Callback Committed Mo Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Immediately" s6="No" s7="Immediately - 10 secs" s8="No" s9="NA" s10="Y"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Prorata Callin Tollfree and Callback Committed Mo Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBack@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBackIntl@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Prorata Teleconference Committed Billings Mo Charge USD in Teleconference USD" parentCode="Prorata Teleconference Committed Billings Mo Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="CommitBillings" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="IsCallinToll" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="IsCallinTollCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfreeCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntlCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIPCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephoneCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C14"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="Tel Free Months" isPrivate="false" type="number" value="0"/>
														<parameter name="Initial_Term" isPrivate="false" type="number" value="4"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" isPrivate="false" type="number" value="1"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="IsABCCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsSMSCmtt" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelpCmtt" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCallMeBackCmtt" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCallMeBackIntlCmtt" isPrivate="false" type="number" value="0"/>
														<parameter name="Type4IntelRatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="BirthDate" isPrivate="false" type="date" value="2010-07-01T00:00:00"/>
														<parameter name="PreSubsCode" isPrivate="false" type="string" value="NULL"/>
														<parameter name="SubsCode" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CancelType" isPrivate="false" type="string" value="NULL"/>
														<parameter name="isTelOld2New" isPrivate="false" type="number" value="0"/>
														<parameter name="defaultCallinToll" description="1" isPrivate="false" type="number" value="0.05"/>
														<parameter name="defaultVoIP" description="1" isPrivate="false" type="number" value="0.02"/>
														<parameter name="defaultCallback" description="1" isPrivate="false" type="number" value="0.12"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="Prorata_S14-C14-2-h-TollNU-MCNH_USD" s0="Parameters_Root" s1="Prorata Teleconference Committed Billings Mo Charge USD" s2="Mo Commit Telephony Billings with Proration" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CommitBillings" s2="Monthly Committed Billings" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L02">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked){pt(A6); if(c_tp(&apos;OfferName&apos;).value!=&apos;MC+US Toll Call in+VoIP USD&apos;) {o[&apos;IsCallinTollfree&apos;].checked = false;}}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0500" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L03">
														<row s0="Input_Box" s1="defaultCallinToll" s2="NULL" s3="Number" s5="N" s6="Hidden" s7="0.0500" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice"/>
													</line>
													<line Number="L04">
														<row s0="Activation_Checkbox" s1="IsCallinTollCommit" s2="Apply to commit, Toll Call in" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L05">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsCallinTollfreeCommit" s2="Apply to commit, Toll-free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L08">
														<row s0="Input_Box" s1="defaultCallback" s2="" s3="Number" s5="N" s6="Hidden" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice"/>
													</line>
													<line Number="L09">
														<row s0="Activation_Checkbox" s1="IsCallbackCommit" s2="Apply to commit, Call back" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L10">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Type4RatePlan" s2="Rate Plan" s3="String" s5="N" s6="Y" s7="7" s9="Intl Rate Plan,Type4RatePlan" s10="var qNU=&apos;Toll Named Users Charge&apos;; if(p[&apos;ACTarget&apos;]==&apos;Type4RatePlan&apos;&amp;&amp;o[&apos;Type4RatePlan&apos;].value==10) {pt(&apos;(UNAVAIL) Rate M audio is no longer available. Please select another rate plan option.&apos;);}if(p[&apos;ACTarget&apos;]==&apos;Intl Rate Plan&apos;&amp;&amp;(o[&apos;Intl Rate Plan&apos;].value==20||o[&apos;Intl Rate Plan&apos;].value==21)) {pt(&apos;The rate plan you selected is for P&amp;G only.  Please select another rate plan option if required.&apos;);}if(c_hs(qNU) == &apos;false&apos; || c_hs(qNU) == false) {if(p[&apos;ACTarget&apos;]==&apos;Intl Rate Plan&apos;&amp;&amp;o[&apos;Intl Rate Plan&apos;].value==14) {pt(&apos;(UNAVAIL) Rate M audio is no longer available. Please select another rate plan option.&apos;);}if (     (o[&apos;Type4RatePlan&apos;].value&gt;=7&amp;&amp;o[&apos;Intl Rate Plan&apos;].value&lt;=9)||(o[&apos;Type4RatePlan&apos;].value&lt;6&amp;&amp;((o[&apos;Intl Rate Plan&apos;].value&gt;=11&amp;&amp;o[&apos;Intl Rate Plan&apos;].value&lt;=14)||o[&apos;Intl Rate Plan&apos;].value==20||o[&apos;Intl Rate Plan&apos;].value==21))  )     {pt(&apos;You have configured telephony that mixes old and new rate plans. Please go back and sync \&apos;Callback Intl\&apos; and \&apos;Global Toll/Toll free Call in\&apos; so they both use new rate plans or old rate plans (marked as (OLD))&apos;);}o[&apos;None&apos;].value=o[&apos;Type4RatePlan&apos;].value; }else{if(p[&apos;ACTarget&apos;]==&apos;Intl Rate Plan&apos;&amp;&amp;o[&apos;Intl Rate Plan&apos;].value==19) {pt(&apos;(UNAVAIL) Rate M Toll Users audio is no longer available. Please select another rate plan option.&apos;);}if (o[&apos;Type4RatePlan&apos;].value&lt;6 &amp;&amp;o[&apos;Intl Rate Plan&apos;].value&gt;= 16&amp;&amp;(o[&apos;Intl Rate Plan&apos;].value!=20&amp;&amp;o[&apos;Intl Rate Plan&apos;].value!=21) ){pt(&apos;You have configured telephony that mixes old and new rate plans. Please go back and sync \&apos;Callback Intl\&apos; and \&apos;Global Toll/Toll free Call in\&apos; so they both use new rate plans or old rate plans (marked as (OLD))&apos;);}o[&apos;None&apos;].value=o[&apos;Type4RatePlan&apos;].value; } " s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="7" s2="Rate J" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="8" s2="Rate K" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="9" s2="Rate L" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="10" s2="(UNAVAIL) Rate M" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="0" s2="(OLD)Current" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="1" s2="(OLD)Rate A" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="2" s2="(OLD)Rate B" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="3" s2="(OLD)Rate C" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="4" s2="(OLD)Rate D" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="5" s2="(OLD)Rate I" s3="String" s11="FALSE" s7="7"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L11">
														<row s0="Activation_Checkbox" s1="IsCallbackIntlCommit" s2="Apply to commit, Call back Intl" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L12">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L13">
														<row s0="Input_Box" s1="defaultVoIP" s2="" s3="Number" s5="N" s6="Hidden" s7="0.0200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice"/>
													</line>
													<line Number="L14">
														<row s0="Activation_Checkbox" s1="IsVOIPCommit" s2="Apply to commit, Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L15">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7); if(c_tp(&apos;OfferName&apos;).value!=&apos;MC+US Toll Call in+VoIP USD&apos;) {o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="11" s9="Intl Rate Plan" s10="var qNU=&apos;Toll Named Users Charge&apos;; var q1=eval(o[&apos;Intl Rate Plan&apos;].value); if(c_hs(qNU) == &apos;true&apos; || c_hs(qNU) == true) {  if(!(q1 == 16 || q1 == 17 || q1 == 18||q1==19||q1==14) ){  pt(&apos;This is not a valid global call-in rate plan for Toll Named Users Options. Please select a rate plan for Toll Named Users Options from the dropdown.&apos;);  o[&apos;Intl Rate Plan&apos;].value=16;  }if(q1==14){pt(&apos;(UNAVAIL) Rate M audio is no longer available. Please select another rate plan option.This is not a valid global call-in rate plan for Toll Named Users Options. Please select a rate plan for Toll Named Users Options from the dropdown.&apos;);o[&apos;Intl Rate Plan&apos;].value=16;} }else {  if(q1 == 16 || q1 == 17 || q1 == 18 ){   pt(&apos;The rate plan you selected is for Toll Named Users Options only. Please select a valid rate plan from the dropdown.&apos;);   o[&apos;Intl Rate Plan&apos;].value=11;   }if(q1==19){pt(&apos;(UNAVAIL) Rate M Toll Users audio is no longer available. Please select another rate plan option. The rate plan you selected is for Toll Named Users Options only. Please select a valid rate plan from the dropdown.&apos;);   o[&apos;Intl Rate Plan&apos;].value=11; } }" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="11" s2="Rate J" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="12" s2="Rate K" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="13" s2="Rate L" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="14" s2="(UNAVAIL) Rate M" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="20" s2="Rate P&amp;G $0/Rate M" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="21" s2="Rate P&amp;G $0.008/Rate M" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="16" s2="Rate J Toll Users" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="17" s2="Rate K Toll Users" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="18" s2="Rate L Toll Users" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="19" s2="(UNAVAIL) Rate M Toll Users" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="4" s2="(OLD)Rate A" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="5" s2="(OLD)Rate B" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="6" s2="(OLD)Rate C" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="7" s2="(OLD)Rate D" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="8" s2="(OLD)Rate D Custom 1" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="9" s2="(OLD)Rate E" s3="Number" s11="FALSE" s7="11"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L16">
														<row s0="Activation_Checkbox" s1="IsIntlFreephoneCommit" s2="Apply to commit, Global Toll and Toll free call in" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L17">
														<row s0="Activation_Checkbox" s1="IsSMS" s2="SMS" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L18">
														<row s0="Input_Box" s1="SMSUnitPrice" s2="SMS Invitation" s3="Number" s5="N" s6="N" s7="0.0000" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Each"/>
														<row s0="Selection_Group" s1="PromotionSMS" s2="SMS Invitation Pro" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Each">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L19">
														<row s0="Activation_Checkbox" s1="IsSMSCmtt" s2="Apply to commit, SMS" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L20">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L21">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L22">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L23">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L24">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L25">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L26">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L27">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L28">
														<row s0="Activation_Checkbox" s1="IsABCCommit" s2="Apply to commit, Audio Broadcast" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L29">
														<row s0="Selection_Group" s1="Tel Free Months" s2="Free Commitment" s3="Number" s5="N" s6="Hidden" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo">
															<row s0="Selection_Option" s1="0" s2="0" s3="Number" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="1" s2="1" s3="Number" s11="FALSE" s7="0"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="Prorata_S14-C14-2" s0="Prorata Teleconference Committed Billings Mo Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Immediately" s6="No" s7="Immediately - 10 secs" s8="No" s9="NA" s10="Y"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Prorata Teleconference Committed Billings Mo Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBack@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBackIntl@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Callin Toll Committed TU USD" parentCode="Callin Toll Committed TU Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="CommitMins" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="CommitUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="IsCallinToll" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="TrueUpPeriod" isPrivate="false" type="number" value="3"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C15"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="TrueUpFlag" description="1: yes, 0: no" isPrivate="false" type="number" value="1"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Type4IntelRatePlan" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S14-C15-2-TollNU" s0="Parameters_Root" s1="Callin Toll Committed TU Charge USD" s2="True Up Commit Toll Call in" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CommitMins" s2="Commitment per True Up Period" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Min"/>
														<row s0="Input_Box" s1="CommitUnitPrice" s2="Committment Price" s3="Number" s5="N" s6="Y" s7="0.0500" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Input_Box" s1="NULL" s2="Extended Price " s3="Number" s5="N" s6="N" s7="0" s9="CommitMins,CommitUnitPrice" s10="return fxMultiply(p[&apos;CommitUnitPrice&apos;],p[&apos;CommitMins&apos;]);" s11="FALSE" s13="Extprice" s16="Min"/>
													</line>
													<line Number="L02">
														<row s0="Input_Box" s1="TrueUpPeriod" s2="True Up Period" s3="Number" s5="N" s6="Y" s7="3" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo"/>
													</line>
													<line Number="L03">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked){pt(A6); o[&apos;IsCallinTollfree&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0500" s9="CommitMins,CommitUnitPrice" s10="o[&apos;CallinTollUnitPrice&apos;].value=p[&apos;CommitUnitPrice&apos;];" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L04">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L05">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Type4RatePlan" s2="(USD/min)" s3="Number" s5="N" s6="Y" s7="6" s9="Intl Rate Plan,Type4RatePlan" s10="if (     (o[&apos;Type4RatePlan&apos;].value==0&amp;&amp;o[&apos;Intl Rate Plan&apos;].value==10)||(o[&apos;Type4RatePlan&apos;].value==6&amp;&amp;o[&apos;Intl Rate Plan&apos;].value!=10)     )     {pt(&apos;You have configured telephony that mixes old and new rate plans.  Please go back and sync \&apos;Callback Intl\&apos; and \&apos;Global Toll/Toll free Call in\&apos; so they both use new rate plans or old rate plans (marked as (OLD))&apos;);} o[&apos;Type4IntelRatePlan&apos;].value=o[&apos;Type4RatePlan&apos;].value; " s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="6" s2="Uncommitted" s3="Number" s11="FALSE" s7="6"/>
															<row s0="Selection_Option" s1="0" s2="(OLD)Current" s3="Number" s11="FALSE" s7="6"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L08">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7); o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="10" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="10" s2="Uncommitted" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="2" s2="(OLD)Current" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="1" s2="(OLD)Flat USD 0.25&quot;/min&quot;" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="3" s2="(OLD)Custom" s3="Number" s11="FALSE" s7="10"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L09">
														<row s0="Input_Box" s1="IntlFreephoneUnitPrice" s2="Custom Price for Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="0.2500" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Min"/>
													</line>
													<line Number="L10">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L11">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L12">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L13">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L14">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L15">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L16">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L17">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S14-C15-2" s0="Callin Toll Committed TU Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Next bill date" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L38"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Callin Toll Committed TU Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBack@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBackIntl@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Callin Tollfree and Callback Committed TU USD" parentCode="Callin Tollfree and Callback Committed TU Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="CommitMins" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="CommitUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallinToll" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="TrueUpPeriod" isPrivate="false" type="number" value="3"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C16"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="TrueUpFlag" description="1: yes, 0: no" isPrivate="false" type="number" value="1"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCallMeBackCmtt" isPrivate="false" type="number" value="0"/>
														<parameter name="Type4IntelRatePlan" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S14-C16-2-TollNU" s0="Parameters_Root" s1="Callin Tollfree and Callback Committed TU Charge USD" s2="True Up Commit Toll-free Call in and Call back" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CommitMins" s2="Commitment per True Up Period" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Min"/>
														<row s0="Input_Box" s1="CommitUnitPrice" s2="Committment Price" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Input_Box" s1="NULL" s2="Extended Price " s3="Number" s5="N" s6="N" s7="0" s9="CommitMins,CommitUnitPrice" s10="return fxMultiply(p[&apos;CommitUnitPrice&apos;],p[&apos;CommitMins&apos;]);" s11="FALSE" s13="Extprice" s16="Min"/>
													</line>
													<line Number="L02">
														<row s0="Input_Box" s1="TrueUpPeriod" s2="True Up Period" s3="Number" s5="N" s6="Y" s7="3" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo"/>
													</line>
													<line Number="L03">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked){pt(A6); o[&apos;IsCallinTollfree&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0500" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L04">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*)" s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="CommitMins,CommitUnitPrice" s10="o[&apos;CallinTollfreeUnitPrice&apos;].value=p[&apos;CommitUnitPrice&apos;];" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L05">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="CommitMins,CommitUnitPrice" s10="o[&apos;CallbackUnitPrice&apos;].value=p[&apos;CommitUnitPrice&apos;];" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Type4RatePlan" s2="(USD/min)" s3="Number" s5="N" s6="Y" s7="6" s9="Intl Rate Plan,Type4RatePlan" s10="if (     (o[&apos;Type4RatePlan&apos;].value==0&amp;&amp;o[&apos;Intl Rate Plan&apos;].value==10)||(o[&apos;Type4RatePlan&apos;].value==6&amp;&amp;o[&apos;Intl Rate Plan&apos;].value!=10)     )     {pt(&apos;You have configured telephony that mixes old and new rate plans.  Please go back and sync \&apos;Callback Intl\&apos; and \&apos;Global Toll/Toll free Call in\&apos; so they both use new rate plans or old rate plans (marked as (OLD))&apos;);} o[&apos;Type4IntelRatePlan&apos;].value=o[&apos;Type4RatePlan&apos;].value; " s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="6" s2="Uncommitted" s3="Number" s11="FALSE" s7="6"/>
															<row s0="Selection_Option" s1="0" s2="(OLD)Current" s3="Number" s11="FALSE" s7="6"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L08">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7); o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="10" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="10" s2="Uncommitted" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="2" s2="(OLD)Current" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="1" s2="(OLD)Flat USD 0.25&quot;/min&quot;" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="3" s2="(OLD)Custom" s3="Number" s11="FALSE" s7="10"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L09">
														<row s0="Input_Box" s1="IntlFreephoneUnitPrice" s2="Custom Price for Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="0.2500" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Min"/>
													</line>
													<line Number="L10">
														<row s0="Activation_Checkbox" s1="IsSMS" s2="SMS" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L11">
														<row s0="Input_Box" s1="SMSUnitPrice" s2="SMS Invitation" s3="Number" s5="N" s6="N" s7="0.0000" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Each"/>
														<row s0="Selection_Group" s1="PromotionSMS" s2="SMS Invitation Pro" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Each">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L12">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L13">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L14">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L15">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L16">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L17">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L18">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L19">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S14-C16-2" s0="Callin Tollfree and Callback Committed TU Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Next bill date" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L39"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Callin Tollfree and Callback Committed TU Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBack@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBackIntl@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Teleconference Committed Billings TU Charge USD in Teleconference USD" parentCode="Teleconference Committed Billings TU Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C41"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="TrueUpPeriod" isPrivate="false" type="number" value="3"/>
														<parameter name="TrueUpFlag" description="1: yes, 0: no" isPrivate="false" type="number" value="1"/>
														<parameter name="CommitBillings" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCallinToll" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfreeCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntlCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIPCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephoneCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" isPrivate="false" type="number" value="1"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="IsABCCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCallMeBackIntlCmtt" isPrivate="false" type="number" value="1"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="IsSMSCmtt" isPrivate="false" type="number" value="0"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="IsInstantHelpCmtt" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCallMeBackCmtt" isPrivate="false" type="number" value="0"/>
														<parameter name="Type4IntelRatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="defaultCallinToll" description="1" isPrivate="false" type="number" value="0.05"/>
														<parameter name="defaultVoIP" description="1" isPrivate="false" type="number" value="0.02"/>
														<parameter name="defaultCallback" description="1" isPrivate="false" type="number" value="0.12"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S14-C41-2-TollNU-MCNH" s0="Parameters_Root" s1="Teleconference Committed Billings TU Charge USD" s2="True Up Commit Telephony Billings" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CommitBillings" s2="Committed Billings per True Up Period" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L02">
														<row s0="Input_Box" s1="TrueUpPeriod" s2="True Up Period" s3="Number" s5="N" s6="Y" s7="3" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo"/>
													</line>
													<line Number="L03">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked){pt(A6); if(c_tp(&apos;OfferName&apos;).value!=&apos;MC+US Toll Call in+VoIP USD&apos;) {o[&apos;IsCallinTollfree&apos;].checked = false;}}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0500" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L04">
														<row s0="Input_Box" s1="defaultCallinToll" s2="NULL" s3="Number" s5="N" s6="Hidden" s7="0.0500" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice"/>
													</line>
													<line Number="L05">
														<row s0="Activation_Checkbox" s1="IsCallinTollCommit" s2="Apply to commit, Toll Call in" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsCallinTollfreeCommit" s2="Apply to commit, Toll-free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L08">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L09">
														<row s0="Input_Box" s1="defaultCallback" s2="" s3="Number" s5="N" s6="Hidden" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice"/>
													</line>
													<line Number="L10">
														<row s0="Activation_Checkbox" s1="IsCallbackCommit" s2="Apply to commit, Call back" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L11">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Type4RatePlan" s2="Rate Plan" s3="String" s5="N" s6="Y" s7="7" s9="Intl Rate Plan,Type4RatePlan" s10="var qNU=&apos;Toll Named Users Charge&apos;;if(p[&apos;ACTarget&apos;]==&apos;Type4RatePlan&apos;&amp;&amp;o[&apos;Type4RatePlan&apos;].value==10) {pt(&apos;(UNAVAIL) Rate M audio is no longer available. Please select another rate plan option.&apos;);} if(c_hs(qNU) == &apos;false&apos; || c_hs(qNU) == false) {if(p[&apos;ACTarget&apos;]==&apos;Intl Rate Plan&apos;&amp;&amp;o[&apos;Intl Rate Plan&apos;].value==14) {pt(&apos;(UNAVAIL) Rate M audio is no longer available. Please select another rate plan option.&apos;);}if (     (o[&apos;Type4RatePlan&apos;].value&gt;=7&amp;&amp;o[&apos;Intl Rate Plan&apos;].value&lt;=9)||(o[&apos;Type4RatePlan&apos;].value&lt;6&amp;&amp;o[&apos;Intl Rate Plan&apos;].value&gt;=11&amp;&amp;o[&apos;Intl Rate Plan&apos;].value&lt;=14)  )     {pt(&apos;You have configured telephony that mixes old and new rate plans. Please go back and sync \&apos;Callback Intl\&apos; and \&apos;Global Toll/Toll free Call in\&apos; so they both use new rate plans or old rate plans (marked as (OLD))&apos;);}o[&apos;None&apos;].value=o[&apos;Type4RatePlan&apos;].value; }else{if(p[&apos;ACTarget&apos;]==&apos;Intl Rate Plan&apos;&amp;&amp;o[&apos;Intl Rate Plan&apos;].value==19) {pt(&apos;(UNAVAIL) Rate M Toll Users audio is no longer available. Please select another rate plan option.&apos;);}if (o[&apos;Type4RatePlan&apos;].value&lt;6 &amp;&amp;o[&apos;Intl Rate Plan&apos;].value&gt;= 16 ){pt(&apos;You have configured telephony that mixes old and new rate plans. Please go back and sync \&apos;Callback Intl\&apos; and \&apos;Global Toll/Toll free Call in\&apos; so they both use new rate plans or old rate plans (marked as (OLD))&apos;);}o[&apos;None&apos;].value=o[&apos;Type4RatePlan&apos;].value; }" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="7" s2="Rate J" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="8" s2="Rate K" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="9" s2="Rate L" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="10" s2="(UNAVAIL) Rate M" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="0" s2="(OLD)No Discount" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="1" s2="(OLD)Rate A" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="2" s2="(OLD)Rate B" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="3" s2="(OLD)Rate C" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="4" s2="(OLD)Rate D" s3="String" s11="FALSE" s7="7"/>
															<row s0="Selection_Option" s1="5" s2="(OLD)Rate I" s3="String" s11="FALSE" s7="7"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L12">
														<row s0="Activation_Checkbox" s1="IsCallbackIntlCommit" s2="Apply to commit, Call back Intl" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L13">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L14">
														<row s0="Input_Box" s1="defaultVoIP" s2="" s3="Number" s5="N" s6="Hidden" s7="0.0200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice"/>
													</line>
													<line Number="L15">
														<row s0="Activation_Checkbox" s1="IsVOIPCommit" s2="Apply to commit, Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L16">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;}             if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7); if(c_tp(&apos;OfferName&apos;).value!=&apos;MC+US Toll Call in+VoIP USD&apos;) {o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="11" s9="Intl Rate Plan" s10="var qNU=&apos;Toll Named Users Charge&apos;; var q1=eval(o[&apos;Intl Rate Plan&apos;].value); if(c_hs(qNU) == &apos;true&apos; || c_hs(qNU) == true) {  if(!(q1 == 16 || q1 == 17 || q1 == 18||q1==19||q1==14) ){  pt(&apos;This is not a valid global call-in rate plan for Toll Named Users Options. Please select a rate plan for Toll Named Users Options from the dropdown.&apos;);  o[&apos;Intl Rate Plan&apos;].value=16;  }if(q1==14){pt(&apos;(UNAVAIL) Rate M audio is no longer available. Please select another rate plan option.This is not a valid global call-in rate plan for Toll Named Users Options. Please select a rate plan for Toll Named Users Options from the dropdown.&apos;);o[&apos;Intl Rate Plan&apos;].value=16;} }else {  if(q1 == 16 || q1 == 17 || q1 == 18 ){   pt(&apos;The rate plan you selected is for Toll Named Users Options only. Please select a valid rate plan from the dropdown.&apos;);   o[&apos;Intl Rate Plan&apos;].value=11;   }if(q1==19){pt(&apos;(UNAVAIL) Rate M Toll Users audio is no longer available. Please select another rate plan option. The rate plan you selected is for Toll Named Users Options only. Please select a valid rate plan from the dropdown.&apos;);   o[&apos;Intl Rate Plan&apos;].value=11; } } " s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="11" s2="Rate J" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="12" s2="Rate K" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="13" s2="Rate L" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="14" s2="(UNAVAIL) Rate M" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="16" s2="Rate J Toll Users" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="17" s2="Rate K Toll Users" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="18" s2="Rate L Toll Users" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="19" s2="(UNAVAIL) Rate M Toll Users" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="4" s2="(OLD)Rate A" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="5" s2="(OLD)Rate B" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="6" s2="(OLD)Rate C" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="7" s2="(OLD)Rate D" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="8" s2="(OLD)Rate D Custom 1" s3="Number" s11="FALSE" s7="11"/>
															<row s0="Selection_Option" s1="9" s2="(OLD)Rate E" s3="Number" s11="FALSE" s7="11"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L17">
														<row s0="Activation_Checkbox" s1="IsIntlFreephoneCommit" s2="Apply to commit, Global Toll and Toll free call in" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L18">
														<row s0="Activation_Checkbox" s1="IsSMS" s2="SMS" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L19">
														<row s0="Input_Box" s1="SMSUnitPrice" s2="SMS Invitation" s3="Number" s5="N" s6="N" s7="0.0000" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Each"/>
														<row s0="Selection_Group" s1="PromotionSMS" s2="SMS Invitation Pro" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Each">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L20">
														<row s0="Activation_Checkbox" s1="IsSMSCmtt" s2="Apply to commit, SMS" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L21">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L22">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L23">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L24">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L25">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L26">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L27">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L28">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L29">
														<row s0="Activation_Checkbox" s1="IsABCCommit" s2="Apply to commit, Audio Broadcast" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S14-C41-2" s0="Teleconference Committed Billings TU Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Next bill date" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L40"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Teleconference Committed Billings TU Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBack@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBackIntl@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Prorata VOIP Committed Mo Charge USD in Teleconference USD" parentCode="Prorata VOIP Committed Mo Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C43"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="CommitMins" isPrivate="false" type="number" value="0"/>
														<parameter name="CommitUnitPrice" isPrivate="false" type="number" value="0.02"/>
														<parameter name="Initial_Term" isPrivate="false" type="number" value="4"/>
														<parameter name="Tel Free Months" isPrivate="false" type="number" value="0"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="IsCallinToll" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="null"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="BirthDate" isPrivate="false" type="date" value="2010-07-01T00:00:00"/>
														<parameter name="PreSubsCode" isPrivate="false" type="string" value="Null"/>
														<parameter name="SubsCode" isPrivate="false" type="string" value="Null"/>
														<parameter name="CancelType" isPrivate="false" type="string" value="Null"/>
														<parameter name="isTelOld2New" isPrivate="false" type="number" value="0"/>
														<parameter name="Type4IntelRatePlan" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="Prorata_S14-C43-2-h-TollNU-MCNH" s0="Parameters_Root" s1="Prorata VOIP Committed Mo Charge USD" s2="Mo Commit Integrated VoIP with Proration" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CommitMins" s2="Monthly Commitment" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Min"/>
														<row s0="Input_Box" s1="CommitUnitPrice" s2="Committment Price" s3="Number" s5="N" s6="Y" s7="0.0200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Input_Box" s1="NULL" s2="Extended Price" s3="Number" s5="N" s6="N" s7="0" s9="CommitMins,CommitUnitPrice" s10="return fxMultiply(p[&apos;CommitUnitPrice&apos;],p[&apos;CommitMins&apos;]);" s11="FALSE" s13="Extprice" s16="Min"/>
													</line>
													<line Number="L02">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked){pt(A6); if(c_tp(&apos;OfferName&apos;).value!=&apos;MC+US Toll Call in+VoIP USD&apos;) {o[&apos;IsCallinTollfree&apos;].checked = false;}}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0500" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L03">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*)  " s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L04">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.1200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L05">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Type4RatePlan" s2="(USD/min)" s3="Number" s5="N" s6="Y" s7="6" s9="Intl Rate Plan,Type4RatePlan" s10="if (     (o[&apos;Type4RatePlan&apos;].value==0&amp;&amp;o[&apos;Intl Rate Plan&apos;].value==10)||(o[&apos;Type4RatePlan&apos;].value==6&amp;&amp;o[&apos;Intl Rate Plan&apos;].value!=10)     )     {pt(&apos;You have configured telephony that mixes old and new rate plans.  Please go back and sync \&apos;Callback Intl\&apos; and \&apos;Global Toll/Toll free Call in\&apos; so they both use new rate plans or old rate plans (marked as (OLD))&apos;);} o[&apos;Type4IntelRatePlan&apos;].value=o[&apos;Type4RatePlan&apos;].value; " s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="6" s2="Uncommitted" s3="Number" s11="FALSE" s7="6"/>
															<row s0="Selection_Option" s1="0" s2="(OLD)Current" s3="Number" s11="FALSE" s7="6"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="N" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0200" s9="CommitMins,CommitUnitPrice" s10="o[&apos;VOIPUnitPrice&apos;].value= p[&apos;CommitUnitPrice&apos;];" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7); if(c_tp(&apos;OfferName&apos;).value!=&apos;MC+US Toll Call in+VoIP USD&apos;) {o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="10" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="10" s2="Uncommitted" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="2" s2="(OLD)Current" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="1" s2="(OLD)Flat USD 0.25&quot;/min&quot;" s3="Number" s11="FALSE" s7="10"/>
															<row s0="Selection_Option" s1="3" s2="(OLD)Custom" s3="Number" s11="FALSE" s7="10"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L08">
														<row s0="Input_Box" s1="IntlFreephoneUnitPrice" s2="Custom Price for Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="0.2500" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Min"/>
													</line>
													<line Number="L09">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L10">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L11">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L12">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L13">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L14">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L15">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L16">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L17">
														<row s0="Selection_Group" s1="Tel Free Months" s2="Free Commitment" s3="Number" s5="N" s6="Hidden" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo">
															<row s0="Selection_Option" s1="0" s2="0" s3="Number" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="1" s2="1" s3="Number" s11="FALSE" s7="0"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="Prorata_S14-C43-2" s0="Prorata VOIP Committed Mo Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Immediately" s6="No" s7="Immediately - 10 secs" s8="No" s9="NA" s10="Y"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Prorata VOIP Committed Mo Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBack@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBackIntl@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Partner TSP SMS Charge USD in Teleconference USD" parentCode="Partner TSP SMS Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="CXX"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="Null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Telephony"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="Partner SMS" s0="Parameters_Root" s1="Partner TSP SMS Charge USD" s2="Partner TSP - SMS" s5="N">
													<line Number="L01">
														<row s0="Activation_Checkbox" s1="IsSMS" s2="SMS" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L02">
														<row s0="Input_Box" s1="SMSUnitPrice" s2="SMS Invitation" s3="Number" s5="N" s6="N" s7="0.000" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Each"/>
														<row s0="Selection_Group" s1="PromotionSMS" s2="SMS Invitation" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Each">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="Partner SMS" s0="Partner TSP SMS Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Partner TSP SMS Charge USD">
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Callin Toll Committed Mo USD" parentCode="Callin Toll Committed Mo Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="CommitMins" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="CommitUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="IsCallinToll" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" description="Callin Toll Unit Price" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" description="Callin Tollfree Unit Price" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" description="Callback Unit Price" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" description="Callback Intl Unit Price" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" description="VOIP Unit Price" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" description="Intl Freephone Unit Price" isPrivate="false" type="number" value="0.25"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C11"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="Tel Free Months" description="number of free months for telephony" isPrivate="false" type="number" value="0"/>
														<parameter name="Initial_Term" isPrivate="false" type="number" value="4"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="null"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S14-C11-2-h-TollNU" s0="Parameters_Root" s1="Callin Toll Committed Mo Charge USD" s2="(OBSOLETE)Mo Commit Toll Call in" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CommitMins" s2="Monthly Commitment" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Min"/>
														<row s0="Input_Box" s1="CommitUnitPrice" s2="Committment Rate" s3="Number" s5="N" s6="Y" s7="0.050" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Input_Box" s1="NULL" s2="Extended Price" s3="Number" s5="N" s6="N" s7="0" s9="CommitMins,CommitUnitPrice" s10="return fxMultiply(p[&apos;CommitUnitPrice&apos;],p[&apos;CommitMins&apos;]);" s11="FALSE" s13="Extprice" s16="Min"/>
													</line>
													<line Number="L02">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked){pt(A6); o[&apos;IsCallinTollfree&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.050" s9="CommitMins,CommitUnitPrice" s10="return p[&apos;CommitUnitPrice&apos;];" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L03">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*) " s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L04">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L05">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="NULL" s2="(USD/min)" s3="String" s5="N" s6="N" s7="NULL" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="NULL" s2="Current" s3="String" s11="FALSE" s7="NULL"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.020" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7); o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="2" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="2" s2="Current" s3="Number" s11="FALSE" s7="2"/>
															<row s0="Selection_Option" s1="1" s2="Flat USD 0.25&quot;/min&quot;" s3="Number" s11="FALSE" s7="2"/>
															<row s0="Selection_Option" s1="3" s2="Custom" s3="Number" s11="FALSE" s7="2"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L08">
														<row s0="Input_Box" s1="IntlFreephoneUnitPrice" s2="Custom Price for Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="0.250" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Min"/>
													</line>
													<line Number="L09">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L10">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L11">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L12">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L13">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L14">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L15">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L16">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L17">
														<row s0="Selection_Group" s1="Tel Free Months" s2="Free Commitment" s3="Number" s5="N" s6="Hidden" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo">
															<row s0="Selection_Option" s1="0" s2="0" s3="Number" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="1" s2="1" s3="Number" s11="FALSE" s7="0"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S14-C11-2" s0="Callin Toll Committed Mo Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Next bill date" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L34"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Callin Toll Committed Mo Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBack@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBackIntl@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Callin Tollfree Committed Mo USD" parentCode="Callin Tollfree Committed Mo Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="CommitMins" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="CommitUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallinToll" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C12"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="Tel Free Months" description="number of free months for telephony" isPrivate="false" type="number" value="0"/>
														<parameter name="Initial_Term" isPrivate="false" type="number" value="4"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="null"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S14-C12-2-h-TollNU" s0="Parameters_Root" s1="Callin Tollfree Committed Mo Charge USD" s2="(OBSOLETE)Mo Commit Toll-free Call in" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CommitMins" s2="Monthly Commitment" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Min"/>
														<row s0="Input_Box" s1="CommitUnitPrice" s2="Committment Price" s3="Number" s5="N" s6="Y" s7="0.140" s9="CommitMins" s10="var q=p[&apos;CommitMins&apos;];if(p[&apos;ACTarget&apos;]==&apos;CommitMins&apos;) {  if(q&lt;8000) return 0.14;  if(q&lt;18000) return 0.13;if(q&lt;45000) return 0.12;  if(q&lt;100000) return 0.11; if(q&lt;200000)return 0.1;  return 0.09; }" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Input_Box" s1="NULL" s2="Extended Price" s3="Number" s5="N" s6="N" s7="0" s9="CommitMins,CommitUnitPrice" s10="return fxMultiply(p[&apos;CommitUnitPrice&apos;],p[&apos;CommitMins&apos;]);" s11="FALSE" s13="Extprice" s16="Min"/>
													</line>
													<line Number="L02">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked){pt(A6); o[&apos;IsCallinTollfree&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.050" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L03">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*) " s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.200" s9="CommitMins,CommitUnitPrice" s10="return p[&apos;CommitUnitPrice&apos;];" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L04">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L05">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="NULL" s2="(USD/min)" s3="String" s5="N" s6="N" s7="NULL" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="NULL" s2="Current" s3="String" s11="FALSE" s7="NULL"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.020" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7); o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="2" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="2" s2="Current" s3="Number" s11="FALSE" s7="2"/>
															<row s0="Selection_Option" s1="1" s2="Flat USD 0.25&quot;/min&quot;" s3="Number" s11="FALSE" s7="2"/>
															<row s0="Selection_Option" s1="3" s2="Custom" s3="Number" s11="FALSE" s7="2"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L08">
														<row s0="Input_Box" s1="IntlFreephoneUnitPrice" s2="Custom Price for Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="0.250" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Min"/>
													</line>
													<line Number="L09">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L10">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L11">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L12">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L13">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L14">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L15">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L16">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L17">
														<row s0="Selection_Group" s1="Tel Free Months" s2="Free Commitment" s3="Number" s5="N" s6="Hidden" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo">
															<row s0="Selection_Option" s1="0" s2="0" s3="Number" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="1" s2="1" s3="Number" s11="FALSE" s7="0"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S14-C12-2" s0="Callin Tollfree Committed Mo Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Next bill date" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L35"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Callin Tollfree Committed Mo Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBack@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBackIntl@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Callin Tollfree and Callback Committed Mo USD" parentCode="Callin Tollfree and Callback Committed Mo Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="CommitUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallinToll" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="CommitMins" isPrivate="false" type="number" value="0"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C13"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="Tel Free Months" description="number of free months for telephony" isPrivate="false" type="number" value="0"/>
														<parameter name="Initial_Term" isPrivate="false" type="number" value="4"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="null"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelpHost" isPrivate="false" type="string" value="null"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S14-C13-1-h" s0="Parameters_Root" s1="Callin Tollfree and Callback Committed Mo Charge USD" s2="(OBSOLETE)Mo Commit Toll-free Call in and Call back" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CommitMins" s2="Monthly Commitment" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Min"/>
														<row s0="Input_Box" s1="CommitUnitPrice" s2="Committment Price" s3="Number" s5="N" s6="Y" s7="0.140" s9="CommitMins" s10="var q=p[&apos;CommitMins&apos;];if(p[&apos;ACTarget&apos;]==&apos;CommitMins&apos;) {  if(q&lt;8000) return 0.14;  if(q&lt;18000) return 0.13;if(q&lt;45000) return 0.12;  if(q&lt;100000) return 0.11; if(q&lt;200000)return 0.1;  return 0.09; }" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Input_Box" s1="NULL" s2="Extended Price" s3="Number" s5="N" s6="N" s7="0" s9="CommitMins,CommitUnitPrice" s10="return fxMultiply(p[&apos;CommitUnitPrice&apos;],p[&apos;CommitMins&apos;]);" s11="FALSE" s13="Extprice" s16="Min"/>
													</line>
													<line Number="L02">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked){pt(A6); o[&apos;IsCallinTollfree&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.050" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L03">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*) " s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.200" s9="CommitMins,CommitUnitPrice" s10="o[&apos;CallbackUnitPrice&apos;].value= p[&apos;CommitUnitPrice&apos;];return p[&apos;CommitUnitPrice&apos;];" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L04">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="N" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.200" s9="CallbackUnitPrice,CallinTollfreeUnitPrice" s10="if(p[&apos;ACTarget&apos;]==&apos;CallbackUnitPrice&apos;){o[&apos;CallinTollfreeUnitPrice&apos;].value=p[&apos;CallbackUnitPrice&apos;];}else{o[&apos;CallbackUnitPrice&apos;].value=p[&apos;CallinTollfreeUnitPrice&apos;];}" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L05">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="NULL" s2="(USD/min)" s3="String" s5="N" s6="N" s7="NULL" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="NULL" s2="Current" s3="String" s11="FALSE" s7="NULL"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.020" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7); o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="2" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="2" s2="Current" s3="Number" s11="FALSE" s7="2"/>
															<row s0="Selection_Option" s1="1" s2="Flat USD 0.25&quot;/min&quot;" s3="Number" s11="FALSE" s7="2"/>
															<row s0="Selection_Option" s1="3" s2="Custom" s3="Number" s11="FALSE" s7="2"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L08">
														<row s0="Input_Box" s1="IntlFreephoneUnitPrice" s2="Custom Price for Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="0.250" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Min"/>
													</line>
													<line Number="L09">
														<row s0="Activation_Checkbox" s1="IsSMS" s2="SMS" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L10">
														<row s0="Input_Box" s1="SMSUnitPrice" s2="SMS Invitation" s3="Number" s5="N" s6="N" s7="0.000" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Each"/>
														<row s0="Selection_Group" s1="PromotionSMS" s2="SMS Invitation Pro" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Each">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L11">
														<row s0="Activation_Checkbox" s1="IsCallMeBack" s2="Domestic Call Me back" s3="Number" s5="N" s6="Y" s7="0" s9="IsCallinToll,IsCallinTollfree,IsCallMeBack,IsCallback" s10="if(p[&apos;ACTarget&apos;]==&apos;IsCallMeBack&apos; &amp;&amp; o[&apos;IsCallMeBack&apos;].checked){  o[&apos;IsCallinToll&apos;].checked = true;  o[&apos;IsCallinTollfree&apos;].checked = true;  o[&apos;IsCallback&apos;].checked = true; }  else if(!o[&apos;IsCallback&apos;].checked &amp;&amp; o[&apos;IsCallMeBack&apos;].checked){   alert(&apos;Domestic Call Me back requires Call back and either Toll Call in or Toll-free Call in&apos;);   o[&apos;IsCallMeBack&apos;].checked = false; }" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallMeBackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallMeBack" s2="Domestic Call Me Back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L12">
														<row s0="Activation_Checkbox" s1="IsCallMeBackIntl" s2="Call Me back International" s3="Number" s5="N" s6="Y" s7="0" s9="IsCallMeBack,IsCallMeBackIntl,IsCallback,IsCallbackIntl,IsCallinToll,IsCallinTollfree" s10="if(p[&apos;ACTarget&apos;]==&apos;IsCallMeBackIntl&apos; &amp;&amp; o[&apos;IsCallMeBackIntl&apos;].checked) {  o[&apos;IsCallinToll&apos;].checked = true;  o[&apos;IsCallinTollfree&apos;].checked = true;  o[&apos;IsCallback&apos;].checked = true;  o[&apos;IsCallbackIntl&apos;].checked = true;  o[&apos;IsCallMeBack&apos;].checked = true; } else if(!(o[&apos;IsCallMeBack&apos;].checked &amp;&amp; o[&apos;IsCallbackIntl&apos;].checked)&amp;&amp; o[&apos;IsCallMeBackIntl&apos;].checked){   alert(&apos;Call Me back International requires Domestic Call Me back, Call back International, Call back and either Toll Call in or Toll-free Call in&apos;);   o[&apos;IsCallMeBackIntl&apos;].checked = false;  } " s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="NULL" s2="(USD/min)" s3="String" s5="N" s6="N" s7="NULL" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="NULL" s2="Current" s3="String" s11="FALSE" s7="NULL"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallMeBackIntl" s2="Call Me back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L13">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L14">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L15">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L16">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L17">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L18">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L19">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L20">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L21">
														<row s0="Selection_Group" s1="Tel Free Months" s2="Free Commitment" s3="Number" s5="N" s6="Hidden" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo">
															<row s0="Selection_Option" s1="0" s2="0" s3="Number" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="1" s2="1" s3="Number" s11="FALSE" s7="0"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S14-C13-2" s0="Callin Tollfree and Callback Committed Mo Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Next bill date" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L36"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Callin Tollfree and Callback Committed Mo Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBack@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBackIntl@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="Teleconference Committed Billings Mo USD" parentCode="Teleconference Committed Billings Mo Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="CommitBillings" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="IsCallinToll" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="IsCallinTollCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfreeCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntlCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIPCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephoneCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C14"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="Tel Free Months" isPrivate="false" type="number" value="0"/>
														<parameter name="Initial_Term" isPrivate="false" type="number" value="4"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" isPrivate="false" type="number" value="1"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="IsABCCommit" isPrivate="false" type="number" value="1"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsSMSCmtt" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelpCmtt" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCallMeBackCmtt" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="NULL"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCallMeBackIntlCmtt" isPrivate="false" type="number" value="0"/>
														<parameter name="Type4IntelRatePlan" isPrivate="false" type="string" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S14-C14-1-h-MCNH" s0="Parameters_Root" s1="Teleconference Committed Billings Mo Charge USD" s2="(OBSOLETE)Mo Commit Telephony Billings" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CommitBillings" s2="Monthly Committed Billings" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L02">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked ){pt(A6); if(c_tp(&apos;OfferName&apos;).value!=&apos;MC+US Toll Call in+VoIP USD&apos;) {o[&apos;IsCallinTollfree&apos;].checked = false;}}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.0500" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L03">
														<row s0="Activation_Checkbox" s1="IsCallinTollCommit" s2="Apply to commit, Toll Call in" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L04">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.140" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L05">
														<row s0="Activation_Checkbox" s1="IsCallinTollfreeCommit" s2="Apply to commit, Toll-free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.140" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsCallbackCommit" s2="Apply to commit, Call back" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L08">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Type4RatePlan" s2="Rate Plan" s3="String" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="0" s2="Current" s3="String" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="1" s2="Rate A" s3="String" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="2" s2="Rate B" s3="String" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="3" s2="Rate C" s3="String" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="4" s2="Rate D" s3="String" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="5" s2="Rate I" s3="String" s11="FALSE" s7="0"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L09">
														<row s0="Activation_Checkbox" s1="IsCallbackIntlCommit" s2="Apply to commit, Call back Intl" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L10">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.020" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L11">
														<row s0="Activation_Checkbox" s1="IsVOIPCommit" s2="Apply to commit, Integrated VoIP" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L12">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7); if(c_tp(&apos;OfferName&apos;).value!=&apos;MC+US Toll Call in+VoIP USD&apos;) {o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="4" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="4" s2="Rate A" s3="Number" s11="FALSE" s7="4"/>
															<row s0="Selection_Option" s1="5" s2="Rate B" s3="Number" s11="FALSE" s7="4"/>
															<row s0="Selection_Option" s1="6" s2="Rate C" s3="Number" s11="FALSE" s7="4"/>
															<row s0="Selection_Option" s1="7" s2="Rate D" s3="Number" s11="FALSE" s7="4"/>
															<row s0="Selection_Option" s1="8" s2="Rate D Custom 1" s3="Number" s11="FALSE" s7="4"/>
															<row s0="Selection_Option" s1="9" s2="Rate E" s3="Number" s11="FALSE" s7="4"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L13">
														<row s0="Activation_Checkbox" s1="IsIntlFreephoneCommit" s2="Apply to commit, Global Toll and Toll free call in" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L14">
														<row s0="Activation_Checkbox" s1="IsSMS" s2="SMS" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L15">
														<row s0="Input_Box" s1="SMSUnitPrice" s2="SMS Invitation" s3="Number" s5="N" s6="N" s7="0.000" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Each"/>
														<row s0="Selection_Group" s1="PromotionSMS" s2="SMS Invitation Pro" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Each">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L16">
														<row s0="Activation_Checkbox" s1="IsSMSCmtt" s2="Apply to commit, SMS" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L17">
														<row s0="Activation_Checkbox" s1="IsCallMeBack" s2="Domestic Call Me back" s3="Number" s5="N" s6="Y" s7="0" s9="IsCallinToll,IsCallinTollfree,IsCallMeBack,IsCallback" s10="if(p[&apos;ACTarget&apos;]==&apos;IsCallMeBack&apos; &amp;&amp; o[&apos;IsCallMeBack&apos;].checked){  o[&apos;IsCallinToll&apos;].checked = true;  o[&apos;IsCallinTollfree&apos;].checked = true;  o[&apos;IsCallback&apos;].checked = true; }  else if(!o[&apos;IsCallback&apos;].checked &amp;&amp; o[&apos;IsCallMeBack&apos;].checked){   alert(&apos;Domestic Call Me back requires Call back and either Toll Call in or Toll-free Call in&apos;);   o[&apos;IsCallMeBack&apos;].checked = false; }" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallMeBackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallMeBack" s2="Domestic Call Me back" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L18">
														<row s0="Activation_Checkbox" s1="IsCallMeBackCmtt" s2="Apply to commit, Call Me back" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L19">
														<row s0="Activation_Checkbox" s1="IsCallMeBackIntl" s2="Call Me back International" s3="Number" s5="N" s6="Y" s7="0" s9="IsCallMeBack,IsCallMeBackIntl,IsCallback,IsCallbackIntl,IsCallinToll,IsCallinTollfree" s10="if(p[&apos;ACTarget&apos;]==&apos;IsCallMeBackIntl&apos; &amp;&amp; o[&apos;IsCallMeBackIntl&apos;].checked) {  o[&apos;IsCallinToll&apos;].checked = true;  o[&apos;IsCallinTollfree&apos;].checked = true;  o[&apos;IsCallback&apos;].checked = true;  o[&apos;IsCallbackIntl&apos;].checked = true;  o[&apos;IsCallMeBack&apos;].checked = true; } else if(!(o[&apos;IsCallMeBack&apos;].checked &amp;&amp; o[&apos;IsCallbackIntl&apos;].checked)&amp;&amp; o[&apos;IsCallMeBackIntl&apos;].checked){   alert(&apos;Call Me back International requires Domestic Call Me back, Call back International, Call back and either Toll Call in or Toll-free Call in&apos;);   o[&apos;IsCallMeBackIntl&apos;].checked = false;  } " s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Type4IntelRatePlan" s2="Rate Plan" s3="String" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="0" s2="Current" s3="String" s11="False" s7="0"/>
															<row s0="Selection_Option" s1="1" s2="Rate A" s3="String" s11="False" s7="0"/>
															<row s0="Selection_Option" s1="2" s2="Rate B" s3="String" s11="False" s7="0"/>
															<row s0="Selection_Option" s1="3" s2="Rate C" s3="String" s11="False" s7="0"/>
															<row s0="Selection_Option" s1="4" s2="Rate D" s3="String" s11="False" s7="0"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallMeBackIntl" s2="Call Me back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L20">
														<row s0="Activation_Checkbox" s1="IsCallMeBackIntlCmtt" s2="Apply to commit, Call Me back International" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L21">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L22">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L23">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L24">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L25">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L26">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L27">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L28">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L29">
														<row s0="Activation_Checkbox" s1="IsABCCommit" s2="Apply to commit, Audio Broadcast" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L30">
														<row s0="Selection_Group" s1="Tel Free Months" s2="Free Commitment" s3="Number" s5="N" s6="Hidden" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo">
															<row s0="Selection_Option" s1="0" s2="0" s3="Number" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="1" s2="1" s3="Number" s11="FALSE" s7="0"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S14-C14-2" s0="Teleconference Committed Billings Mo Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Next bill date" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L37"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="Teleconference Committed Billings Mo Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBack@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBackIntl@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<chargeCondition subCode="VOIP Committed Mo Charge USD in Teleconference USD" parentCode="VOIP Committed Mo Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C43"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="CommitMins" isPrivate="false" type="number" value="0"/>
														<parameter name="CommitUnitPrice" isPrivate="false" type="number" value="0.02"/>
														<parameter name="Initial_Term" isPrivate="false" type="number" value="4"/>
														<parameter name="Tel Free Months" isPrivate="false" type="number" value="0"/>
														<parameter name="Intl Rate Plan" isPrivate="false" type="string" value="2"/>
														<parameter name="IsCallinToll" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallinTollfree" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallback" isPrivate="false" type="number" value="1"/>
														<parameter name="IsCallbackIntl" isPrivate="false" type="number" value="1"/>
														<parameter name="IsVOIP" isPrivate="false" type="number" value="1"/>
														<parameter name="IsIntlFreephone" isPrivate="false" type="number" value="1"/>
														<parameter name="CallinTollUnitPrice" isPrivate="false" type="number" value="0.05"/>
														<parameter name="CallinTollfreeUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="CallbackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="VOIPUnitPrice" isPrivate="false" type="number" value="0.02"/>
														<parameter name="IntlFreephoneUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="PromotionCallinToll" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallinTollfree" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallback" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionCallbackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionVoip" isPrivate="false" type="string" value="null"/>
														<parameter name="PromotionIntlFreephone" isPrivate="false" type="string" value="null"/>
														<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
														<parameter name="Type4RatePlan" isPrivate="false" type="string" value="0"/>
														<parameter name="IsABC" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice01" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice02" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice03" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice04" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice05" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice06" isPrivate="false" type="number" value="0"/>
														<parameter name="ABCPrice07" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionABC" isPrivate="false" type="string" value="null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="CallMeBackUnitPrice" isPrivate="false" type="number" value="0.2"/>
														<parameter name="IsCallMeBack" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBack" isPrivate="false" type="string" value="null"/>
														<parameter name="IsCallMeBackIntl" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionCallMeBackIntl" isPrivate="false" type="string" value="null"/>
														<parameter name="CallMeBackIntlUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsSMS" isPrivate="false" type="number" value="0"/>
														<parameter name="SMSUnitPrice" isPrivate="false" type="number" value="0.25"/>
														<parameter name="PromotionSMS" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpHostUnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="IsWebEx" isPrivate="false" type="number" value="0"/>
														<parameter name="IsCustomer" isPrivate="false" type="number" value="0"/>
														<parameter name="IsInstantHelp" isPrivate="false" type="number" value="0"/>
														<parameter name="PromotionInstantHelp" isPrivate="false" type="string" value="null"/>
														<parameter name="InstantHelpUnitPrice" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S14-C43-2-h-TollNU-MCNH" s0="Parameters_Root" s1="VOIP Committed Mo Charge USD" s2="(OBSOLETE)Mo Commit Integrated VoIP" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="CommitMins" s2="Monthly Commitment" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Min"/>
														<row s0="Input_Box" s1="CommitUnitPrice" s2="Committment Price" s3="Number" s5="N" s6="Y" s7="0.020" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Input_Box" s1="NULL" s2="Extended Price" s3="Number" s5="N" s6="N" s7="0" s9="CommitMins,CommitUnitPrice" s10="return fxMultiply(p[&apos;CommitUnitPrice&apos;],p[&apos;CommitMins&apos;]);" s11="FALSE" s13="Extprice" s16="Min"/>
													</line>
													<line Number="L02">
														<row s0="Activation_Checkbox" s1="IsCallinToll" s2="Toll Call-in (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked &amp;&amp;!o[&apos;IsIntlFreephone&apos;].checked){pt(A6); if(c_tp(&apos;OfferName&apos;).value!=&apos;MC+US Toll Call in+VoIP USD&apos;) {o[&apos;IsCallinTollfree&apos;].checked = false;}}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.050" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinToll" s2="US+Canada Toll Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L03">
														<row s0="Activation_Checkbox" s1="IsCallinTollfree" s2="Toll-free Call-in (Bridge country only*)  " s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallinTollfreeUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallinTollfree" s2="US+Canada Toll-free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L04">
														<row s0="Activation_Checkbox" s1="IsCallback" s2="Call back (Bridge country only*)" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsCallback" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsCallback&apos;].checked){ alert(A4); o[&apos;IsCallback&apos;].checked = false;o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="CallbackUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.200" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionCallback" s2="US+Canada Call back Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L05">
														<row s0="Activation_Checkbox" s1="IsCallbackIntl" s2="Call back Int&apos;l" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallback,IsCallbackIntl" s10="if(!o[&apos;IsCallback&apos;].checked&amp;&amp;o[&apos;IsCallbackIntl&apos;].checked){alert(A3);o[&apos;IsCallbackIntl&apos;].checked = false;}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="NULL" s2="(USD/min)" s3="String" s5="N" s6="N" s7="NULL" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="NULL" s2="Current" s3="String" s11="FALSE" s7="NULL"/>
														</row>
														<row s0="Selection_Group" s1="PromotionCallbackIntl" s2="Call back Int&apos;l Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L06">
														<row s0="Activation_Checkbox" s1="IsVOIP" s2="Integrated VoIP" s3="Number" s5="N" s6="N" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Input_Box" s1="VOIPUnitPrice" s2="NULL" s3="Number" s5="N" s6="Y" s7="0.020" s9="CommitMins,CommitUnitPrice" s10="return p[&apos;CommitUnitPrice&apos;];" s11="FALSE" s13="Unitprice" s16="Min"/>
														<row s0="Selection_Group" s1="PromotionVoip" s2="Integrated VoIP Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L07">
														<row s0="Activation_Checkbox" s1="IsIntlFreephone" s2="Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="1" s9="IsCallinToll,IsCallinTollfree,IsIntlFreephone" s10="if(!(o[&apos;IsCallinToll&apos;].checked||o[&apos;IsCallinTollfree&apos;].checked) &amp;&amp; o[&apos;IsIntlFreephone&apos;].checked) {alert(A5); o[&apos;IsIntlFreephone&apos;].checked =false;} if(!o[&apos;IsCallinToll&apos;].checked &amp;&amp; o[&apos;IsCallinTollfree&apos;].checked&amp;&amp;o[&apos;IsIntlFreephone&apos;].checked){pt(A7); if(c_tp(&apos;OfferName&apos;).value!=&apos;MC+US Toll Call in+VoIP USD&apos;) {o[&apos;IsCallinTollfree&apos;].checked = false; o[&apos;IsIntlFreephone&apos;].checked = false;}}" s11="TRUE" s13="Normal" s16="Min"/>
														<row s0="Selection_Group" s1="Intl Rate Plan" s2="NULL" s3="Number" s5="N" s6="Y" s7="2" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Min">
															<row s0="Selection_Option" s1="2" s2="Current" s3="Number" s11="FALSE" s7="2"/>
															<row s0="Selection_Option" s1="1" s2="Flat USD 0.25&quot;/min&quot;" s3="Number" s11="FALSE" s7="2"/>
															<row s0="Selection_Option" s1="3" s2="Custom" s3="Number" s11="FALSE" s7="2"/>
														</row>
														<row s0="Selection_Group" s1="PromotionIntlFreephone" s2="Global Toll and Toll free Call in Promo" s3="String" s5="N" s6="Y" s7="None" s9="NULL" s10="NULL" s11="FALSE" s13="Promo" s16="Min">
															<row s0="Selection_Option" s1="None" s2="None" s3="String" s11="FALSE" s7="None"/>
															<row s0="Selection_Option" s1="First Month Free" s2="1st Mo Free" s3="String" s11="FALSE" s7="None"/>
														</row>
													</line>
													<line Number="L08">
														<row s0="Input_Box" s1="IntlFreephoneUnitPrice" s2="Custom Price for Global Toll and Toll free Call in" s3="Number" s5="N" s6="Y" s7="0.250" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Min"/>
													</line>
													<line Number="L09">
														<row s0="Activation_Checkbox" s1="IsABC" s2="Audio Broadcast" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
													<line Number="L10">
														<row s0="Input_Box" s1="ABCPrice01" s2="1-25 Attendees" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L11">
														<row s0="Input_Box" s1="ABCPrice02" s2="26-99 Attendees" s3="Number" s5="N" s6="Y" s7="50" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L12">
														<row s0="Input_Box" s1="ABCPrice03" s2="100-249 Attendees" s3="Number" s5="N" s6="Y" s7="100" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L13">
														<row s0="Input_Box" s1="ABCPrice04" s2="250-499 Attendees" s3="Number" s5="N" s6="Y" s7="180" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L14">
														<row s0="Input_Box" s1="ABCPrice05" s2="500-999 Attendees" s3="Number" s5="N" s6="Y" s7="340" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L15">
														<row s0="Input_Box" s1="ABCPrice06" s2="1000-2999 Attendees" s3="Number" s5="N" s6="Y" s7="960" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L16">
														<row s0="Input_Box" s1="ABCPrice07" s2="&gt; 3000 Attendees" s3="Number" s5="N" s6="Hidden" s7="960" s9="ABCPrice06" s10="return p[&apos;ABCPrice06&apos;];" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L17">
														<row s0="Selection_Group" s1="Tel Free Months" s2="Free Commitment" s3="Number" s5="N" s6="Hidden" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo">
															<row s0="Selection_Option" s1="0" s2="0" s3="Number" s11="FALSE" s7="0"/>
															<row s0="Selection_Option" s1="1" s2="1" s3="Number" s11="FALSE" s7="0"/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S14-C43-2" s0="VOIP Committed Mo Charge USD" s1="Charge" s2="No - Selection-Option" s3="Single" s4="No" s5="Next bill date" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L41"/>
											</rows>
										</TranslationTableCtrl>
										<UsageInfo chargeCode="VOIP Committed Mo Charge USD">
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-TOLLFREE@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLBACK-INTL@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CALLIN-DID@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="VOIP@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="AUDIO-BROADCAST@" userAccessCode="$CONTRACTID$"/>
											<access productCode="SMS USD" serviceAccessCode="SMS@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpHost USD" serviceAccessCode="InstantHelpHost@" userAccessCode="$CONTRACTID$"/>
											<access productCode="InstantHelpIncident USD" serviceAccessCode="InstantHelp@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBack@" userAccessCode="$CONTRACTID$"/>
											<access productCode="Teleconference USD" serviceAccessCode="CallMeBackIntl@" userAccessCode="$CONTRACTID$"/>
										</UsageInfo>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S14"/>
											<parameter name="Initial_Term" isPrivate="false" type="number" value="4"/>
											<parameter name="Tel_Initial_Term" description="Initial Term for Telephony" isPrivate="false" type="number" value="1" blisstatus="dirty" labelname="Teleconference Initial Term for Free Month" labelvalue="1"/>
											<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
											<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="TeleDomain"/>
											<parameter name="CancelType" isPrivate="false" type="string" value="Null"/>
											<parameter name="BirthDate" isPrivate="false" type="date" value="2010-06-01T00:00:00"/>
											<parameter name="PreSubsCode" isPrivate="false" type="string" value="Null"/>
											<parameter name="SubsCode" isPrivate="false" type="string" value="Null"/>
											<parameter name="isTelOld2New" isPrivate="false" type="number" value="0"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="S14-h" s0="Parameters_Root" s1="Teleconference USD" s2="Teleconference Services" s5="N">
												<line Number="L01">
													<row s0="Input_Box" s1="Tel_Initial_Term" s2="Teleconference Initial Term for Free Month" s3="Number" s5="N" s6="Hidden" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="S14" s0="Teleconference USD" s1="Sub Offer" s2="No - Only One - Selection-Group" s3="Single" s4="No" s5="Immediately" s6="Replace" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L32"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<offerCondition subCode="Included Teleconference USD" offerCode="Included Teleconference USD" blisActivationType="new" optionalOrder="true" blischecked="false">
									<chargeCondition subCode="Included Teleconference Charge USD" parentCode="Included Teleconference Charge USD" manualActivable="true" blisActivationType="new" description="integrated VOIP and ABC" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C78"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Flat Fee VOIP"/>
														<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="EMEA_VOIP#1" s0="Parameters_Root" s1="Included Teleconference Charge USD" s2="Included Integrated VoIP" s5="N">
													<line Number="L01">
														<row s0="Comments" s1="None" s2="Included Integrated VoIP" s3="String" s5="N" s6="Y" s7="NULL" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="C78-1" s0="Included Teleconference Charge USD" s1="Charge" s2="No" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next effective date - 10 secs" s8="No" s9="NA" s10="Y"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Included Teleconference Charge USD#1" parentCode="Included Teleconference Charge USD" manualActivable="true" blisActivationType="new" description="Callin, VOIP and ABC" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C78"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Flat Fee VOIP"/>
														<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows/>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Included Teleconference for SMB Charge USD" parentCode="Included Teleconference for SMB Charge USD" manualActivable="true" blisActivationType="new" description="Integrated VoIP" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C79"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Integrated VoIP"/>
														<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows/>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Included Teleconference for SMB Charge USD#1" parentCode="Included Teleconference for SMB Charge USD" manualActivable="true" blisActivationType="new" description="US Toll Call-in + Integrated VoIP" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C79"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Integrated VoIP"/>
														<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows/>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Included Teleconference for SMB Charge USD#2" parentCode="Included Teleconference for SMB Charge USD" manualActivable="true" blisActivationType="new" description="UK Toll Call-in + Integrated VoIP" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C79"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Integrated VoIP"/>
														<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows/>
										</TranslationTableCtrl>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="Included Teleconference USD"/>
											<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="ECNH1000" s0="Parameters_Root" s1="Included Teleconference USD" s2="Included Teleconference" s5="N"/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="ECNH1000" s0="Included Teleconference USD" s1="Sub Offer" s2="No - Only One" s3="Single" s4="No" s5="Immediately" s6="Replace" s7="Next bill date - 10 secs" s8="Yes" s9="NA" s10="Y"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<offerCondition subCode="Additional Language USD" offerCode="Additional Language USD" blisActivationType="new" optionalOrder="true" blischecked="false">
									<chargeCondition subCode="Additional Language USD" parentCode="Additional Language Charge USD" manualActivable="false" blisActivationType="new" blischecked="true" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="Language1" description="x1" isPrivate="false" type="number" value="0"/>
														<parameter name="Language2" description="x1" isPrivate="false" type="number" value="0"/>
														<parameter name="Language3" description="x1" isPrivate="false" type="number" value="0"/>
														<parameter name="Language4" description="x1" isPrivate="false" type="number" value="0"/>
														<parameter name="Language5" description="x1" isPrivate="false" type="number" value="0"/>
														<parameter name="Language6" description="x1" isPrivate="false" type="number" value="0"/>
														<parameter name="Language7" description="x1" isPrivate="false" type="number" value="0"/>
														<parameter name="Language8" description="x1" isPrivate="false" type="number" value="0"/>
														<parameter name="LanguageUnitPrice" description="x1" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x1" isPrivate="false" type="string" value="Additional Language USD"/>
														<parameter name="Parameters_Root" description="x1" isPrivate="false" type="string" value="C3"/>
														<parameter name="Language9" isPrivate="false" type="number" value="0"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="Language10" isPrivate="false" type="number" value="0"/>
														<parameter name="Language11" isPrivate="false" type="number" value="0"/>
														<parameter name="Language12" description="x1" isPrivate="false" type="number" value="0"/>
														<parameter name="Language13" description="x1" isPrivate="false" type="number" value="0"/>
														<parameter name="Language14" description="x1" isPrivate="false" type="number" value="0"/>
														<parameter name="Language15" description="x1" isPrivate="false" type="number" value="0"/>
														<parameter name="Language16" description="x1" isPrivate="false" type="number" value="0"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows/>
										</TranslationTableCtrl>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="Additional Language USD"/>
											<parameter name="Language1" isPrivate="false" type="number" value="0"/>
											<parameter name="Language2" isPrivate="false" type="number" value="0"/>
											<parameter name="Language3" isPrivate="false" type="number" value="0"/>
											<parameter name="Language4" isPrivate="false" type="number" value="0"/>
											<parameter name="Language5" isPrivate="false" type="number" value="0"/>
											<parameter name="Language6" isPrivate="false" type="number" value="0"/>
											<parameter name="Language7" isPrivate="false" type="number" value="0"/>
											<parameter name="Language8" isPrivate="false" type="number" value="0"/>
											<parameter name="LanguageUnitPrice" isPrivate="false" type="number" value="0"/>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S3"/>
											<parameter name="Language9" isPrivate="false" type="number" value="0"/>
											<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
											<parameter name="Language10" isPrivate="false" type="number" value="0"/>
											<parameter name="Language11" isPrivate="false" type="number" value="0"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
											<parameter name="Language12" isPrivate="false" type="number" value="0"/>
											<parameter name="Language13" isPrivate="false" type="number" value="0"/>
											<parameter name="Language14" isPrivate="false" type="number" value="0"/>
											<parameter name="Language15" description="" isPrivate="false" type="number" value="0"/>
											<parameter name="Language16" description="" isPrivate="false" type="number" value="0"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="S3-1" s0="Parameters_Root" s1="Additional Language USD" s2="Additional Language" s5="N">
												<line Number="L01">
													<row s0="Input_Box" s1="LanguageUnitPrice" s2="Each Language" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="Each"/>
												</line>
												<line Number="L02">
													<row s0="Activation_Checkbox" s1="Language1" s2="English" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L03">
													<row s0="Activation_Checkbox" s1="Language7" s2="Chinese Simplified" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L04">
													<row s0="Activation_Checkbox" s1="Language8" s2="Chinese Traditional" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L05">
													<row s0="Activation_Checkbox" s1="Language15" s2="Danish" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L06">
													<row s0="Activation_Checkbox" s1="Language13" s2="Dutch" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L07">
													<row s0="Activation_Checkbox" s1="Language12" s2="European Spanish" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L08">
													<row s0="Activation_Checkbox" s1="Language2" s2="French" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L09">
													<row s0="Activation_Checkbox" s1="Language3" s2="German" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L10">
													<row s0="Activation_Checkbox" s1="Language11" s2="Italian" s3="Number" s5="N" s6="Y" s7="NULL" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L11">
													<row s0="Activation_Checkbox" s1="Language5" s2="Japanese" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L12">
													<row s0="Activation_Checkbox" s1="Language6" s2="Korean" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L13">
													<row s0="Activation_Checkbox" s1="Language9" s2="Latin American Spanish" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L14">
													<row s0="Activation_Checkbox" s1="Language10" s2="Portuguese" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L15">
													<row s0="Activation_Checkbox" s1="Language14" s2="Russian" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L16">
													<row s0="Activation_Checkbox" s1="Language4" s2="Swedish" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
												<line Number="L17">
													<row s0="Activation_Checkbox" s1="Language16" s2="Turkish" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="S3-1" s0="Additional Language USD" s1="Sub Offer" s2="No" s3="Single" s4="No" s5="Immediately" s6="Replace" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L43"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<offerCondition subCode="Additional Site USD" offerCode="Additional Site USD" blisActivationType="new" optionalOrder="true" blischecked="false">
									<chargeCondition subCode="Service Setup USD" parentCode="Service Setup Charge USD" manualActivable="false" blisActivationType="new" description="Addtional Site" blischecked="true" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="SetupUnitPrice" description="S" isPrivate="false" type="number" value="0"/>
														<parameter name="InstallmentMonths" description="S" isPrivate="false" type="number" value="1"/>
														<parameter name="OfferName" description="S" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="S" isPrivate="false" type="string" value="C8"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Setup"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S12-C8-1" s0="Parameters_Root" s1="Service Setup Charge USD" s2="Additional Site" s5="N">
													<line Number="L01">
														<row s0="Input_Box" s1="SetupUnitPrice" s2="Additional Site Setup " s3="Number" s5="N" s6="Hidden" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice"/>
													</line>
													<line Number="L02">
														<row s0="Comments" s1="Null" s2="Additional Site Setup" s3="String" s5="N" s6="Y" s7="NULL" s9="NULL" s10="NULL" s11="TRUE" s13="Normal"/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S12-C8-1" s0="Service Setup Charge USD - Additional Site" s1="Charge" s2="Yes" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L01"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="Additional Site USD"/>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S12"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="S12" s0="Additional Site USD" s1="Sub Offer" s2="No" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L48"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<chargeCondition subCode="API Charge USD" parentCode="API Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="OfferName" description="generic name" isPrivate="false" type="string" value="Any Top Offer USD"/>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="C36"/>
													<parameter name="SelectedAPIService" description="1 - &quot;Basic URL&quot;, 2 - &quot;Premium URL&quot;, 3 - &quot;Basic URL and XML&quot;, 4 - &quot;Premium URL and XML&quot;" isPrivate="false" type="number" value="1"/>
													<parameter name="UnitPrice" isPrivate="false" type="number" value="300"/>
													<parameter name="QTY" isPrivate="false" type="number" value="1"/>
													<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="C36-1" s0="Parameters_Root" s1="API Charge USD" s2="API Support" s5="N">
												<line Number="L01">
													<row s0="Selection_Group" s1="SelectedAPIService" s2="NULL" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="FALSE" s13="Normal">
														<row s0="Selection_Option" s1="1" s2="Basic URL Support and Maint." s3="Number" s11="FALSE" s7="1"/>
														<row s0="Selection_Option" s1="2" s2="Premium URL Support and Maint." s3="Number" s11="FALSE" s7="1"/>
														<row s0="Selection_Option" s1="3" s2="XML &amp; Basic URL Support and Maint." s3="Number" s11="FALSE" s7="1"/>
														<row s0="Selection_Option" s1="4" s2="XML &amp; Premium URL Support and Maint." s3="Number" s11="FALSE" s7="1"/>
													</row>
													<row s0="Input_Box" s1="UnitPrice" s2="Monthly Support and Maint." s3="Number" s5="N" s6="Y" s7="200" s9="SelectedAPIService" s10="var q=p[&apos;SelectedAPIService&apos;]; if(p[&apos;ACTarget&apos;]==&apos;SelectedAPIService&apos;) { if(q==1) return 200;if(q==2) return 300;if(q==3) return 300;if(q==4) return 400; return 400;}" s11="TRUE" s13="Extprice"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="C36-1" s0="API Charge USD" s1="Charge" s2="No" s3="Single" s4="Yes" s5="Next bill date" s6="Replace" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L49"/>
										</rows>
									</TranslationTableCtrl>
								</chargeCondition>
								<offerCondition subCode="API Test Site USD" offerCode="API Test Site USD" blisActivationType="new" optionalOrder="true" blischecked="false">
									<chargeCondition subCode="One-time with Recurring 1 USD#1" parentCode="One-time with Recurring Charge USD" manualActivable="false" blisActivationType="new" blischecked="true" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="OnetimeUnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="RecurringUnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C4"/>
														<parameter name="OnetimeCIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="RecurringCIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S6-C4-1" s0="Parameters_Root" s1="One-time with Recurring Charge USD" s2="API Test Site" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S6-C4-1-1" s0="Input_Box" s1="OnetimeUnitPrice" s2="Setup " s3="Number" s4="S6-C4-1" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Extprice" s14="" s15="" s16=""/>
													</line>
													<line Number="L02">
														<row i0="S6-C4-1-2" s0="Input_Box" s1="RecurringUnitPrice" s2="Monthly Maintenance" s3="Number" s4="S6-C4-1" s5="N" s6="Y" s7="250" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L02" s13="Extprice" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S6-C4-1" s0="One-time with Recurring Charge USD" s1="Charge" s2="Yes" s3="Multiple" s4="Yes - Multiple" s5="Next bill date" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L62"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="API Test Site USD"/>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S6"/>
											<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="S6" s0="API Test Site USD" s1="Sub Offer" s2="No" s3="Single" s4="No" s5="Immediately" s6="Yes" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L51"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<chargeCondition subCode="Generic One-time Charge USD" parentCode="Generic One-time Charge USD" manualActivable="true" blisActivationType="new" description="API Activation" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="C37"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="Null"/>
													<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
													<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="QTY" isPrivate="false" type="number" value="0"/>
													<parameter name="Number1" isPrivate="false" type="number" value="0"/>
													<parameter name="Number2" isPrivate="false" type="number" value="0"/>
													<parameter name="Number3" isPrivate="false" type="number" value="0"/>
													<parameter name="Number4" isPrivate="false" type="number" value="0"/>
													<parameter name="Number5" isPrivate="false" type="number" value="0"/>
													<parameter name="String1" isPrivate="false" type="string" value="Null"/>
													<parameter name="String2" isPrivate="false" type="string" value="Null"/>
													<parameter name="String3" isPrivate="false" type="string" value="Null"/>
													<parameter name="String4" isPrivate="false" type="string" value="Null"/>
													<parameter name="String5" isPrivate="false" type="string" value="Null"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="C37-3" s0="Parameters_Root" s1="Generic One-time Charge USD" s2="API Activation" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
												<line Number="L01">
													<row i0="C37-3-1" s0="Input_Box" s1="UnitPrice" s2="API Activation Fee " s3="Number" s4="C37-3" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Extprice" s14="" s15="" s16=""/>
													<row i0="C37-3-2" s0="Input_Box" s1="QTY" s2="API Activation Fee " s3="Number" s4="C37-3" s5="N" s6="Hidden" s7="1" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Quantity" s14="" s15="" s16=""/>
												</line>
												<line Number="L02">
													<row i0="C37-3-5" s0="Selection_Group" s1="CIName" s2="Activation Type" s3="String" s4="C37-3" s5="N" s6="Y" s7="- Select one -" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L02" s13="Normal" s14="" s15="" s16="">
														<row i0="C37-3-5-1" s0="Selection_Option" s1="unknown" s2="Select One" s3="String" s4="C37-3-5" s5="Y" s6="NULL" s7="- Select one -" s8="I" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
														<row i0="C37-3-5-2" s0="Selection_Option" s1="URL API site activation" s2="URL API site activation" s3="String" s4="C37-3-5" s5="NULL" s6="NULL" s7="- Select one -" s8="I" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
														<row i0="C37-3-5-3" s0="Selection_Option" s1="XML and URL API site activation" s2="XML and URL API site activation" s3="String" s4="C37-3-5" s5="NULL" s6="NULL" s7="- Select one -" s8="I" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
														<row i0="C37-3-5-4" s0="Selection_Option" s1="Client SDK" s2="Client SDK" s3="String" s4="C37-3-5" s5="NULL" s6="NULL" s7="- Select one -" s8="I" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
													</row>
												</line>
												<line Number="L03">
													<row i0="C37-3-3" s0="Input_Box" s1="String1" s2="Partner" s3="String" s4="C37-3" s5="N" s6="Y" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L03" s13="Normal" s14="" s15="" s16=""/>
												</line>
												<line Number="L04">
													<row i0="C37-3-4" s0="Input_Box" s1="String2" s2="Application" s3="String" s4="C37-3" s5="N" s6="Y" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L04" s13="Normal" s14="" s15="" s16=""/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="C37-3" s0="Generic One-time Charge USD" s1="Charge" s2="Yes" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L54"/>
										</rows>
									</TranslationTableCtrl>
								</chargeCondition>
								<chargeCondition subCode="Meeting Assist Charge USD" parentCode="Meeting Assist Charge USD" manualActivable="false" blisActivationType="new" blischecked="true" creditor="WebEx USD" activationCode="Meeting Assist Charge USD#Trial-1472196873916-10">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="C39"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="MeetingAssistUsage USD"/>
													<parameter name="CIName" isPrivate="false" type="string" value="Standard"/>
													<parameter name="Comment" isPrivate="false" type="string" value="Null"/>
													<parameter name="QTY" isPrivate="false" type="number" value="1"/>
													<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="Has12100" isPrivate="false" type="number" value="0" blisstatus="dirty" labelname="Meeting/Training Assist - Standard (Obsolete)" labelvalue="0"/>
													<parameter name="Has12101" isPrivate="false" type="number" value="1" blisstatus="dirty" labelname="Meeting/Training Assist - Premium" labelvalue="1"/>
													<parameter name="Has12102" description="obsolete" isPrivate="false" type="number" value="0"/>
													<parameter name="Price12100" isPrivate="false" type="number" value="149.000" blisstatus="dirty" labelname="NULL" labelvalue="149.000"/>
													<parameter name="Price12101" isPrivate="false" type="number" value="500.000" blisstatus="dirty" labelname="NULL" labelvalue="500.000"/>
													<parameter name="Price12102" isPrivate="false" type="number" value="199"/>
													<parameter name="CommitAssists" isPrivate="false" type="number" value="0" blisstatus="dirty" labelname="Mo Commitment (Obsolete)" labelvalue="0"/>
													<parameter name="CommitType" isPrivate="false" type="string" value="Null" blisstatus="dirty" labelname="Mo Committed Type (Obsolete)" labelvalue="None"/>
													<parameter name="CommitPrice" isPrivate="false" type="number" value="0" blisstatus="dirty" labelname="Committed Price" labelvalue="0"/>
													<parameter name="IsPrepaid" description="1: yes, 0: no" isPrivate="false" type="number" value="0"/>
													<parameter name="SplitBy" description="just a place holder" isPrivate="false" type="string" value="TrackingCode1"/>
													<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													<parameter name="ExtrHrPrice" isPrivate="false" type="number" value="250.000" blisstatus="dirty" labelname="Additional Hour" labelvalue="250.000"/>
													<parameter name="HasExtrHr" isPrivate="false" type="number" value="1" blisstatus="dirty" labelname="Additional Hours" labelvalue="1"/>
													<parameter name="Copy2CDPrice" isPrivate="false" type="number" value="100.000" blisstatus="dirty" labelname="Copy to CD" labelvalue="100.000"/>
													<parameter name="HasCopy2CD" isPrivate="false" type="number" value="0" blisstatus="dirty" labelname="Recording of Event on Compact Disk (Obsolete)" labelvalue="0"/>
													<parameter name="Meeting_Flag" description="" isPrivate="false" type="number" value="0"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="C39-2" s0="Parameters_Root" s1="Meeting Assist Charge USD" s2="Meeting/Training Assist" s5="Y">
												<line Number="L01">
													<row s0="Activation_Checkbox" s1="Has12100" s2="Meeting/Training Assist - Standard (Obsolete)" s3="Number" s5="N" s6="Y" s7="0" s9="Has12100" s10="if(o[&apos;Has12100&apos;].checked){var a=con(&apos;The service already have been Obsoleted,do you still want to check it.&apos;); if(a==false || a==&apos;false&apos;){o[&apos;Has12100&apos;].checked=false;} }  " s11="TRUE" s13="Normal" s16="Each"/>
													<row s0="Input_Box" s1="Price12100" s2="NULL" s3="Number" s5="N" s6="Y" s7="149.000" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Each"/>
												</line>
												<line Number="L02">
													<row s0="Activation_Checkbox" s1="Has12101" s2="Meeting/Training Assist - Premium" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Normal" s16="Each"/>
													<row s0="Input_Box" s1="Price12101" s2="NULL" s3="Number" s5="N" s6="Y" s7="500.000" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Each"/>
												</line>
												<line Number="L03">
													<row s0="Activation_Checkbox" s1="HasExtrHr" s2="Additional Hours" s3="Number" s5="N" s6="Y" s7="1" s9="Has12100,Has12101" s10="var hasStd = o[&apos;Has12100&apos;].checked; var hasPrem = o[&apos;Has12101&apos;].checked; if (hasStd || hasPrem) o[&apos;HasExtrHr&apos;].checked = true; else o[&apos;HasExtrHr&apos;].checked = false;" s11="TRUE" s13="Normal" s16="Hour"/>
													<row s0="Input_Box" s1="ExtrHrPrice" s2="Additional Hour" s3="Number" s5="N" s6="Y" s7="250.000" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Hour"/>
												</line>
												<line Number="L04">
													<row s0="Activation_Checkbox" s1="HasCopy2CD" s2="Recording of Event on Compact Disk (Obsolete)" s3="Number" s5="N" s6="Y" s7="0" s9="HasCopy2CD" s10="if(o[&apos;HasCopy2CD&apos;].checked){var a=con(&apos;The service already have been Obsoleted,do you still want to check it.&apos;); if(a==false || a==&apos;false&apos;){o[&apos;HasCopy2CD&apos;].checked=false;} } " s11="TRUE" s13="Normal" s16="Each"/>
													<row s0="Input_Box" s1="Copy2CDPrice" s2="Copy to CD" s3="Number" s5="N" s6="Y" s7="100.000" s9="NULL" s10="NULL" s11="FALSE" s13="Unitprice" s16="Each"/>
												</line>
												<line Number="L05">
													<row s0="Selection_Group" s1="CommitType" s2="Mo Committed Type (Obsolete)" s3="String" s5="N" s6="Y" s7="Null" s9="CommitType,Has12100,Has12101" s10="if(p[&apos;ACTarget&apos;]==&apos;CommitType&apos;)      { if((o[&apos;CommitType&apos;].value == &apos;Commit12100&apos;)||(o[&apos;CommitType&apos;].value == &apos;Commit12101&apos;)){var a=con(&apos;The service already have been Obsoleted,do you still want to check it.&apos;); if(a==false || a==&apos;false&apos;){o[&apos;CommitType&apos;].value = &apos;Null&apos;;}}}if((!o[&apos;Has12100&apos;].checked)&amp;&amp;(o[&apos;CommitType&apos;].value == &apos;Commit12100&apos;)){alert(&apos;Please check Meeting/Training/Sales Assist - Standard before specifying commitment!&apos; );o[&apos;CommitType&apos;].value = &apos;Null&apos;;} if((!o[&apos;Has12101&apos;].checked)&amp;&amp;(o[&apos;CommitType&apos;].value == &apos;Commit12101&apos;)){alert(&apos;Please check  Meeting/Training/Sales Assist - Premium before specifying commitment!&apos; );o[&apos;CommitType&apos;].value = &apos;Null&apos;;}" s11="TRUE" s13="Normal">
														<row s0="Selection_Option" s1="Null" s2="None" s3="String" s11="FALSE" s7="Null"/>
														<row s0="Selection_Option" s1="Commit12100" s2="Meeting/Training Assist - Standard" s3="String" s11="FALSE" s7="Null"/>
														<row s0="Selection_Option" s1="Commit12101" s2="Meeting/Training Assist - Premium" s3="String" s11="FALSE" s7="Null"/>
													</row>
												</line>
												<line Number="L06">
													<row s0="Input_Box" s1="CommitAssists" s2="Mo Commitment (Obsolete)" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Assist"/>
													<row s0="Input_Box" s1="CommitPrice" s2="Committed Price" s3="Number" s5="N" s6="Y" s7="0" s9="CommitType" s10="var q=p[&apos;CommitType&apos;]; if(p[&apos;ACTarget&apos;]==&apos;CommitType&apos;) { if(q==&apos;Commit12100&apos;) return p[&apos;Price12100&apos;];if(q==&apos;Commit12101&apos;) return p[&apos;Price12101&apos;];return 0;}" s11="FALSE" s13="Unitprice" s16="Assist"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="C39-1" s0="Meeting Assist Charge USD" s1="Charge" s2="Yes" s3="Single" s4="Yes" s5="Next bill date" s6="Replace" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L58"/>
										</rows>
									</TranslationTableCtrl>
									<UsageInfo chargeCode="Meeting Assist Charge USD">
										<access productCode="People Service USD" serviceAccessCode="ASSIST@" userAccessCode="$CONTRACTID$"/>
									</UsageInfo>
									<TrailRunResultItem>
										<transac amount="USD 1000000000000.000000" creditor="WebEx USD" debtor="ID-OSS-312536" offerCode="MC Named Hosts Pro USD" subscriptionCode="MCxxx-xx175516-001" chargeCode="Meeting Assist Charge USD#Trial-1472196873916-10" origin="0" date="2017-09-26T23:59:51" label="Meeting/Training Assist - Premium" relationshipType="client" operationType="debit" chargeConditionCode="Meeting Assist Charge USD" serviceTag="MC Named Hosts" blisCurrency="USD" blisExtended="" chargeFrequence="1">
											<detail name="computed.CIName3" type="string" value="Premium"/>
											<detail name="parameter.CommitType" type="string" value="Null"/>
											<detail name="parameter.Service_Tag" type="string" value="MC Named Hosts"/>
											<detail name="computed.TRANSACTION_TYPE" type="string" value="NULL"/>
											<detail name="computed.JobType" type="decimal" value="1"/>
											<detail name="parameter.Copy2CDPrice" type="decimal" value="100"/>
											<detail name="parameter.Comment" type="string" value="Null"/>
											<detail name="parameter.Prepay_Term" type="decimal" value="1"/>
											<detail name="item.JOBID" type="decimal" value="1000"/>
											<detail name="parameter.Price12101" type="decimal" value="500"/>
											<detail name="parameter.OfferName" type="string" value="MeetingAssistUsage USD"/>
											<detail name="default.consumption_date" type="date" value="2017-09-26T23:59:51"/>
											<detail name="item.JOBNAME" type="string" value="TrialRun Fake EDR"/>
											<detail name="item.JOBSKU" type="string" value="WX12101"/>
											<detail name="computed.QTY" type="decimal" value=""/>
											<detail name="default.agreement_creation_date" type="date" value="2016-08-27T00:00:00"/>
											<detail name="parameter.HasCopy2CD" type="decimal" value="0"/>
											<detail name="parameter.QTY" type="decimal" value="1"/>
											<detail name="default.access_login" type="string" value="11"/>
											<detail name="counter_pre.RemainingAssists" type="decimal" value="0"/>
											<detail name="computed.LIST_PRICE" type="decimal" value="500.0"/>
											<detail name="parameter.HasExtrHr" type="decimal" value="1"/>
											<detail name="item.JOBOWNER" type="string" value="JERRY Ding"/>
											<detail name="parameter.IsPrepaid" type="decimal" value="0"/>
											<detail name="computed.SplitCriteria" type="string" value="115558888"/>
											<detail name="parameter.Has12102" type="decimal" value="0"/>
											<detail name="parameter.Price12102" type="decimal" value="199"/>
											<detail name="default.ci_name" type="string" value="People Service"/>
											<detail name="parameter.Parameters_Root" type="string" value="C39-1"/>
											<detail name="item.JOB_STARTTIME" type="date" value="2017-09-27T00:09:51"/>
											<detail name="item.REFID" type="decimal" value="1000"/>
											<detail name="parameter.CommitAssists" type="decimal" value="0"/>
											<detail name="parameter.UnitPrice" type="decimal" value="0"/>
											<detail name="computed.SKUID" type="string" value="WX12101"/>
											<detail name="default.price_plan_name" type="string" value="MeetingAssist Usage"/>
											<detail name="item.JOBDESCRIPTION" type="string" value="FAKE JOBCOMPLETION EDR"/>
											<detail name="computed.UNIT_PRICE" type="decimal" value="500.0"/>
											<detail name="item.CONTRACTID" type="decimal" value="1200"/>
											<detail name="computed.CmtType" type="decimal" value="99999"/>
											<detail name="item.JOBQTY" type="decimal" value="2000000000"/>
											<detail name="parameter.CIName" type="string" value="Standard"/>
											<detail name="default.product_code" type="string" value="People Service USD"/>
											<detail name="default.service_identifier" type="string" value="ASSIST@11"/>
											<detail name="counter.Month Counter" type="decimal" value="15"/>
											<detail name="computed.LIST_PRICE_TYPE" type="string" value="STATIC"/>
											<detail name="counter.RemainingAssists" type="decimal" value="0"/>
											<detail name="parameter.Price12100" type="decimal" value="149"/>
											<detail name="parameter.ExtrHrPrice" type="decimal" value="250"/>
											<detail name="computed.CIName2" type="string" value="Premium"/>
											<detail name="item.TRACKINGCODE1" type="string" value="115558888"/>
											<detail name="tax.vat.ratecode" type="string" value="0"/>
											<detail name="counter_pre.Month Counter" type="decimal" value="15"/>
											<detail name="parameter.Has12100" type="decimal" value="0"/>
											<detail name="parameter.Meeting_Flag" type="decimal" value="0"/>
											<detail name="parameter.SplitBy" type="string" value="TrackingCode1"/>
											<detail name="parameter.CommitPrice" type="decimal" value="0"/>
											<detail name="computed.QTY_TYPE" type="string" value="RUNTIME"/>
											<detail name="parameter.Has12101" type="decimal" value="1"/>
											<detail name="computed.SKU_DESCRIPTION" type="string" value="Meeting/Training Assist - Premium"/>
											<detail name="item.JOB_ENDTIME" type="date" value="5820-05-21T21:29:51"/>
											<detail name="computed.TypeDiff" type="decimal" value="-99998"/>
											<detail name="computed.SKU_LOCATION" type="string" value="NULL"/>
											<detail name="computed.CIName" type="string" value="Premium"/>
											<detail name="computed.EXT_PRICE" value=""/>
											<AdditionSKUInfo RATINGCHARGETYPE="Usage" COMPONENTNAME="Meeting/Training Assist - Premium" RATINGMODELNAME="Pay-per-Job2" SKUTYPE="Meeting Assist" COMPONENTID="351" BASEPRICE="500" CHAREGEFREQUENCY="Daily" UOMCODE="Each" SKUID="WX12101" RATINGMODELID="20" COMPONENTTYPEID="22"/>
											<OrderItemBooking/>
										</transac>
										<transac amount="USD 500000000000.000000" creditor="WebEx USD" debtor="ID-OSS-312536" offerCode="MC Named Hosts Pro USD" subscriptionCode="MCxxx-xx175516-001" chargeCode="Meeting Assist Charge USD#Trial-1472196873916-10" origin="0" date="2017-09-26T23:59:51" label="Additional Hours" relationshipType="client" operationType="debit" chargeConditionCode="Meeting Assist Charge USD" serviceTag="MC Named Hosts" blisCurrency="USD" blisExtended="" chargeFrequence="1">
											<detail name="computed.CIName3" type="string" value="Additional Hours"/>
											<detail name="parameter.CommitType" type="string" value="Null"/>
											<detail name="parameter.Service_Tag" type="string" value="MC Named Hosts"/>
											<detail name="computed.TRANSACTION_TYPE" type="string" value="NULL"/>
											<detail name="computed.JobType" type="decimal" value="3"/>
											<detail name="parameter.Copy2CDPrice" type="decimal" value="100"/>
											<detail name="parameter.Comment" type="string" value="Null"/>
											<detail name="parameter.Prepay_Term" type="decimal" value="1"/>
											<detail name="item.JOBID" type="decimal" value="1000"/>
											<detail name="parameter.Price12101" type="decimal" value="500"/>
											<detail name="parameter.OfferName" type="string" value="MeetingAssistUsage USD"/>
											<detail name="default.consumption_date" type="date" value="2017-09-26T23:59:51"/>
											<detail name="item.JOBNAME" type="string" value="TrialRun Fake EDR"/>
											<detail name="item.JOBSKU" type="string" value="WX12763"/>
											<detail name="computed.QTY" type="decimal" value=""/>
											<detail name="default.agreement_creation_date" type="date" value="2016-08-27T00:00:00"/>
											<detail name="parameter.HasCopy2CD" type="decimal" value="0"/>
											<detail name="parameter.QTY" type="decimal" value="1"/>
											<detail name="default.access_login" type="string" value="11"/>
											<detail name="counter_pre.RemainingAssists" type="decimal" value="0"/>
											<detail name="computed.LIST_PRICE" type="decimal" value="250.0"/>
											<detail name="parameter.HasExtrHr" type="decimal" value="1"/>
											<detail name="item.JOBOWNER" type="string" value="JERRY Ding"/>
											<detail name="parameter.IsPrepaid" type="decimal" value="0"/>
											<detail name="computed.SplitCriteria" type="string" value="115558888"/>
											<detail name="parameter.Has12102" type="decimal" value="0"/>
											<detail name="parameter.Price12102" type="decimal" value="199"/>
											<detail name="default.ci_name" type="string" value="People Service"/>
											<detail name="parameter.Parameters_Root" type="string" value="C39-1"/>
											<detail name="item.JOB_STARTTIME" type="date" value="2017-09-27T00:09:51"/>
											<detail name="item.REFID" type="decimal" value="1000"/>
											<detail name="parameter.CommitAssists" type="decimal" value="0"/>
											<detail name="parameter.UnitPrice" type="decimal" value="0"/>
											<detail name="computed.SKUID" type="string" value="WX12763"/>
											<detail name="default.price_plan_name" type="string" value="MeetingAssist Usage"/>
											<detail name="item.JOBDESCRIPTION" type="string" value="FAKE JOBCOMPLETION EDR"/>
											<detail name="computed.UNIT_PRICE" type="decimal" value="250.0"/>
											<detail name="item.CONTRACTID" type="decimal" value="1200"/>
											<detail name="computed.CmtType" type="decimal" value="99999"/>
											<detail name="item.JOBQTY" type="decimal" value="2000000000"/>
											<detail name="parameter.CIName" type="string" value="Standard"/>
											<detail name="default.product_code" type="string" value="People Service USD"/>
											<detail name="default.service_identifier" type="string" value="ASSIST@11"/>
											<detail name="counter.Month Counter" type="decimal" value="15"/>
											<detail name="computed.LIST_PRICE_TYPE" type="string" value="STATIC"/>
											<detail name="counter.RemainingAssists" type="decimal" value="0"/>
											<detail name="parameter.Price12100" type="decimal" value="149"/>
											<detail name="parameter.ExtrHrPrice" type="decimal" value="250"/>
											<detail name="computed.CIName2" type="string" value="Additional Hours"/>
											<detail name="item.TRACKINGCODE1" type="string" value="115558888"/>
											<detail name="tax.vat.ratecode" type="string" value="0"/>
											<detail name="counter_pre.Month Counter" type="decimal" value="15"/>
											<detail name="parameter.Has12100" type="decimal" value="0"/>
											<detail name="parameter.Meeting_Flag" type="decimal" value="0"/>
											<detail name="parameter.SplitBy" type="string" value="TrackingCode1"/>
											<detail name="parameter.CommitPrice" type="decimal" value="0"/>
											<detail name="computed.QTY_TYPE" type="string" value="STATIC"/>
											<detail name="parameter.Has12101" type="decimal" value="1"/>
											<detail name="computed.SKU_DESCRIPTION" type="string" value="Additional Hours"/>
											<detail name="item.JOB_ENDTIME" type="date" value="5820-05-21T21:29:51"/>
											<detail name="computed.TypeDiff" type="decimal" value="-99996"/>
											<detail name="computed.SKU_LOCATION" type="string" value="NULL"/>
											<detail name="computed.CIName" type="string" value="Additional Hours"/>
											<detail name="computed.EXT_PRICE" value=""/>
											<AdditionSKUInfo RATINGCHARGETYPE="Usage" COMPONENTNAME="Additional Hours" RATINGMODELNAME="Pay-per-Job2" SKUTYPE="Meeting Assist" COMPONENTID="2550" BASEPRICE="250" CHAREGEFREQUENCY="Daily" UOMCODE="Hour" SKUID="WX12763" RATINGMODELID="20" COMPONENTTYPEID="22"/>
											<OrderItemBooking/>
										</transac>
									</TrailRunResultItem>
								</chargeCondition>
								<offerCondition subCode="OpChange USD" offerCode="OpChange USD" blisActivationType="new" optionalOrder="true" blischecked="false">
									<chargeCondition subCode="One-time 1 USD#1" parentCode="One-time Charge USD" manualActivable="true" blisActivationType="new" description="Re-Branding" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C5"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="QTY" isPrivate="false" type="number" value="1"/>
														<parameter name="Comment" isPrivate="false" type="string" value="Null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S10-C5-1" s0="Parameters_Root" s1="One-time Charge USD" s2="Re-Branding" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S10-C5-1-1" s0="Input_Box" s1="UnitPrice" s2="Re-Branding " s3="Number" s4="S10-C5-1" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Extprice" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S10-C5-1" s0="One-time Charge USD - Re-Branding" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L61"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="One-time 2 USD#1" parentCode="One-time Charge USD" manualActivable="true" blisActivationType="new" description="Domain Name Change" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C5"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="QTY" isPrivate="false" type="number" value="1"/>
														<parameter name="Comment" isPrivate="false" type="string" value="Null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S10-C5-2" s0="Parameters_Root" s1="One-time Charge USD" s2="Domain Name Change" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S10-C5-2-1" s0="Input_Box" s1="UnitPrice" s2="Domain Name Change " s3="Number" s4="S10-C5-2" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Extprice" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S10-C5-2" s0="One-time Charge USD - Domain Name Change" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L61"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Recurring Charge USD in OpChange USD" parentCode="Recurring Charge USD" manualActivable="true" blisActivationType="new" description="Site Lockdown" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C6"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Qty" isPrivate="false" type="number" value="1"/>
														<parameter name="ExtPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment1" isPrivate="false" type="string" value="Null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S10-C6-1" s0="Parameters_Root" s1="Recurring Charge USD - Site Lockdown" s2="Site Lockdown" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S10-C6-1-3" s0="Input_Box" s1="ExtPrice" s2="Site Lockdown" s3="Number" s4="S10-C6-1" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Extprice" s14="" s15="" s16=""/>
													</line>
													<line Number="L02">
														<row i0="S10-C6-1-4" s0="Input_Box" s1="Comment1" s2="Site URL" s3="String" s4="S10-C6-1" s5="N" s6="Y" s7="NULL" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L02" s13="Normal" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S10-C6-1" s0="Recurring Charge USD - Site Lockdown" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L61"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="OpChange USD"/>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S10"/>
											<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="S10" s0="OpChange USD" s1="Sub Offer" s2="No" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L63"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<offerCondition subCode="PCNow Option USD" offerCode="PCNow Option USD" blisActivationType="new" optionalOrder="true" blischecked="false">
									<chargeCondition subCode="Recurring Charge USD#1" parentCode="Recurring Charge USD" manualActivable="false" blisActivationType="new" description="PCNow Enterprise" blischecked="true" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C6"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Qty" isPrivate="false" type="number" value="1"/>
														<parameter name="ExtPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment1" isPrivate="false" type="string" value="Null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows/>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Recurring Charge USD#1#1" parentCode="Recurring Charge USD" manualActivable="false" blisActivationType="new" description="Complimentary PCNow Enterprise" blischecked="true" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C6"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Qty" isPrivate="false" type="number" value="1"/>
														<parameter name="ExtPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment1" isPrivate="false" type="string" value="Null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows/>
										</TranslationTableCtrl>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S27"/>
											<parameter name="OfferName" isPrivate="false" type="string" value="PCNow Option USD"/>
											<parameter name="Qty" isPrivate="false" type="number" value="10"/>
											<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
											<parameter name="CompQty" isPrivate="false" type="number" value="0"/>
											<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="S27-3" s0="Parameters_Root" s1="PCNow Option USD" s2="Access Anywhere Enterprise USD" s5="N">
												<line Number="L01">
													<row s0="Input_Box" s1="Qty" s2="Access Anywhere Enterprise" s3="Number" s5="N" s6="Y" s7="10" s9="NULL" s10="NULL" s11="FALSE" s13="Quantity" s16="PCs"/>
													<row s0="Input_Box" s1="UnitPrice" s2="Access Anywhere Enterprise" s3="Number" s5="N" s6="N" s7="10.00" s9="Qty,UnitPrice" s10="if(p[&apos;Qty&apos;]&gt;0){return (p[&apos;ExtPrice&apos;]/p[&apos;Qty&apos;]).toFixed(6);}" s11="FALSE" s13="Unitprice" s16="PCs"/>
													<row s0="Input_Box" s1="ExtPrice" s2="Access Anywhere Enterprise" s3="Number" s5="N" s6="Y" s7="100.00" s9="NULL" s10="NULL" s11="TRUE" s13="Extprice" s16="PCs"/>
												</line>
												<line Number="L02">
													<row s0="Input_Box" s1="CompQty" s2="Complimentary Access Anywhere Enterprise" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="PCs"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="S27" s0="PCNow Option USD" s1="Sub Offer" s2="No" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L64"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<chargeCondition subCode="WebEx University Courses Charge USD" parentCode="WebEx University Courses Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameter_Root" isPrivate="false" type="string" value="WebEx_U"/>
													<parameter name="isWUFoundations" isPrivate="false" type="number" value="0"/>
													<parameter name="WUFoundationsPrice" isPrivate="false" type="number" value="2080"/>
													<parameter name="isWUAdvanced" isPrivate="false" type="number" value="0"/>
													<parameter name="WUAdvancedPrice" isPrivate="false" type="number" value="3160"/>
													<parameter name="isCoreServices" isPrivate="false" type="number" value="0"/>
													<parameter name="CoreServicesPrice" isPrivate="false" type="number" value="7320"/>
													<parameter name="isCntLearning" isPrivate="false" type="number" value="0"/>
													<parameter name="CntLearningPrice" isPrivate="false" type="number" value="6240"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="WebEx University Courses USD"/>
													<parameter name="CIName" isPrivate="false" type="string" value="NULL"/>
													<parameter name="isAdditionalHrs" isPrivate="false" type="number" value="0"/>
													<parameter name="isCancellation" isPrivate="false" type="number" value="0"/>
													<parameter name="AdditionalHrsPrice" isPrivate="false" type="number" value="270"/>
													<parameter name="CancelPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows/>
									</TranslationTableCtrl>
									<UsageInfo chargeCode="WebEx University Courses Charge USD">
										<access productCode="People Service USD" serviceAccessCode="PRODWEBEXU@" userAccessCode="$CONTRACTID$"/>
									</UsageInfo>
								</chargeCondition>
								<offerCondition subCode="PSO USD" offerCode="PSO USD" blisActivationType="new" optionalOrder="true" blischecked="false">
									<chargeCondition subCode="One-Time 1 USD" parentCode="One-time Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C5"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="QTY" isPrivate="false" type="number" value="1"/>
														<parameter name="Comment" isPrivate="false" type="string" value="Null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S8-C5-2" s0="Parameters_Root" s1="One-time Charge USD" s2="PSO One-time " s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S8-C5-2-1" s0="Input_Box" s1="UnitPrice" s2="Package" s3="Number" s4="S8-C5-2" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Extprice" s14="" s15="" s16="Each"/>
														<row i0="S8-C5-2-2" s0="Selection_Group" s1="OfferName" s2="PSO One-time " s3="String" s4="S8-C5-2" s5="N" s6="Y" s7="Consulting Service USD" s8="SS" s9="NULL" s10="NULL" s11="FALSE" s12="L01" s13="Normal" s14="" s15="" s16="">
															<row i0="S8-C5-2-2-1" s0="Selection_Option" s1="Custom Package USD" s2="Custom Package" s3="String" s4="S8-C5-2-2" s5="NULL" s6="NULL" s7="Consulting Service USD" s8="O" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
															<row i0="S8-C5-2-2-2" s0="Selection_Option" s1="Single Sign On USD" s2="Single Sign On" s3="String" s4="S8-C5-2-2" s5="NULL" s6="NULL" s7="Consulting Service USD" s8="O" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
														</row>
													</line>
													<line Number="L02">
														<row i0="S8-C5-2-3" s0="Input_Box" s1="Comment" s2="Description" s3="String" s4="S8-C5-2" s5="N" s6="Y" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L02" s13="Normal" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S8-C5-2" s0="One-time Charge USD" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L61"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Pay-per-Job USD in PSO USD" parentCode="Pay-per-Job USD" manualActivable="true" blisActivationType="new" description="Time and Materials" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C17"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="QTY" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment" isPrivate="false" type="string" value="Null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S8-C17-1" s0="Parameters_Root" s1="Pay-per-Job USD" s2="Pay-per-Job - Time and Materials" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S8-C17-1-1" s0="Input_Box" s1="QTY" s2="Job Fee" s3="Number" s4="S8-C17-1" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Quantity" s14="" s15="" s16="Each"/>
														<row i0="S8-C17-1-2" s0="Input_Box" s1="UnitPrice" s2="Unit Price " s3="Number" s4="S8-C17-1" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="FALSE" s12="L01" s13="Unitprice" s14="" s15="" s16=""/>
													</line>
													<line Number="L02">
														<row i0="S8-C17-1-3" s0="Input_Box" s1="Comment" s2="Date-Description (20 chars)" s3="String" s4="S8-C17-1" s5="N" s6="Y" s7="-" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L02" s13="Normal" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S8-C17-1" s0="Pay-per-Job USD - Time and Materials" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L64"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Recurring 1 USD#1" parentCode="Recurring Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C6"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Qty" isPrivate="false" type="number" value="1"/>
														<parameter name="ExtPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment1" isPrivate="false" type="string" value="Null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S8-C6-2" s0="Parameters_Root" s1="Recurring Charge USD" s2="PSO Recurring" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S8-C6-2-1" s0="Input_Box" s1="UnitPrice" s2="Service" s3="Number" s4="S8-C6-2" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Extprice" s14="" s15="" s16="Each"/>
														<row i0="S8-C6-2-2" s0="Selection_Group" s1="OfferName" s2="PSO Recurring" s3="String" s4="S8-C6-2" s5="N" s6="Y" s7="Consulting Service USD" s8="SS" s9="NULL" s10="NULL" s11="FALSE" s12="L01" s13="Normal" s14="" s15="" s16="">
															<row i0="S8-C6-2-2-1" s0="Selection_Option" s1="Custom Package USD" s2="Custom Package" s3="String" s4="S8-C6-2-2" s5="NULL" s6="NULL" s7="Consulting Service USD" s8="O" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
															<row i0="S8-C6-2-2-2" s0="Selection_Option" s1="Single Sign On USD" s2="Single Sign On" s3="String" s4="S8-C6-2-2" s5="NULL" s6="NULL" s7="Consulting Service USD" s8="O" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
														</row>
													</line>
													<line Number="L02">
														<row i0="S8-C6-2-3" s0="Input_Box" s1="Comment1" s2="Description" s3="String" s4="S8-C6-2" s5="N" s6="Y" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L02" s13="Normal" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S8-C6-2" s0="Recurring Charge USD" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Next bill date" s6="Yes" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L70"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="PSO USD"/>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S8"/>
											<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="S8" s0="PSO USD" s1="Sub Offer" s2="No" s3="Single" s4="No" s5="Immediately" s6="Yes" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L67"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<chargeCondition subCode="Recurring Charge USD" parentCode="Recurring Charge USD" manualActivable="true" blisActivationType="new" description="Storage 1GB" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
													<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
													<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C6"/>
													<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
													<parameter name="Qty" isPrivate="false" type="number" value="1"/>
													<parameter name="ExtPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="Comment1" isPrivate="false" type="string" value="Null"/>
													<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="C6-1" s0="Parameters_Root" s1="Storage 1GB" s2="MyFolder Additional Storage" s5="N">
												<line Number="L01">
													<row s0="Input_Box" s1="Qty" s2="Qty" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="FALSE" s13="Quantity" s16="GB"/>
													<row s0="Input_Box" s1="UnitPrice" s2="Storage 1GB" s3="Number" s5="N" s6="Y" s7="12" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="GB"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="C6-1" s0="Storage 1GB" s1="Charge" s2="Yes" s3="Multiple" s4="Yes - Multiple" s5="Next bill date" s6="Yes" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L70"/>
										</rows>
									</TranslationTableCtrl>
								</chargeCondition>
								<chargeCondition subCode="NBR Storage Charge USD" parentCode="NBR Storage Charge USD" manualActivable="true" blisActivationType="new" blischecked="true" creditor="WebEx USD" activationCode="NBR Storage Charge USD#Trial-1472196873916-11">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="C76"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="NBR 2.0 USD"/>
													<parameter name="IndFreeStg" isPrivate="false" type="number" value="10" blisstatus="dirty" labelname="Included Free Storage" labelvalue="10"/>
													<parameter name="CmttMoStgQty" isPrivate="false" type="number" value="5" blisstatus="dirty" labelname="Committed Monthly Storage" labelvalue="5"/>
													<parameter name="CmttMoStgUnitPrice" isPrivate="false" type="number" value="12" blisstatus="dirty" labelname="Committed Monthly Storage" labelvalue="12"/>
													<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
													<parameter name="AdditionalStgUnitPrice" isPrivate="false" type="number" value="12" blisstatus="dirty" labelname="Enable Overage" labelvalue="12"/>
													<parameter name="IsOverage" isPrivate="false" type="number" value="1" blisstatus="dirty" labelname="Enable Overage" labelvalue="1"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													<parameter name="IsSharedSiteNH" isPrivate="false" type="number" value="0"/>
													<parameter name="FedRAMP OfferName" description="" isPrivate="false" type="number" value="0"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="C76-1" s0="Parameters_Root" s1="NBR Storage Charge USD" s2="NBR Storage" s3="NULL" s4="NULL" s5="Y" s6="N" s7="1" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
												<line Number="L01">
													<row i0="C76-1-1" s0="Input_Box" s1="IndFreeStg" s2="Included Free Storage" s3="Number" s4="C76-1" s5="N" s6="Y" s7="1" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Quantity" s14="" s15="" s16="GB"/>
												</line>
												<line Number="L02">
													<row i0="C76-1-2" s0="Input_Box" s1="CmttMoStgQty" s2="Committed Monthly Storage" s3="Number" s4="C76-1" s5="N" s6="Y" s7="0" s8="I" s9="CmttMoStgQty" s10="var q = p[&apos;CmttMoStgQty&apos;]; if(q==0){o[&apos;CmttMoStgUnitPrice&apos;].value=0; o[&apos;AdditionalStgUnitPrice&apos;].value=16;}if(q&gt;0){o[&apos;CmttMoStgUnitPrice&apos;].value=16; o[&apos;AdditionalStgUnitPrice&apos;].value=16;}if(q&gt;=5){o[&apos;CmttMoStgUnitPrice&apos;].value=12; o[&apos;AdditionalStgUnitPrice&apos;].value=12;} if(q&gt;=10){o[&apos;CmttMoStgUnitPrice&apos;].value=10; o[&apos;AdditionalStgUnitPrice&apos;].value=10;} if(q&gt;=20){o[&apos;CmttMoStgUnitPrice&apos;].value=7; o[&apos;AdditionalStgUnitPrice&apos;].value=7;} if(q&gt;=50){o[&apos;CmttMoStgUnitPrice&apos;].value=6; o[&apos;AdditionalStgUnitPrice&apos;].value=6;} if(q&gt;=100){o[&apos;CmttMoStgUnitPrice&apos;].value=4.2; o[&apos;AdditionalStgUnitPrice&apos;].value=4.2;} if(q&gt;=200){o[&apos;CmttMoStgUnitPrice&apos;].value=3; o[&apos;AdditionalStgUnitPrice&apos;].value=3;} if(q&gt;=500){o[&apos;CmttMoStgUnitPrice&apos;].value=2.4; o[&apos;AdditionalStgUnitPrice&apos;].value=2.4;}" s11="TRUE" s12="L02" s13="Quantity" s14="" s15="" s16="GB"/>
													<row i0="C76-1-3" s0="Input_Box" s1="CmttMoStgUnitPrice" s2="Committed Monthly Storage" s3="Number" s4="C76-1" s5="N" s6="Y" s7="0.00" s8="I" s9="CmttMoStgQty" s10="var q = p[&apos;CmttMoStgQty&apos;]; if(q&gt;=1024){o[&apos;CmttMoStgUnitPrice&apos;].value=1.95; o[&apos;AdditionalStgUnitPrice&apos;].value=1.95;}if(q&gt;=2048){o[&apos;CmttMoStgUnitPrice&apos;].value=1.86; o[&apos;AdditionalStgUnitPrice&apos;].value=1.86;}if(q&gt;=5120){o[&apos;CmttMoStgUnitPrice&apos;].value=1.68; o[&apos;AdditionalStgUnitPrice&apos;].value=1.68;}" s11="FALSE" s12="L02" s13="Unitprice" s14="" s15="" s16=""/>
													<row i0="C76-1-4" s0="Input_Box" s1="CmttMoStgPrice" s2="Committed Monthly Storage" s3="Number" s4="C76-1" s5="N" s6="N" s7="0.00" s8="I" s9="CmttMoStgQty,CmttMoStgUnitPrice" s10="return fxMultiply(p[&apos;CmttMoStgQty&apos;],p[&apos;CmttMoStgUnitPrice&apos;]);" s11="FALSE" s12="L02" s13="Extprice" s14="" s15="" s16=""/>
												</line>
												<line Number="L03">
													<row i0="C76-1-5" s0="Activation_Checkbox" s1="IsOverage" s2="Enable Overage" s3="Number" s4="C76-1" s5="N" s6="Y" s7="1" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L03" s13="Normal" s14="" s15="" s16="GB"/>
													<row i0="C76-1-6" s0="Input_Box" s1="AdditionalStgUnitPrice" s2="Enable Overage" s3="Number" s4="C76-1" s5="N" s6="Y" s7="16.00" s8="I" s9="CmttMoStgUnitPrice" s10="return p[&apos;CmttMoStgUnitPrice&apos;];" s11="FALSE" s12="L03" s13="Unitprice" s14="" s15="" s16="GB"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="C76-1" s0="NBR Storage Charge USD" s1="Charge" s2="Yes" s3="Single" s4="No" s5="Next bill date" s6="Replace" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L701"/>
										</rows>
									</TranslationTableCtrl>
									<UsageInfo chargeCode="NBR Storage Charge USD">
										<access productCode="Storage USD" serviceAccessCode="STORAGE@" userAccessCode="$CONTRACTID$"/>
									</UsageInfo>
									<TrailRunResultItem>
										<transac amount="USD 0.000000" creditor="WebEx USD" debtor="ID-OSS-312536" offerCode="MC Named Hosts Pro USD" subscriptionCode="MCxxx-xx175516-001" chargeCode="NBR Storage Charge USD#Trial-1472196873916-11" origin="1" date="2017-09-27T00:00:00" label="NBR Storage 1GB" relationshipType="client" operationType="debit" chargeConditionCode="NBR Storage Charge USD" chargeFrequence="Recurring Monthly" serviceTag="MC Named Hosts" blisCurrency="USD" blisExtended="0.000000">
											<detail name="parameter.Parameters_Root" type="string" value="C76-1"/>
											<detail name="default.activation_date" type="date" value="2017-09-27T00:00:00"/>
											<detail name="parameter.IndFreeStg" type="decimal" value="10"/>
											<detail name="computed.SKUID" type="string" value="WX12403"/>
											<detail name="default.price_plan_name" type="string" value="NBR Storage"/>
											<detail name="parameter.AdditionalStgUnitPrice" type="decimal" value="12"/>
											<detail name="counter.remainingStorage" type="decimal" value="15"/>
											<detail name="parameter.FedRAMP OfferName" type="decimal" value="0"/>
											<detail name="computed.OfferName" type="string" value="NBR 2.0 USD"/>
											<detail name="default.recurring_refund" type="string" value="not refunded"/>
											<detail name="parameter.Service_Tag" type="string" value="MC Named Hosts"/>
											<detail name="computed.UNIT_PRICE" type="decimal" value="0.0"/>
											<detail name="parameter.CmttMoStgQty" type="decimal" value="5"/>
											<detail name="parameter.Prepay_Term" type="decimal" value="1"/>
											<detail name="counter_pre.remainingStorage" type="decimal" value="15"/>
											<detail name="computed.Prepay_Flag" type="decimal" value="0"/>
											<detail name="parameter.OfferName" type="string" value="NBR 2.0 USD"/>
											<detail name="default.recurring_stop_ref" type="date" value="2017-10-27T00:00:00"/>
											<detail name="computed.LIST_PRICE_TYPE" type="string" value="STATIC"/>
											<detail name="computed.QTY" type="decimal" value="10"/>
											<detail name="default.agreement_creation_date" type="date" value="2016-08-27T00:00:00"/>
											<detail name="parameter.CmttMoStgUnitPrice" type="decimal" value="12"/>
											<detail name="parameter.IsSharedSiteNH" type="decimal" value="0"/>
											<detail name="computed.LIST_PRICE" type="decimal" value="0.0"/>
											<detail name="tax.vat.ratecode" type="string" value="0"/>
											<detail name="default.recurring_stop" type="date" value="2017-10-27T00:00:00"/>
											<detail name="default.recurring_start_ref" type="date" value="2017-09-27T00:00:00"/>
											<detail name="default.recurring_prorata" type="string" value="not prorated"/>
											<detail name="computed.QTY_TYPE" type="string" value="RUNTIME"/>
											<detail name="computed.SKU_DESCRIPTION" type="string" value="NBR Storage 1GB"/>
											<detail name="computed.SKU_LOCATION" type="string" value="NULL"/>
											<detail name="default.recurring_start" type="date" value="2017-09-27T00:00:00"/>
											<detail name="computed.CIName" type="string" value="Included Free Storage"/>
											<detail name="parameter.IsOverage" type="decimal" value="1"/>
											<detail name="computed.EXT_PRICE" value="0.0"/>
											<AdditionSKUInfo RATINGCHARGETYPE="Recurring" COMPONENTNAME="NBR Storage 1GB" RATINGMODELNAME="Committed GB Mo" SKUTYPE="Storage" COMPONENTID="823" BASEPRICE="0" CHAREGEFREQUENCY="Monthly" UOMCODE="GB" SKUID="WX12403" RATINGMODELID="32" COMPONENTTYPEID="21"/>
											<OrderItemBooking>
												<BkgItem>
													<BookTypeID>15</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>4</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>19</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>11</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>16</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>18</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>3</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>12</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>17</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>2</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>13</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>1</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>20</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>14</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>10</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>5</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
											</OrderItemBooking>
										</transac>
										<transac amount="USD 60.000000" creditor="WebEx USD" debtor="ID-OSS-312536" offerCode="MC Named Hosts Pro USD" subscriptionCode="MCxxx-xx175516-001" chargeCode="NBR Storage Charge USD#Trial-1472196873916-11" origin="1" date="2017-09-27T00:00:00" label="NBR Committed Storage 1GB" relationshipType="client" operationType="debit" chargeConditionCode="NBR Storage Charge USD" chargeFrequence="Recurring Monthly" serviceTag="MC Named Hosts" blisCurrency="USD" blisExtended="60.000000">
											<detail name="parameter.Parameters_Root" type="string" value="C76-1"/>
											<detail name="computed.Tier_Number" type="string" value="2"/>
											<detail name="default.activation_date" type="date" value="2017-09-27T00:00:00"/>
											<detail name="parameter.IndFreeStg" type="decimal" value="10"/>
											<detail name="computed.SKUID" type="string" value="WX12405"/>
											<detail name="default.price_plan_name" type="string" value="NBR Storage"/>
											<detail name="parameter.AdditionalStgUnitPrice" type="decimal" value="12"/>
											<detail name="counter.remainingStorage" type="decimal" value="15"/>
											<detail name="parameter.FedRAMP OfferName" type="decimal" value="0"/>
											<detail name="computed.OfferName" type="string" value="NBR 2.0 USD"/>
											<detail name="default.recurring_refund" type="string" value="not refunded"/>
											<detail name="parameter.Service_Tag" type="string" value="MC Named Hosts"/>
											<detail name="computed.UNIT_PRICE" type="decimal" value="12.0"/>
											<detail name="parameter.CmttMoStgQty" type="decimal" value="5"/>
											<detail name="computed.RangeHigh" type="decimal" value="9"/>
											<detail name="parameter.Prepay_Term" type="decimal" value="1"/>
											<detail name="counter_pre.remainingStorage" type="decimal" value="15"/>
											<detail name="computed.Prepay_Flag" type="decimal" value="0"/>
											<detail name="parameter.OfferName" type="string" value="NBR 2.0 USD"/>
											<detail name="computed.RangeLow" type="decimal" value="5"/>
											<detail name="default.recurring_stop_ref" type="date" value="2017-10-27T00:00:00"/>
											<detail name="computed.LIST_PRICE_TYPE" type="string" value="STATIC"/>
											<detail name="computed.QTY" type="decimal" value="5"/>
											<detail name="default.agreement_creation_date" type="date" value="2016-08-27T00:00:00"/>
											<detail name="parameter.CmttMoStgUnitPrice" type="decimal" value="12"/>
											<detail name="parameter.IsSharedSiteNH" type="decimal" value="0"/>
											<detail name="computed.LIST_PRICE" type="decimal" value="12.0"/>
											<detail name="tax.vat.ratecode" type="string" value="0"/>
											<detail name="computed.TierDesc" type="string" value=" 5-9"/>
											<detail name="default.recurring_stop" type="date" value="2017-10-27T00:00:00"/>
											<detail name="default.recurring_start_ref" type="date" value="2017-09-27T00:00:00"/>
											<detail name="default.recurring_prorata" type="string" value="not prorated"/>
											<detail name="computed.QTY_TYPE" type="string" value="RUNTIME"/>
											<detail name="computed.SKU_DESCRIPTION" type="string" value="NBR Committed Storage 1GB"/>
											<detail name="computed.SKU_LOCATION" type="string" value="NULL"/>
											<detail name="default.recurring_start" type="date" value="2017-09-27T00:00:00"/>
											<detail name="parameter.IsOverage" type="decimal" value="1"/>
											<detail name="computed.CIName" type="string" value="Committed Monthly Storage"/>
											<detail name="computed.EXT_PRICE" value="60.0"/>
											<AdditionSKUInfo RATINGCHARGETYPE="Recurring" COMPONENTNAME="NBR Committed Storage 1GB" RATINGMODELNAME="Committed GB Mo" SKUTYPE="Storage" COMPONENTID="825" BASEPRICE="16" CHAREGEFREQUENCY="Monthly" UOMCODE="GB" SKUID="WX12405" RATINGMODELID="32" COMPONENTTYPEID="21"/>
											<OrderItemBooking>
												<BkgItem>
													<BookTypeID>15</BookTypeID>
													<BookValue>60.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>4</BookTypeID>
													<BookValue>60.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>19</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>11</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>16</BookTypeID>
													<BookValue>60.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>18</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>3</BookTypeID>
													<BookValue>60.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>12</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>17</BookTypeID>
													<BookValue>60.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>2</BookTypeID>
													<BookValue>60.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>13</BookTypeID>
													<BookValue>0.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>1</BookTypeID>
													<BookValue>60.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>20</BookTypeID>
													<BookValue>60.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>14</BookTypeID>
													<BookValue>60.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>10</BookTypeID>
													<BookValue>60.0</BookValue>
												</BkgItem>
												<BkgItem>
													<BookTypeID>5</BookTypeID>
													<BookValue>60.0</BookValue>
												</BkgItem>
											</OrderItemBooking>
										</transac>
										<transac amount="USD 119999999820.000000" creditor="WebEx USD" debtor="ID-OSS-312536" offerCode="MC Named Hosts Pro USD" subscriptionCode="MCxxx-xx175516-001" chargeCode="NBR Storage Charge USD#Trial-1472196873916-11" origin="0" date="2017-09-26T23:59:51" label="NBR Additional Storage 1GB" relationshipType="client" operationType="debit" chargeConditionCode="NBR Storage Charge USD" serviceTag="MC Named Hosts" blisCurrency="USD" blisExtended="" chargeFrequence="1">
											<detail name="parameter.Parameters_Root" type="string" value="C76-1"/>
											<detail name="computed.Tier_Number" type="string" value="2"/>
											<detail name="parameter.IndFreeStg" type="decimal" value="10"/>
											<detail name="computed.SKUID" type="string" value="WX12404"/>
											<detail name="default.price_plan_name" type="string" value="NBR Storage"/>
											<detail name="item.BOSS_CONTRACTID" type="decimal" value="123456789"/>
											<detail name="parameter.AdditionalStgUnitPrice" type="decimal" value="12"/>
											<detail name="counter.remainingStorage" type="decimal" value="15"/>
											<detail name="item.DataSize" type="decimal" value="10737418240000000000"/>
											<detail name="parameter.FedRAMP OfferName" type="decimal" value="0"/>
											<detail name="computed.OfferName" type="string" value="NBR 2.0 USD"/>
											<detail name="computed.StorageSize" type="decimal" value="10737418240000000000"/>
											<detail name="parameter.Service_Tag" type="string" value="MC Named Hosts"/>
											<detail name="computed.UNIT_PRICE" type="decimal" value="12"/>
											<detail name="parameter.CmttMoStgQty" type="decimal" value="5"/>
											<detail name="computed.RemainingStorage" type="decimal" value="9999999985"/>
											<detail name="computed.RangeHigh" type="decimal" value="9"/>
											<detail name="parameter.Prepay_Term" type="decimal" value="1"/>
											<detail name="counter_pre.remainingStorage" type="decimal" value="15"/>
											<detail name="computed.EXT_PRICE" type="decimal" value=""/>
											<detail name="parameter.OfferName" type="string" value="NBR 2.0 USD"/>
											<detail name="default.service_identifier" type="string" value="STORAGE@12"/>
											<detail name="default.product_code" type="string" value="Storage USD"/>
											<detail name="computed.RangeLow" type="decimal" value="5"/>
											<detail name="default.consumption_date" type="date" value="2017-09-26T23:59:51"/>
											<detail name="computed.LIST_PRICE_TYPE" type="string" value="STATIC"/>
											<detail name="computed.pEXT_PRICE" type="decimal" value="119999999880"/>
											<detail name="computed.QTY" type="decimal" value=""/>
											<detail name="default.agreement_creation_date" type="date" value="2016-08-27T00:00:00"/>
											<detail name="parameter.CmttMoStgUnitPrice" type="decimal" value="12"/>
											<detail name="parameter.IsSharedSiteNH" type="decimal" value="0"/>
											<detail name="computed.PrepaidStorage" type="decimal" value="15"/>
											<detail name="computed.CmttStgAmount" type="decimal" value="60"/>
											<detail name="default.access_login" type="string" value="12"/>
											<detail name="computed.LIST_PRICE" type="decimal" value="12.0"/>
											<detail name="tax.vat.ratecode" type="string" value="0"/>
											<detail name="computed.TierDesc" type="string" value=" 5-9"/>
											<detail name="computed.pQTY" type="decimal" value="9999999985"/>
											<detail name="item.NUMOFSITES" type="decimal" value="12"/>
											<detail name="computed.AdditionalStorage" type="decimal" value="9999999985"/>
											<detail name="computed.QTY_TYPE" type="string" value="RUNTIME"/>
											<detail name="computed.SKU_DESCRIPTION" type="string" value="NBR Additional Storage 1GB"/>
											<detail name="computed.SKU_LOCATION" type="string" value="NULL"/>
											<detail name="computed.pUNIT_PRICE" type="decimal" value="12"/>
											<detail name="default.ci_name" type="string" value="Storage"/>
											<detail name="parameter.IsOverage" type="decimal" value="1"/>
											<detail name="computed.CIName" type="string" value="Storage 1GB"/>
											<detail name="computed.CmtStgCIName" type="string" value="Committed Monthly Storage"/>
											<AdditionSKUInfo RATINGCHARGETYPE="Usage" COMPONENTNAME="NBR Additional Storage 1GB" RATINGMODELNAME="Pay-per-GB" SKUTYPE="Storage" COMPONENTID="824" BASEPRICE="16" CHAREGEFREQUENCY="Daily" UOMCODE="GB" SKUID="WX12404" RATINGMODELID="33" COMPONENTTYPEID="21"/>
											<OrderItemBooking/>
										</transac>
									</TrailRunResultItem>
								</chargeCondition>
								<offerCondition subCode="Support-Maintenance USD" offerCode="Support-Maintenance USD" blisActivationType="new" optionalOrder="true" blischecked="false">
									<chargeCondition subCode="Recurring Annual" parentCode="Recurring Annual Charge USD" manualActivable="true" blisActivationType="new" description="Annual Support" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Null"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C7"/>
														<parameter name="QTY" isPrivate="false" type="number" value="1"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
														<parameter name="Comment" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="T68-S7-C7-1" s0="Parameters_Root" s1="Recurring Annual Charge USD" s2="Annual Support" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="T68-S7-C7-1-1" s0="Input_Box" s1="UnitPrice" s2="Annual Support" s3="Number" s4="T68-S7-C7-1" s5="N" s6="Y" s7="3000" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Extprice" s14="" s15="" s16="Each"/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="T68-S7-C7-1" s0="Recurring Annual Charge USD - Annual Support" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="Yes" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L69"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Recurring 2 USD" parentCode="Recurring Charge USD" manualActivable="true" blisActivationType="new" description="Monthly Support" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C6"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Qty" isPrivate="false" type="number" value="1"/>
														<parameter name="ExtPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment1" isPrivate="false" type="string" value="Null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="T68-S7-C6-2" s0="Parameters_Root" s1="Recurring Charge USD" s2="Monthly Support" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="T68-S7-C6-2-1" s0="Input_Box" s1="UnitPrice" s2="Monthly Support" s3="Number" s4="T68-S7-C6-2" s5="N" s6="Y" s7="250" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Extprice" s14="" s15="" s16="Each"/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="T68-S7-C6-2" s0="Recurring Charge USD - Monthly Support" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="Yes" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L70"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Recurring Qtr Charge USD in Support-Maintenance USD" parentCode="Recurring Qtr Charge USD" manualActivable="true" blisActivationType="new" description="Quarterly" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" isPrivate="false" type="string" value="Null"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Parameters_Root" isPrivate="false" type="string" value="C33"/>
														<parameter name="QTY" isPrivate="false" type="number" value="1"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="T68-S7-C33-1" s0="Parameters_Root" s1="Recurring Qtr Charge USD" s2="Quarterly Support" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="T68-S7-C33-1-1" s0="Input_Box" s1="UnitPrice" s2="Quarterly Support" s3="Number" s4="T68-S7-C33-1" s5="N" s6="Y" s7="750" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Extprice" s14="" s15="" s16="Each"/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="T68-S7-C33-1" s0="Recurring Charge USD - Quarterly Support" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="Yes" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L71"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Recurring 1 USD" parentCode="Recurring Charge USD" manualActivable="true" blisActivationType="new" description="Premium Support" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C6"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Qty" isPrivate="false" type="number" value="1"/>
														<parameter name="ExtPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment1" isPrivate="false" type="string" value="Null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows/>
										</TranslationTableCtrl>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="Support-Maintenance USD"/>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S7"/>
											<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="T68-S7" s0="Support-Maintenance USD" s1="Sub Offer" s2="No" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L80"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<offerCondition subCode="Reporting USD" offerCode="Reporting USD" blisActivationType="new" optionalOrder="true" blischecked="false">
									<chargeCondition subCode="Recurring 1 USD#2" parentCode="Recurring Charge USD" manualActivable="false" blisActivationType="new" description="WDEP" blischecked="true" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C6"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Qty" isPrivate="false" type="number" value="1"/>
														<parameter name="ExtPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment1" isPrivate="false" type="string" value="Null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S11-C6-1" s0="Parameters_Root" s1="Recurring Charge USD" s2="WDEP" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S11-C6-1-1" s0="Input_Box" s1="UnitPrice" s2="Monthly posting of WDEP files to an FTP Server" s3="Number" s4="S11-C6-1" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Extprice" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S11-C6-1" s0="Recurring Charge USD - WDEP" s1="Charge" s2="Yes" s3="Multiple" s4="Yes - Multiple" s5="Next bill date" s6="Yes" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L70"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="Reporting USD"/>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S11"/>
											<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="S11" s0="Reporting USD" s1="Sub Offer" s2="No" s3="Single" s4="No" s5="Immediately" s6="Yes" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L73"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<offerCondition subCode="SSL USD" offerCode="SSL USD" blisActivationType="new" optionalOrder="false" blischecked="true">
									<chargeCondition subCode="SSL Setup and Maintenance USD" parentCode="SSL Setup and Maintenance Charge USD" manualActivable="false" blisActivationType="new" blischecked="true" creditor="WebEx USD" activationCode="SSL Setup and Maintenance Charge USD#Trial-1472196873916-7">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="SetupSSLUnitPrice" description="X" isPrivate="false" type="number" value="0" blisstatus="dirty" labelname="SSL Setup " labelvalue="0"/>
														<parameter name="BlockSize" description="X1" isPrivate="false" type="number" value="100" blisstatus="dirty" labelname="Block Size" labelvalue="100"/>
														<parameter name="OfferName" description="X" isPrivate="false" type="string" value="NULL"/>
														<parameter name="MainSSLUnitPrice" description="X" isPrivate="false" type="number" value="0" blisstatus="dirty" labelname="Maintenance Price" labelvalue="0"/>
														<parameter name="Parameters_Root" description="X" isPrivate="false" type="string" value="C9"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S13-C9-2" s0="Parameters_Root" s1="SSL Setup and Maintenance Charge USD" s2="SSL Setup and Maintenance" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S13-C9-2-1" s0="Input_Box" s1="SetupSSLUnitPrice" s2="SSL Setup " s3="Number" s4="S13-C9-2" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Extprice" s14="" s15="" s16=""/>
													</line>
													<line Number="L02">
														<row i0="S13-C9-2-3" s0="Input_Box" s1="MainSSLUnitPrice" s2="Maintenance Price" s3="Number" s4="S13-C9-2" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L02" s13="Unitprice" s14="" s15="" s16="Block"/>
													</line>
													<line Number="L03">
														<row i0="S13-C9-2-2" s0="Selection_Group" s1="BlockSize" s2="Block Size" s3="Number" s4="S13-C9-2" s5="N" s6="Y" s7="100" s8="SS" s9="NULL" s10="NULL" s11="TRUE" s12="L03" s13="Normal" s14="" s15="" s16="">
															<row i0="S13-C9-2-2-1" s0="Selection_Option" s1="50" s2="50" s3="Number" s4="S13-C9-2-2" s5="NULL" s6="NULL" s7="100" s8="O" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
															<row i0="S13-C9-2-2-2" s0="Selection_Option" s1="100" s2="100" s3="Number" s4="S13-C9-2-2" s5="NULL" s6="NULL" s7="100" s8="O" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16=""/>
														</row>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S13-C9-2" s0="SSL Setup and Maintenance Charge USD" s1="Charge" s2="Yes" s3="Single" s4="No" s5="Next bill date" s6="Yes" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L77"/>
											</rows>
										</TranslationTableCtrl>
										<TrailRunResultItem>
											<transac amount="USD 0.000000" creditor="WebEx USD" debtor="ID-OSS-312536" offerCode="MC Named Hosts Pro USD" subscriptionCode="MCxxx-xx175516-001" chargeCode="SSL Setup and Maintenance Charge USD#Trial-1472196873916-7" origin="2" date="2016-08-27T00:00:00" label="SSL Setup" relationshipType="client" operationType="debit" chargeConditionCode="SSL Setup and Maintenance Charge USD" serviceTag="MC Named Hosts" blisCurrency="USD" blisExtended="0.000000" chargeFrequence="1">
												<detail name="parameter.Parameters_Root" type="string" value="S13-C9-2"/>
												<detail name="counter_pre.QtyCompPorts" type="decimal" value="10"/>
												<detail name="counter.PackPorts" type="decimal" value="0"/>
												<detail name="computed.SKUID" type="string" value="WX00008"/>
												<detail name="default.price_plan_name" type="string" value="SSL Setup"/>
												<detail name="parameter.Service_Tag" type="string" value="MC Named Hosts"/>
												<detail name="computed.UNIT_PRICE" type="decimal" value="0.0"/>
												<detail name="counter.QtyInternalPorts" type="decimal" value="0"/>
												<detail name="counter.QtyPorts" type="decimal" value="15"/>
												<detail name="counter_pre.PackPorts" type="decimal" value="0"/>
												<detail name="parameter.Prepay_Term" type="decimal" value="1"/>
												<detail name="counter_pre.QtyInternalPorts" type="decimal" value="0"/>
												<detail name="parameter.OfferName" type="string" value="SSL USD"/>
												<detail name="counter_pre.QtyPorts" type="decimal" value="15"/>
												<detail name="computed.LIST_PRICE_TYPE" type="string" value="STATIC"/>
												<detail name="computed.QTY" type="decimal" value="1"/>
												<detail name="default.agreement_creation_date" type="date" value="2016-08-27T00:00:00"/>
												<detail name="counter.QtyCompPorts" type="decimal" value="10"/>
												<detail name="parameter.MainSSLUnitPrice" type="decimal" value="0"/>
												<detail name="computed.LIST_PRICE" type="decimal" value="0.0"/>
												<detail name="tax.vat.ratecode" type="string" value="0"/>
												<detail name="parameter.BlockSize" type="decimal" value="100"/>
												<detail name="computed.QTY_TYPE" type="string" value="STATIC"/>
												<detail name="computed.SKU_DESCRIPTION" type="string" value="SSL Setup"/>
												<detail name="counter_pre.QtyInternalCompPorts" type="decimal" value="0"/>
												<detail name="parameter.SetupSSLUnitPrice" type="decimal" value="0"/>
												<detail name="computed.SKU_LOCATION" type="string" value="NULL"/>
												<detail name="counter.QtyInternalCompPorts" type="decimal" value="0"/>
												<detail name="computed.CIName" type="string" value="Setup SSL"/>
												<detail name="computed.EXT_PRICE" value="0.0"/>
												<AdditionSKUInfo RATINGCHARGETYPE="One-time" COMPONENTNAME="SSL Setup" RATINGMODELNAME="One-time" SKUTYPE="SSL" COMPONENTID="103" BASEPRICE="0" CHAREGEFREQUENCY="Once" UOMCODE="Each" SKUID="WX00008" RATINGMODELID="1" COMPONENTTYPEID="8"/>
												<OrderItemBooking>
													<BkgItem>
														<BookTypeID>15</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>4</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>19</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>11</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>16</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>18</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>3</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>12</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>17</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>2</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>13</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>1</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>20</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>14</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>10</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>5</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
												</OrderItemBooking>
											</transac>
											<transac amount="USD 0.000000" creditor="WebEx USD" debtor="ID-OSS-312536" offerCode="MC Named Hosts Pro USD" subscriptionCode="MCxxx-xx175516-001" chargeCode="SSL Setup and Maintenance Charge USD#Trial-1472196873916-7" origin="1" date="2017-09-27T00:00:00" label="SSL Maintenance" relationshipType="client" operationType="debit" chargeConditionCode="SSL Setup and Maintenance Charge USD" chargeFrequence="Recurring Monthly" serviceTag="MC Named Hosts" blisCurrency="USD" blisExtended="0.000000">
												<detail name="parameter.Parameters_Root" type="string" value="S13-C9-2"/>
												<detail name="counter_pre.QtyCompPorts" type="decimal" value="10"/>
												<detail name="default.activation_date" type="date" value="2017-09-27T00:00:00"/>
												<detail name="counter.PackPorts" type="decimal" value="0"/>
												<detail name="computed.SKUID" type="string" value="WX12018"/>
												<detail name="default.price_plan_name" type="string" value="SSL Setup"/>
												<detail name="computed.BlockSize" type="decimal" value="100"/>
												<detail name="default.recurring_refund" type="string" value="not refunded"/>
												<detail name="parameter.Service_Tag" type="string" value="MC Named Hosts"/>
												<detail name="computed.UNIT_PRICE" type="decimal" value="0.0"/>
												<detail name="counter.QtyInternalPorts" type="decimal" value="0"/>
												<detail name="counter.QtyPorts" type="decimal" value="15"/>
												<detail name="parameter.Prepay_Term" type="decimal" value="1"/>
												<detail name="counter_pre.PackPorts" type="decimal" value="0"/>
												<detail name="counter_pre.QtyInternalPorts" type="decimal" value="0"/>
												<detail name="computed.Prepay_Flag" type="decimal" value="0"/>
												<detail name="parameter.OfferName" type="string" value="SSL USD"/>
												<detail name="counter_pre.QtyPorts" type="decimal" value="15"/>
												<detail name="default.recurring_stop_ref" type="date" value="2017-10-27T00:00:00"/>
												<detail name="computed.LIST_PRICE_TYPE" type="string" value="STATIC"/>
												<detail name="computed.QTY" type="decimal" value="1"/>
												<detail name="default.agreement_creation_date" type="date" value="2016-08-27T00:00:00"/>
												<detail name="counter.QtyCompPorts" type="decimal" value="10"/>
												<detail name="parameter.MainSSLUnitPrice" type="decimal" value="0"/>
												<detail name="computed.STRING BLOCK SIZE" type="string" value="100"/>
												<detail name="computed.LIST_PRICE" type="decimal" value="0.0"/>
												<detail name="tax.vat.ratecode" type="string" value="0"/>
												<detail name="default.recurring_stop" type="date" value="2017-10-27T00:00:00"/>
												<detail name="computed.TotalPorts" type="decimal" value="25"/>
												<detail name="default.recurring_start_ref" type="date" value="2017-09-27T00:00:00"/>
												<detail name="parameter.BlockSize" type="decimal" value="100"/>
												<detail name="default.recurring_prorata" type="string" value="not prorated"/>
												<detail name="computed.QTY_TYPE" type="string" value="STATIC"/>
												<detail name="counter_pre.QtyInternalCompPorts" type="decimal" value="0"/>
												<detail name="computed.SKU_DESCRIPTION" type="string" value="SSL Maintenance"/>
												<detail name="parameter.SetupSSLUnitPrice" type="decimal" value="0"/>
												<detail name="computed.SKU_LOCATION" type="string" value="NULL"/>
												<detail name="default.recurring_start" type="date" value="2017-09-27T00:00:00"/>
												<detail name="counter.QtyInternalCompPorts" type="decimal" value="0"/>
												<detail name="computed.CIName" type="string" value="Maintenance SSL"/>
												<detail name="computed.EXT_PRICE" value="0.0"/>
												<AdditionSKUInfo RATINGCHARGETYPE="Recurring" COMPONENTNAME="SSL Maintenance" RATINGMODELNAME="License Add" SKUTYPE="SSL" COMPONENTID="104" BASEPRICE="0" CHAREGEFREQUENCY="Monthly" UOMCODE="Block" SKUID="WX12018" RATINGMODELID="3" COMPONENTTYPEID="8"/>
												<OrderItemBooking>
													<BkgItem>
														<BookTypeID>15</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>4</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>19</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>11</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>16</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>18</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>3</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>12</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>17</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>2</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>13</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>1</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>20</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>14</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>10</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
													<BkgItem>
														<BookTypeID>5</BookTypeID>
														<BookValue>0.0</BookValue>
													</BkgItem>
												</OrderItemBooking>
											</transac>
										</TrailRunResultItem>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="SSL USD"/>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S13"/>
											<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="S13" s0="SSL USD" s1="Sub Offer" s2="No" s3="Single" s4="No" s5="Immediately" s6="Replace" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L76"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<chargeCondition subCode="Partner Teleconference Charge USD" parentCode="Partner Teleconference Charge USD" manualActivable="false" blisActivationType="new" blischecked="true" creditor="WebEx USD" activationCode="Partner Teleconference Charge USD#Trial-1472196873916-12">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="C70"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="Partner Teleconference USD"/>
													<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
													<parameter name="HasBasicToll" isPrivate="false" type="number" value="1"/>
													<parameter name="HasBasicTollfree" isPrivate="false" type="number" value="1"/>
													<parameter name="HasBasicCallback" isPrivate="false" type="number" value="1"/>
													<parameter name="HasBasicCallbackIntl" isPrivate="false" type="number" value="1"/>
													<parameter name="HasBasicTollfreeIntl" isPrivate="false" type="number" value="1"/>
													<parameter name="HasPremToll" isPrivate="false" type="number" value="1"/>
													<parameter name="HasPremTollfree" isPrivate="false" type="number" value="1"/>
													<parameter name="HasPremCallback" isPrivate="false" type="number" value="1"/>
													<parameter name="HasPremCallbackIntl" isPrivate="false" type="number" value="1"/>
													<parameter name="HasPremTollfreeIntl" isPrivate="false" type="number" value="1"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													<parameter name="HasPremReplay" isPrivate="false" type="number" value="1"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows/>
									</TranslationTableCtrl>
									<UsageInfo chargeCode="Partner Teleconference Charge USD">
										<access productCode="Partner Telephony EDR USD" serviceAccessCode="PARTNER-TEL@" userAccessCode="$CONTRACTID$"/>
									</UsageInfo>
								</chargeCondition>
								<chargeCondition subCode="Additional Named Hosts Charge USD" parentCode="Additional Named Hosts Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="C73"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="EE Named Users USD"/>
													<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
													<parameter name="SplitBy" isPrivate="false" type="string" value="TrackingCode1"/>
													<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="FreeQty" isPrivate="false" type="number" value="0"/>
													<parameter name="FreeMonths" isPrivate="false" type="number" value="0"/>
													<parameter name="CapBeyondFree" description="1:yes, 0:no" isPrivate="false" type="number" value="0"/>
													<parameter name="IsEE" description="1:yes, 0:no" isPrivate="false" type="number" value="0"/>
													<parameter name="BusinessModel" description="Committed/Un-Committed" isPrivate="false" type="string" value="Committed"/>
													<parameter name="Service_Tag" description="" isPrivate="false" type="string" value="Null"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows/>
									</TranslationTableCtrl>
									<UsageInfo chargeCode="Additional Named Hosts Charge USD">
										<access productCode="Site Host EDR USD" serviceAccessCode="SITE-HOST@" userAccessCode="$CONTRACTID$"/>
									</UsageInfo>
								</chargeCondition>
								<offerCondition subCode="Training Documentation USD" offerCode="Training Documentation USD" blisActivationType="new" optionalOrder="true" blischecked="false">
									<chargeCondition subCode="Pay-per-Job USD#3" parentCode="Pay-per-Job USD" manualActivable="true" blisActivationType="new" description="Live Online Private Training" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C17"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="QTY" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment" isPrivate="false" type="string" value="Null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S16-C17-1" s0="Parameters_Root" s1="Pay-per-Job USD" s2="Pay-per-Job - Live Online Private Training" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S16-C17-1-1" s0="Input_Box" s1="QTY" s2="Job Fee" s3="Number" s4="S16-C17-1" s5="N" s6="Y" s7="1" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Quantity" s14="" s15="" s16="Class"/>
														<row i0="S16-C17-1-2" s0="Input_Box" s1="UnitPrice" s2="Unit Price " s3="Number" s4="S16-C17-1" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="FALSE" s12="L01" s13="Unitprice" s14="" s15="" s16=""/>
													</line>
													<line Number="L02">
														<row i0="S16-C17-1-3" s0="Input_Box" s1="Comment" s2="Date-Description (20 chars)" s3="String" s4="S16-C17-1" s5="N" s6="Y" s7="-" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L02" s13="Normal" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S16-C17-1" s0="Pay-per-Job USD - Live Online Private Training" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L64"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Pay-per-Job USD#1#1" parentCode="Pay-per-Job USD" manualActivable="true" blisActivationType="new" description="Train-the-Trainer" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C17"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="QTY" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment" isPrivate="false" type="string" value="Null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S16-C17-2" s0="Parameters_Root" s1="Pay-per-Job USD" s2="Pay-per-Job - Train-the-Trainer" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S16-C17-2-1" s0="Input_Box" s1="QTY" s2="Job Fee" s3="Number" s4="S16-C17-2" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Quantity" s14="" s15="" s16="Class"/>
														<row i0="S16-C17-2-2" s0="Input_Box" s1="UnitPrice" s2="Unit Price " s3="Number" s4="S16-C17-2" s5="N" s6="Y" s7="1200" s8="I" s9="NULL" s10="NULL" s11="FALSE" s12="L01" s13="Unitprice" s14="" s15="" s16=""/>
													</line>
													<line Number="L02">
														<row i0="S16-C17-2-3" s0="Input_Box" s1="Comment" s2="Date-Description (20 chars)" s3="String" s4="S16-C17-2" s5="N" s6="Y" s7="-" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L02" s13="Normal" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S16-C17-2" s0="Pay-per-Job USD - Train-the-Trainer" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L64"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Pay-per-Job USD#2#1" parentCode="Pay-per-Job USD" manualActivable="true" blisActivationType="new" description="Train-the-Support" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C17"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="QTY" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment" isPrivate="false" type="string" value="Null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S16-C17-3" s0="Parameters_Root" s1="Pay-per-Job USD" s2="Pay-per-Job - Train-the-Support" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S16-C17-3-1" s0="Input_Box" s1="QTY" s2="Job Fee" s3="Number" s4="S16-C17-3" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Quantity" s14="" s15="" s16="Class"/>
														<row i0="S16-C17-3-2" s0="Input_Box" s1="UnitPrice" s2="Unit Price " s3="Number" s4="S16-C17-3" s5="N" s6="Y" s7="1200" s8="I" s9="NULL" s10="NULL" s11="FALSE" s12="L01" s13="Unitprice" s14="" s15="" s16=""/>
													</line>
													<line Number="L02">
														<row i0="S16-C17-3-3" s0="Input_Box" s1="Comment" s2="Date-Description (20 chars)" s3="String" s4="S16-C17-3" s5="N" s6="Y" s7="-" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L02" s13="Normal" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S16-C17-3" s0="Pay-per-Job USD - Train-the-Support" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L64"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Pay-per-Job USD#3#1" parentCode="Pay-per-Job USD" manualActivable="true" blisActivationType="new" description="Live On-Site Training" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C17"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="QTY" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment" isPrivate="false" type="string" value="Null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S16-C17-4" s0="Parameters_Root" s1="Pay-per-Job USD" s2="Pay-per-Job - Live On-Site Training" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S16-C17-4-1" s0="Input_Box" s1="QTY" s2="Job Fee" s3="Number" s4="S16-C17-4" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Quantity" s14="" s15="" s16="Day"/>
														<row i0="S16-C17-4-2" s0="Input_Box" s1="UnitPrice" s2="Unit Price " s3="Number" s4="S16-C17-4" s5="N" s6="Y" s7="1500" s8="I" s9="NULL" s10="NULL" s11="FALSE" s12="L01" s13="Unitprice" s14="" s15="" s16=""/>
													</line>
													<line Number="L02">
														<row i0="S16-C17-4-3" s0="Input_Box" s1="Comment" s2="Date-Description (20 chars)" s3="String" s4="S16-C17-4" s5="N" s6="Y" s7="-" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L02" s13="Normal" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S16-C17-4" s0="Pay-per-Job USD - Live OnSite Training" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L64"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Pay-per-Job USD#4 in Training  Documentation USD" parentCode="Pay-per-Job USD" manualActivable="true" blisActivationType="new" description="Live Online Public Training" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C17"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="QTY" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment" isPrivate="false" type="string" value="Null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row i0="S16-C17-5" s0="Parameters_Root" s1="Pay-per-Job USD" s2="Pay-per-Job - Live Online Public Training" s3="NULL" s4="NULL" s5="N" s6="N" s7="NULL" s8="R" s9="NULL" s10="NULL" s11="FALSE" s12="" s13="" s14="" s15="" s16="">
													<line Number="L01">
														<row i0="S16-C17-5-1" s0="Input_Box" s1="QTY" s2="Job Fee" s3="Number" s4="S16-C17-5" s5="N" s6="Y" s7="1" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L01" s13="Quantity" s14="" s15="" s16="Class"/>
														<row i0="S16-C17-5-2" s0="Input_Box" s1="UnitPrice" s2="Unit Price " s3="Number" s4="S16-C17-5" s5="N" s6="Y" s7="0" s8="I" s9="NULL" s10="NULL" s11="FALSE" s12="L01" s13="Unitprice" s14="" s15="" s16=""/>
													</line>
													<line Number="L02">
														<row i0="S16-C17-5-3" s0="Input_Box" s1="Comment" s2="Date-Description (20 chars)" s3="String" s4="S16-C17-5" s5="N" s6="Y" s7="-" s8="I" s9="NULL" s10="NULL" s11="TRUE" s12="L02" s13="Normal" s14="" s15="" s16=""/>
													</line>
												</row>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows>
												<row i0="S16-C17-5" s0="Pay-per-Job USD - Live Online Public Training" s1="Charge" s2="No" s3="Multiple" s4="Yes - Multiple" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L64"/>
											</rows>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="One-time Charge USD" parentCode="One-time Charge USD" manualActivable="true" blisActivationType="new" description="Editable Training Materials" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C5"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="QTY" isPrivate="false" type="number" value="1"/>
														<parameter name="Comment" isPrivate="false" type="string" value="Null"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows/>
										</TranslationTableCtrl>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="Training Documentation USD"/>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S16"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="S16" s0="Parameters_Root" s1="Training Documentation USD" s2="(Obsolete)Training Documentation" s5="N"/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="S16" s0="Training Documentation USD" s1="Sub Offer" s2="No" s3="Single" s4="No" s5="Immediately" s6="No" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y" s11="L83"/>
										</rows>
									</TranslationTableCtrl>
								</offerCondition>
								<offerCondition subCode="Storage USD" offerCode="Storage USD" blisActivationType="new" optionalOrder="true" blischecked="false">
									<chargeCondition subCode="Recurring USD" parentCode="Recurring Charge USD" manualActivable="true" blisActivationType="new" description="50MB" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C6"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Qty" isPrivate="false" type="number" value="1"/>
														<parameter name="ExtPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment1" isPrivate="false" type="string" value="Null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows/>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Recurring USD#1" parentCode="Recurring Charge USD" manualActivable="true" blisActivationType="new" description="100MB" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C6"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Qty" isPrivate="false" type="number" value="1"/>
														<parameter name="ExtPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment1" isPrivate="false" type="string" value="Null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows/>
										</TranslationTableCtrl>
									</chargeCondition>
									<chargeCondition subCode="Recurring USD#2" parentCode="Recurring Charge USD" manualActivable="true" blisActivationType="new" description="500MB" blischecked="false" creditor="WebEx USD">
										<ParamSetInstance>
											<allRequests>
												<chargeComponent>
													<pricePlan>
														<parameter name="UnitPrice" description="x" isPrivate="false" type="number" value="0"/>
														<parameter name="OfferName" description="x" isPrivate="false" type="string" value="NULL"/>
														<parameter name="Parameters_Root" description="x" isPrivate="false" type="string" value="C6"/>
														<parameter name="CIName" isPrivate="false" type="string" value="Null"/>
														<parameter name="Qty" isPrivate="false" type="number" value="1"/>
														<parameter name="ExtPrice" isPrivate="false" type="number" value="0"/>
														<parameter name="Comment1" isPrivate="false" type="string" value="Null"/>
														<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
														<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													</pricePlan>
												</chargeComponent>
											</allRequests>
										</ParamSetInstance>
										<TranslationTableInstance>
											<rows>
												<row/>
											</rows>
										</TranslationTableInstance>
										<TranslationTableCtrl>
											<rows/>
										</TranslationTableCtrl>
									</chargeCondition>
									<ParamSetInstance>
										<parameterSet>
											<parameter name="OfferName" isPrivate="false" type="string" value="Storage USD"/>
											<parameter name="Parameters_Root" isPrivate="false" type="string" value="S9"/>
											<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
											<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
										</parameterSet>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows/>
									</TranslationTableCtrl>
								</offerCondition>
								<chargeCondition subCode="Simple Prepayment Charge USD" parentCode="Simple Prepayment Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="C55"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="Any Top Offer USD"/>
													<parameter name="CIName" isPrivate="false" type="string" value="Deposit"/>
													<parameter name="UnitPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="Qty" isPrivate="false" type="number" value="1"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows/>
									</TranslationTableCtrl>
								</chargeCondition>
								<chargeCondition subCode="24 Seven Office Storage Charge USD" parentCode="24 Seven Office Storage Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="C87"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="24 Seven Office USD"/>
													<parameter name="CmttMoStgQty" isPrivate="false" type="number" value="1"/>
													<parameter name="CmttMoStgUnitPrice" isPrivate="false" type="number" value="100"/>
													<parameter name="AdditionalStgUnitPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="IndFreeStgQty" isPrivate="false" type="number" value="0"/>
													<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows/>
									</TranslationTableCtrl>
									<UsageInfo chargeCode="24 Seven Office Storage Charge USD">
										<access productCode="Additional Storage USD" serviceAccessCode="ADDITIONAL-STORAGE@" userAccessCode="$CONTRACTID$"/>
									</UsageInfo>
								</chargeCondition>
								<chargeCondition subCode="Prepayment Charge USD" parentCode="Prepayment Charge USD" manualActivable="false" blisActivationType="new" blischecked="true" creditor="WebEx USD" activationCode="Prepayment Charge USD#Trial-1472196873916-13">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameter_Root" isPrivate="false" type="string" value="C88"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="Prepayment USD"/>
													<parameter name="CIName" isPrivate="false" type="string" value="NULL"/>
													<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows/>
									</TranslationTableCtrl>
									<UsageInfo chargeCode="Prepayment Charge USD">
										<access productCode="Prepayment USD" serviceAccessCode="Prepay@" userAccessCode="$CONTRACTID$"/>
									</UsageInfo>
								</chargeCondition>
								<chargeCondition subCode="Annual  Adjustment Charge USD" parentCode="Annual  Adjustment Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="IsNeedAnnual" isPrivate="false" type="number" value="0"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows/>
									</TranslationTableCtrl>
								</chargeCondition>
								<chargeCondition subCode="Ramped Pricing Tiers Charge USD" parentCode="Ramped Pricing Tiers Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="1TiersFrom" isPrivate="false" type="number" value="0"/>
													<parameter name="1TiersTo" isPrivate="false" type="number" value="0"/>
													<parameter name="1TiersPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="2TiersFrom" isPrivate="false" type="number" value="0"/>
													<parameter name="3TiersFrom" isPrivate="false" type="number" value="0"/>
													<parameter name="4TiersFrom" isPrivate="false" type="number" value="0"/>
													<parameter name="5TiersFrom" isPrivate="false" type="number" value="0"/>
													<parameter name="6TiersFrom" isPrivate="false" type="number" value="0"/>
													<parameter name="7TiersFrom" isPrivate="false" type="number" value="0"/>
													<parameter name="8TiersFrom" isPrivate="false" type="number" value="0"/>
													<parameter name="9TiersFrom" isPrivate="false" type="number" value="0"/>
													<parameter name="10TiersFrom" isPrivate="false" type="number" value="0"/>
													<parameter name="2TiersTo" isPrivate="false" type="number" value="0"/>
													<parameter name="3TiersTo" isPrivate="false" type="number" value="0"/>
													<parameter name="4TiersTo" isPrivate="false" type="number" value="0"/>
													<parameter name="5TiersTo" isPrivate="false" type="number" value="0"/>
													<parameter name="6TiersTo" isPrivate="false" type="number" value="0"/>
													<parameter name="7TiersTo" isPrivate="false" type="number" value="0"/>
													<parameter name="8TiersTo" isPrivate="false" type="number" value="0"/>
													<parameter name="9TiersTo" isPrivate="false" type="number" value="0"/>
													<parameter name="10TiersTo" isPrivate="false" type="number" value="0"/>
													<parameter name="2TiersPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="3TiersPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="4TiersPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="5TiersPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="6TiersPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="7TiersPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="8TiersPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="9TiersPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="10TiersPrice" isPrivate="false" type="number" value="0"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows/>
									</TranslationTableCtrl>
								</chargeCondition>
								<chargeCondition subCode="Flat Fee VOIP Charge USD" parentCode="Flat Fee VOIP Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="OfferName" isPrivate="false" type="string" value="Teleconference USD"/>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="C78"/>
													<parameter name="CIName" isPrivate="false" type="string" value="Flat Fee VOIP"/>
													<parameter name="UnitPrice" isPrivate="false" type="number" value="10"/>
													<parameter name="Prepay_Term" isPrivate="false" type="number" value="1"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row i0="ObFF" s0="Parameters_Root" s1="Flat Fee VOIP Charge USD" s2="(Obsolete)Monthly Flat Fee Integrated VoIP" s5="N">
												<line Number="L01">
													<row s0="Input_Box" s1="UnitPrice" s2="Flat Fee Integrated VoIP" s3="Number" s5="N" s6="Y" s7="10.00" s9="NULL" s10="NULL" s11="TRUE" s13="Unitprice" s16="NHost"/>
												</line>
											</row>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows>
											<row i0="C-Cancle" s0="Flat Fee VOIP Charge USD" s1="Charge" s2="No" s3="Single" s4="No" s5="Immediately" s6="Yes" s7="Next bill date - 10 secs" s8="No" s9="NA" s10="Y"/>
										</rows>
									</TranslationTableCtrl>
								</chargeCondition>
								<chargeCondition subCode="Named Hosts Charge USD" parentCode="Named Hosts Charge USD" manualActivable="true" blisActivationType="new" blischecked="false" creditor="WebEx USD">
									<ParamSetInstance>
										<allRequests>
											<chargeComponent>
												<pricePlan>
													<parameter name="Parameters_Root" isPrivate="false" type="string" value="C98"/>
													<parameter name="OfferName" isPrivate="false" type="string" value="EE Named Hosts FullDeployment 200 USD"/>
													<parameter name="CIName" isPrivate="false" type="string" value="NULL"/>
													<parameter name="BirthDate" description="birthday for monthly recurring" isPrivate="false" type="date" value="2008-01-01T00:00:00"/>
													<parameter name="PortQty" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="PortUnitPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="ExtendedPortsPrice" description="Set on UI" isPrivate="false" type="number" value="0"/>
													<parameter name="Initial_Term" description="Link from top offer" isPrivate="false" type="number" value="3"/>
													<parameter name="Free_Month" isPrivate="false" type="number" value="0"/>
													<parameter name="CancelType" description="set when do cancellation/link form top offer" isPrivate="false" type="string" value="NULL"/>
													<parameter name="BillingMonths" description="remaining months when termination/Link form top offer" isPrivate="false" type="number" value="0"/>
													<parameter name="PrevSubsCode" isPrivate="false" type="string" value="NULL"/>
													<parameter name="SubsCode" isPrivate="false" type="string" value="NULL"/>
													<parameter name="IsSMB" isPrivate="false" type="number" value="0"/>
													<parameter name="ServiceQty" isPrivate="false" type="number" value="0"/>
													<parameter name="Prepay_Term" isPrivate="false" type="number" value="0"/>
													<parameter name="Service_Tag" isPrivate="false" type="string" value="Null"/>
													<parameter name="IsVoIP" isPrivate="false" type="number" value="0"/>
													<parameter name="VoIPUnitPrice" isPrivate="false" type="number" value="0"/>
													<parameter name="isFlatFeeOld2New" isPrivate="false" type="number" value="0"/>
												</pricePlan>
											</chargeComponent>
										</allRequests>
									</ParamSetInstance>
									<TranslationTableInstance>
										<rows>
											<row/>
										</rows>
									</TranslationTableInstance>
									<TranslationTableCtrl>
										<rows/>
									</TranslationTableCtrl>
								</chargeCondition>
								<additionalInformation name="Version" value="5.1" type="string"/>
								<additionalInformation name="Publish Date" value="2007-09-17T16:42:05" type="date"/>
								<additionalInformation name="Publishers" value="Boming, Benard, Adey" type="string"/>
								<additionalInformation name="SERVICE_TYPE" value="MC" type="string"/>
								<additionalInformation name="Parameter Translation" value="PARAMETER_USD" type="string"/>
								<additionalInformation name="ChangeControl Translation" value="ChangeControl_USD" type="string"/>
								<additionalInformation name="SERVICE_MODEL" value="Seats" type="string"/>
								<ParamSetInstance>
									<parameterSet>
										<parameter name="OfferName" isPrivate="false" type="string" value="MC Named Hosts Pro USD" blisstatus="dirty" labelname="Offer Name" labelvalue="MC Named Hosts Pro 15"/>
										<parameter name="Initial_Term" isPrivate="false" type="number" value="1" blisstatus="dirty" labelname="Initial Term" labelvalue="1"/>
										<parameter name="Renewal_Term" isPrivate="false" type="number" value="0" blisstatus="dirty" labelname="Renewal Term" labelvalue="0"/>
										<parameter name="Free_Month" isPrivate="false" type="number" value="0" blisstatus="dirty" labelname="Number of Free Months" labelvalue="0"/>
										<parameter name="Parameters_Root" isPrivate="false" type="string" value="T68"/>
										<parameter name="OfferCreationDate" isPrivate="false" type="date" value="1992-01-01T00:00:00"/>
										<parameter name="CancelType" isPrivate="false" type="string" value="Null"/>
										<parameter name="BillingMonths" isPrivate="false" type="number" value="0"/>
										<parameter name="BillDay" isPrivate="false" type="number" value="1"/>
										<parameter name="SubsCode" isPrivate="false" type="string" value="Null"/>
										<parameter name="PrevSubsCode" isPrivate="false" type="string" value="Null"/>
										<parameter name="Reporting_Code" description="Normal, Self-Service" isPrivate="false" type="string" value="Normal" blisstatus="dirty" labelname="Reporting Code" labelvalue="Normal"/>
										<parameter name="ServiceName" isPrivate="false" type="string" value="MC"/>
										<parameter name="Prepay_Term" isPrivate="false" type="number" value="1" blisstatus="dirty" labelname="Prepay Term" labelvalue="1(Regular)"/>
										<parameter name="BirthDate" isPrivate="false" type="date" value="2010-07-01T00:00:00"/>
										<parameter name="IsFedRAMP" description="" isPrivate="false" type="string" value="Term Align"/>
									</parameterSet>
								</ParamSetInstance>
								<TranslationTableInstance>
									<rows>
										<row i0="T68" s0="Parameters_Root" s1="MC Named Hosts Pro USD" s2="MC Named Hosts Pro USD" s5="N">
											<line Number="L01">
												<row s0="Input_Box" s1="Initial_Term" s2="Initial Term" s3="Number" s5="N" s6="Y" s7="1" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo"/>
											</line>
											<line Number="L02">
												<row s0="Input_Box" s1="Renewal_Term" s2="Renewal Term" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo"/>
											</line>
											<line Number="L03">
												<row s0="Selection_Group" s1="Prepay_Term" s2="Prepay Term" s3="Number" s5="N" s6="Y" s7="1" s9="Initial_Term,Renewal_Term,Prepay_Term" s10="if(!(p[&apos;Initial_Term&apos;]%p[&apos;Prepay_Term&apos;]==0 &amp;&amp; p[&apos;Renewal_Term&apos;]%p[&apos;Prepay_Term&apos;]==0) &amp;&amp; p[&apos;Prepay_Term&apos;]!=-1){alert(&apos;Initial_Term &amp; Renewal_Term must be multiples of Prepay_Term&apos;);return 1;}" s11="TRUE" s13="Quantity" s16="Mo">
													<row s0="Selection_Option" s1="1" s2="1(Regular)" s3="Number" s11="FALSE" s7="1"/>
													<row s0="Selection_Option" s1="3" s2="3" s3="Number" s11="FALSE" s7="1"/>
													<row s0="Selection_Option" s1="6" s2="6" s3="Number" s11="FALSE" s7="1"/>
													<row s0="Selection_Option" s1="12" s2="12" s3="Number" s11="FALSE" s7="1"/>
													<row s0="Selection_Option" s1="-1" s2="TermAlign" s3="Number" s11="FALSE" s7="1"/>
												</row>
											</line>
											<line Number="L04">
												<row s0="Selection_Group" s1="Free_Month" s2="Number of Free Months" s3="Number" s5="N" s6="Y" s7="0" s9="NULL" s10="NULL" s11="TRUE" s13="Quantity" s16="Mo">
													<row s0="Selection_Option" s1="0" s2="0" s3="Number" s11="FALSE" s7="0"/>
													<row s0="Selection_Option" s1="1" s2="1" s3="Number" s11="FALSE" s7="0"/>
													<row s0="Selection_Option" s1="2" s2="2" s3="Number" s11="FALSE" s7="0"/>
												</row>
											</line>
											<line Number="L05">
												<row s0="Selection_Group" s1="Reporting_Code" s2="Reporting Code" s3="String" s5="N" s6="Y" s7="Normal" s9="OfferName" s10="NULL" s11="TRUE" s13="Normal">
													<row s0="Selection_Option" s1="Normal" s2="Normal" s3="String" s11="FALSE" s7="Normal"/>
												</row>
											</line>
											<line Number="L06">
												<row s0="Selection_Group" s1="OfferName" s2="Offer Name" s3="String" s5="N" s6="Y" s7="MC Named Hosts Pro 25 USD" s9="OfferName" s10=" var q=o[&apos;OfferName&apos;].value;if(q.indexOf(&apos;Oracle CRM&apos;)&gt;0){pt(&apos;To add Oracle OnDemand Options,add another service to this order using the Add-On Service - Oracle CRM Offer.&apos;);}if(q==&apos;Add Counter Citrix (MC NH25) USD&apos;||q==&apos;Add Counter Citrix (MC NH15) USD&apos;||q==&apos;MC NH Pro 25+EC LMR 1000 USD&apos;||q==&apos;MC NH Pro 25+EC LMR 500 USD&apos;){pt(&apos;To add Large Meeting Room Options, add another service to this order using the Add-On Service-MC Large Meeting Room Offer.&apos;);}if(q==&apos;MC 15 AIM Bundle USD&apos;||q==&apos;MC 25 AIM Bundle USD&apos;){pt(&apos;You must select Monthly Flat Fee Integrated VoIP option with 0 as the Unit Price &amp; select the Additional Site Option. Additionally,ensure VoIP under Teleconference is disabled(to avoid Double-Billing VoIP)&apos;);}var port=[&apos;PortQty&apos;,&apos;PortUnitPrice&apos;,&apos;ExtendedPortsPrice&apos;];if(q==&apos;MC+US Toll Call in+VoIP USD&apos;) {pt(&apos;Toll Call-in and VoIP must be De-Selected in the Teleconference charge&apos;);s_cpv(&apos;Ports1&apos;,port,[&apos;1&apos;,&apos;49&apos;,&apos;0&apos;]);}  if(q==&apos;Telefonica Virtual Session Service USD&apos;) pt(&apos;VoIP must be De-Selected in the Teleconference charge&apos;); if(q==&apos;MC Named Hosts Pro 25 USD&apos; || q==&apos;MC NH Pro 25+EC LMR 500 USD&apos;||q==&apos;MC NH Pro 25+EC LMR 1000 USD&apos; || q==&apos;Add Counter Citrix (MC NH25) USD&apos;)s_cpv(&apos;Ports1&apos;,port,[&apos;1&apos;,&apos;49&apos;,&apos;0&apos;]); if(q==&apos;MC Named Hosts Pro 200 USD&apos;)s_cpv(&apos;Ports1&apos;,port,[&apos;25&apos;,&apos;65&apos;,&apos;0&apos;]); if(q==&apos;Full Deployment MC25 Named Host USD&apos;)s_cpv(&apos;Ports1&apos;,port,[&apos;100&apos;,&apos;20&apos;,&apos;0&apos;]); if(q==&apos;Full Deployment MC200 Named Host USD&apos;)s_cpv(&apos;Ports1&apos;,port,[&apos;100&apos;,&apos;27&apos;,&apos;0&apos;]); if(q==&apos;MC NH 25 for Emerging Market USD&apos;)s_cpv(&apos;Ports1&apos;,port,[&apos;1&apos;,&apos;49&apos;,&apos;0&apos;]);if(q==&apos;Full Deployment MC1000 Named Host USD&apos;)s_cpv(&apos;Ports1&apos;,port,[&apos;100&apos;,&apos;0&apos;,&apos;0&apos;]);if(q==&apos;MC Named Hosts Pro 8 EDU (Restricted) USD&apos; || q==&apos;MC Named Hosts Pro 8 HCS (Restricted) USD&apos;) {s_cpv(&apos;Ports1&apos;, port, [&apos;1&apos;,&apos;24&apos;, &apos;0&apos;]);} var qNU= &apos;Toll Named Users Charge&apos;;var p1= c_cp(&apos;Ports1&apos;,&apos;PortQty&apos;).value;var p2= c_cp(&apos;Ports1&apos;,&apos;CompPortQty&apos;).value;var p3=c_cp(qNU,&apos;TNUOptions&apos;).value; var TNU=[&apos;TollNUQty&apos;,&apos;TollNUUnitPrice&apos;,&apos;TollNUExtPrice&apos;,&apos;TollNUCompQty&apos;];if(p3==&apos;TNU Plus&apos;){s_cpv(qNU,TNU,[p1,&apos;11.5000&apos;,(p1*11.5000).toFixed(4),p2]);}else{s_cpv(qNU,TNU,[p1,&apos;7.7500&apos;,(p1*7.7500).toFixed(4),p2]);}" s11="TRUE" s13="Normal">
													<row s0="Selection_Option" s1="MC Named Hosts Pro 25 USD" s2="MC Named Hosts Pro 25" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="MC Named Hosts Pro 200 USD" s2="MC Named Hosts Pro 200" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="MC+US Toll Call in+VoIP USD" s2="Meetings Plus Promo (MC + US Toll Call in + VoIP)" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="MC NH Pro 25+EC LMR 500 USD" s2="MC NH Pro 25+EC LMR 500" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="MC NH Pro 25+EC LMR 1000 USD" s2="MC NH Pro 25+EC LMR 1000" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="MC Named Hosts Pro 8 EDU (Restricted) USD" s2="MC Named Hosts Pro 8 EDU (Restricted)" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="MC Named Hosts Pro 8 HCS (Restricted) USD" s2="MC Named Hosts Pro 8 HCS (Restricted)" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="MC Named Hosts Pro USD" s2="MC Named Hosts Pro 15" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="Full Deployment MC25 Named Host USD" s2="MC NH 25 Full Deployment" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="Full Deployment MC200 Named Host USD" s2="MC NH 200 Full Deployment" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="Full Deployment MC1000 Named Host USD" s2="(OBSOLETE)MC NH 1000 Full Deployment" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="Meeting Center India Edition USD" s2="Meeting Center India Edition" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="Meeting Center Individual USD" s2="Meeting Center Individual" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="Add Counter Citrix (MC NH25) USD" s2="(OBSOLETE)Meeting Center 25 + Event Center Large Room" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
													<row s0="Selection_Option" s1="MC Named Hosts 5 for OITC USD" s2="(OBSOLETE)MC Named Hosts 5" s3="String" s11="FALSE" s7="MC Named Hosts Pro 25 USD"/>
												</row>
											</line>
										</row>
									</rows>
								</TranslationTableInstance>
								<TranslationTableCtrl>
									<rows>
										<row i0="T68" s0="MC Named Hosts Pro USD" s1="Top Offer" s2="NA" s3="Single" s4="NA" s5="Immediately" s6="Yes" s7="Next bill date - 10 secs" s8="Yes" s9="Immediately" s10="Y" s11=""/>
									</rows>
								</TranslationTableCtrl>
							</offer>
						</OfferInstance>