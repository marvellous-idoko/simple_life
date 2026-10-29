# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://live-retail-api.heirsinsurance.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBeneficiaryShareToCoupleDocument**](DefaultApi.md#addbeneficiarysharetocoupledocument) | **PATCH** /document/{documentId}/couple/beneficiary-share/{beneficiaryId} | 
[**addBeneficiaryShareToEndowmentDocument**](DefaultApi.md#addbeneficiarysharetoendowmentdocument) | **PATCH** /document/{documentId}/endowment/beneficiary-share/{beneficiaryId} | 
[**addBeneficiaryShareToHeirs3YearsDocument**](DefaultApi.md#addbeneficiarysharetoheirs3yearsdocument) | **PATCH** /document/{documentId}/heirs3years/beneficiary-share/{beneficiaryId} | 
[**addBeneficiaryShareToMyHeirsDocument**](DefaultApi.md#addbeneficiarysharetomyheirsdocument) | **PATCH** /document/{documentId}/my-heirs/beneficiary-share/{beneficiaryId} | 
[**addBeneficiaryShareToMyHeirsPlusDocument**](DefaultApi.md#addbeneficiarysharetomyheirsplusdocument) | **PATCH** /document/{documentId}/my-heirs-plus/beneficiary-share/{beneficiaryId} | 
[**addBeneficiaryShareToSalaryDocument**](DefaultApi.md#addbeneficiarysharetosalarydocument) | **PATCH** /document/{documentId}/salary/beneficiary-share/{beneficiaryId} | 
[**addBeneficiaryShareToSaveDocument**](DefaultApi.md#addbeneficiarysharetosavedocument) | **PATCH** /document/{documentId}/save/beneficiary-share/{beneficiaryId} | 
[**addBeneficiaryShareToSaveExtraDocument**](DefaultApi.md#addbeneficiarysharetosaveextradocument) | **PATCH** /document/{documentId}/save-extra/beneficiary-share/{beneficiaryId} | 
[**addBeneficiaryShareToTriplePayDocument**](DefaultApi.md#addbeneficiarysharetotriplepaydocument) | **PATCH** /document/{documentId}/triple-pay/beneficiary-share/{beneficiaryId} | 
[**addCustomerTo3rdPartyDocument**](DefaultApi.md#addcustomerto3rdpartydocument) | **PATCH** /document/{documentId}/3rd-party | 
[**addCustomerTo3rdPartyFireAndTheftDocument**](DefaultApi.md#addcustomerto3rdpartyfireandtheftdocument) | **PATCH** /document/{documentId}/3rd-party-fire-and-theft | 
[**addCustomerTo3rdPartyPlusDocument**](DefaultApi.md#addcustomerto3rdpartyplusdocument) | **PATCH** /document/{documentId}/3rd-party-plus | 
[**addCustomerToAccidentBronzeDocument**](DefaultApi.md#addcustomertoaccidentbronzedocument) | **PATCH** /document/{documentId}/personal-accident-bronze | 
[**addCustomerToAccidentGoldDocument**](DefaultApi.md#addcustomertoaccidentgolddocument) | **PATCH** /document/{documentId}/personal-accident-gold | 
[**addCustomerToAccidentPlatinumDocument**](DefaultApi.md#addcustomertoaccidentplatinumdocument) | **PATCH** /document/{documentId}/personal-accident-platinum | 
[**addCustomerToAccidentSilverDocument**](DefaultApi.md#addcustomertoaccidentsilverdocument) | **PATCH** /document/{documentId}/personal-accident-silver | 
[**addCustomerToComprehensiveDocument**](DefaultApi.md#addcustomertocomprehensivedocument) | **PATCH** /document/{documentId}/comprehensive | 
[**addCustomerToCoupleDocument**](DefaultApi.md#addcustomertocoupledocument) | **PATCH** /document/{documentId}/couple | 
[**addCustomerToEndowmentDocument**](DefaultApi.md#addcustomertoendowmentdocument) | **PATCH** /documents/{documentId}/endowment | 
[**addCustomerToHeirs25kDocument**](DefaultApi.md#addcustomertoheirs25kdocument) | **PATCH** /document/{documentId}/heirs-25k | 
[**addCustomerToHeirs35kDocument**](DefaultApi.md#addcustomertoheirs35kdocument) | **PATCH** /document/{documentId}/heirs-35k | 
[**addCustomerToHeirs3YearsDocument**](DefaultApi.md#addcustomertoheirs3yearsdocument) | **PATCH** /document/{documentId}/heirs3years | 
[**addCustomerToHeirs70kDocument**](DefaultApi.md#addcustomertoheirs70kdocument) | **PATCH** /document/{documentId}/heirs-70k | 
[**addCustomerToHerMotorDocument**](DefaultApi.md#addcustomertohermotordocument) | **PATCH** /document/{documentId}/her-motor | 
[**addCustomerToMyHeirsDocument**](DefaultApi.md#addcustomertomyheirsdocument) | **PATCH** /document/{documentId}/my-heirs | 
[**addCustomerToMyHeirsPlusDocument**](DefaultApi.md#addcustomertomyheirsplusdocument) | **PATCH** /document/{documentId}/my-heirs-plus | 
[**addCustomerToSalaryDocument**](DefaultApi.md#addcustomertosalarydocument) | **PATCH** /document/{documentId}/salary | 
[**addCustomerToSaveDocument**](DefaultApi.md#addcustomertosavedocument) | **PATCH** /document/{documentId}/save | 
[**addCustomerToSaveExtraDocument**](DefaultApi.md#addcustomertosaveextradocument) | **PATCH** /document/{documentId}/save-extra | 
[**addCustomerToTriplePayDocument**](DefaultApi.md#addcustomertotriplepaydocument) | **PATCH** /document/{documentId}/triple-pay | 
[**addHealthFormToInsuredPerson**](DefaultApi.md#addhealthformtoinsuredperson) | **PATCH** /insured-person/{personId} | 
[**addItemToCart**](DefaultApi.md#additemtocart) | **POST** /cart/{cartId} | 
[**addLifeEntryToCoupleDocument**](DefaultApi.md#addlifeentrytocoupledocument) | **PUT** /document/{documentId}/couple | 
[**addMotorTo3rdPartyDocument**](DefaultApi.md#addmotorto3rdpartydocument) | **PATCH** /document/{documentId}/3rd-party/{motorId} | 
[**addMotorTo3rdPartyFireAndTheftDocument**](DefaultApi.md#addmotorto3rdpartyfireandtheftdocument) | **PATCH** /document/{documentId}/3rd-party-fire-and-theft/{motorId} | 
[**addMotorTo3rdPartyPlusDocument**](DefaultApi.md#addmotorto3rdpartyplusdocument) | **PATCH** /document/{documentId}/3rd-party-plus/{motorId} | 
[**addMotorToComprehensiveDocument**](DefaultApi.md#addmotortocomprehensivedocument) | **PATCH** /document/{documentId}/comprehensive/{motorId} | 
[**addMotorToHeirs25kDocument**](DefaultApi.md#addmotortoheirs25kdocument) | **PATCH** /document/{documentId}/heirs-25k/{motorId} | 
[**addMotorToHeirs35kDocument**](DefaultApi.md#addmotortoheirs35kdocument) | **PATCH** /document/{documentId}/heirs-35k/{motorId} | 
[**addMotorToHeirs70kDocument**](DefaultApi.md#addmotortoheirs70kdocument) | **PATCH** /document/{documentId}/heirs-70k/{motorId} | 
[**addMotorToHerMotorDocument**](DefaultApi.md#addmotortohermotordocument) | **PATCH** /document/{documentId}/her-motor/{motorId} | 
[**addPersonToAccidentBronzeDocument**](DefaultApi.md#addpersontoaccidentbronzedocument) | **PATCH** /document/{documentId}/personal-accident-bronze/{accidentId} | 
[**addPersonToAccidentGoldDocument**](DefaultApi.md#addpersontoaccidentgolddocument) | **PATCH** /document/{documentId}/personal-accident-gold/{accidentId} | 
[**addPersonToAccidentPlatinumDocument**](DefaultApi.md#addpersontoaccidentplatinumdocument) | **PATCH** /document/{documentId}/personal-accident-platinum/{accidentId} | 
[**addPersonToAccidentSilverDocument**](DefaultApi.md#addpersontoaccidentsilverdocument) | **PATCH** /document/{documentId}/personal-accident-silver/{accidentId} | 
[**addRiderToCoupleDocument**](DefaultApi.md#addridertocoupledocument) | **PATCH** /document/{documentId}/couple/rider | 
[**addRiderToEndowmentDocument**](DefaultApi.md#addridertoendowmentdocument) | **PATCH** /document/{documentId}/endowment/rider | 
[**addRiderToMyHeirsDocument**](DefaultApi.md#addridertomyheirsdocument) | **PATCH** /document/{documentId}/my-heirs/rider | 
[**addRiderToMyHeirsPlusDocument**](DefaultApi.md#addridertomyheirsplusdocument) | **PATCH** /document/{documentId}/my-heirs-plus/rider | 
[**addRiderToSalaryDocument**](DefaultApi.md#addridertosalarydocument) | **PATCH** /document/{documentId}/salary/rider | 
[**addRiderToSaveExtraDocument**](DefaultApi.md#addridertosaveextradocument) | **PATCH** /document/{documentId}/save-extra/rider | 
[**addRiderToTriplePayDocument**](DefaultApi.md#addridertotriplepaydocument) | **PATCH** /document/{documentId}/triple-pay/rider | 
[**create3rdPartyDocument**](DefaultApi.md#create3rdpartydocument) | **POST** /document/{documentId}/3rd-party | 
[**create3rdPartyFireAndTheftDocument**](DefaultApi.md#create3rdpartyfireandtheftdocument) | **POST** /document/{documentId}/3rd-party-fire-and-theft | 
[**create3rdPartyPlusDocument**](DefaultApi.md#create3rdpartyplusdocument) | **POST** /document/{documentId}/3rd-party-plus | 
[**createAccidentBronzeDocument**](DefaultApi.md#createaccidentbronzedocument) | **POST** /document/{documentId}/personal-accident-bronze | 
[**createAccidentGoldDocument**](DefaultApi.md#createaccidentgolddocument) | **POST** /document/{documentId}/personal-accident-gold | 
[**createAccidentPerson**](DefaultApi.md#createaccidentperson) | **POST** /accident-person/{personId} | 
[**createAccidentPlatinumDocument**](DefaultApi.md#createaccidentplatinumdocument) | **POST** /document/{documentId}/personal-accident-platinum | 
[**createAccidentSilverDocument**](DefaultApi.md#createaccidentsilverdocument) | **POST** /document/{documentId}/personal-accident-silver | 
[**createBeneficiary**](DefaultApi.md#createbeneficiary) | **POST** /beneficiary/{beneficiaryId} | 
[**createComprehensiveDocument**](DefaultApi.md#createcomprehensivedocument) | **POST** /document/{documentId}/comprehensive | 
[**createCoupleDocument**](DefaultApi.md#createcoupledocument) | **POST** /document/{documentId}/couple | 
[**createCustomer**](DefaultApi.md#createcustomer) | **POST** /customer/{customerId} | 
[**createEndowmentDocument**](DefaultApi.md#createendowmentdocument) | **POST** /documents/{documentId}/endowment | 
[**createHeirs25kDocument**](DefaultApi.md#createheirs25kdocument) | **POST** /document/{documentId}/heirs-25k | 
[**createHeirs35kDocument**](DefaultApi.md#createheirs35kdocument) | **POST** /document/{documentId}/heirs-35k | 
[**createHeirs3YearsDocument**](DefaultApi.md#createheirs3yearsdocument) | **POST** /document/{documentId}/heirs3years | 
[**createHeirs70kDocument**](DefaultApi.md#createheirs70kdocument) | **POST** /document/{documentId}/heirs-70k | 
[**createHerMotorDocument**](DefaultApi.md#createhermotordocument) | **POST** /document/{documentId}/her-motor | 
[**createInsuredPerson**](DefaultApi.md#createinsuredperson) | **POST** /insured-person/{personId} | 
[**createMotorParticulars**](DefaultApi.md#createmotorparticulars) | **POST** /motor/{motorId} | 
[**createMyHeirsDocument**](DefaultApi.md#createmyheirsdocument) | **POST** /document/{documentId}/my-heirs | 
[**createMyHeirsPlusDocument**](DefaultApi.md#createmyheirsplusdocument) | **POST** /document/{documentId}/my-heirs-plus | 
[**createOTP**](DefaultApi.md#createotp) | **POST** /user/otp | 
[**createPassword**](DefaultApi.md#createpassword) | **POST** /user/password | 
[**createSalaryDocument**](DefaultApi.md#createsalarydocument) | **POST** /document/{documentId}/salary | 
[**createSaveDocument**](DefaultApi.md#createsavedocument) | **POST** /document/{documentId}/save | 
[**createSaveExtraDocument**](DefaultApi.md#createsaveextradocument) | **POST** /document/{documentId}/save-extra | 
[**createTriplePayDocument**](DefaultApi.md#createtriplepaydocument) | **POST** /document/{documentId}/triple-pay | 
[**deleteBeneficiaryShareFromCoupleDocument**](DefaultApi.md#deletebeneficiarysharefromcoupledocument) | **DELETE** /document/{documentId}/couple/beneficiary-share/{beneficiaryId} | 
[**deleteBeneficiaryShareFromEndowmentDocument**](DefaultApi.md#deletebeneficiarysharefromendowmentdocument) | **DELETE** /document/{documentId}/endowment/beneficiary-share/{beneficiaryId} | 
[**deleteBeneficiaryShareFromHeirs3YearsDocument**](DefaultApi.md#deletebeneficiarysharefromheirs3yearsdocument) | **DELETE** /document/{documentId}/heirs3years/beneficiary-share/{beneficiaryId} | 
[**deleteBeneficiaryShareFromMyHeirsDocument**](DefaultApi.md#deletebeneficiarysharefrommyheirsdocument) | **DELETE** /document/{documentId}/my-heirs/beneficiary-share/{beneficiaryId} | 
[**deleteBeneficiaryShareFromMyHeirsPlusDocument**](DefaultApi.md#deletebeneficiarysharefrommyheirsplusdocument) | **DELETE** /document/{documentId}/my-heirs-plus/beneficiary-share/{beneficiaryId} | 
[**deleteBeneficiaryShareFromSalaryDocument**](DefaultApi.md#deletebeneficiarysharefromsalarydocument) | **DELETE** /document/{documentId}/salary/beneficiary-share/{beneficiaryId} | 
[**deleteBeneficiaryShareFromSaveDocument**](DefaultApi.md#deletebeneficiarysharefromsavedocument) | **DELETE** /document/{documentId}/save/beneficiary-share/{beneficiaryId} | 
[**deleteBeneficiaryShareFromSaveExtraDocument**](DefaultApi.md#deletebeneficiarysharefromsaveextradocument) | **DELETE** /document/{documentId}/save-extra/beneficiary-share/{beneficiaryId} | 
[**deleteBeneficiaryShareFromTriplePayDocument**](DefaultApi.md#deletebeneficiarysharefromtriplepaydocument) | **DELETE** /document/{documentId}/triple-pay/beneficiary-share/{beneficiaryId} | 
[**deleteCartItem**](DefaultApi.md#deletecartitem) | **DELETE** /cart/{cartId} | 
[**deleteMotorFrom3rdPartyDocument**](DefaultApi.md#deletemotorfrom3rdpartydocument) | **DELETE** /document/{documentId}/3rd-party/{motorId} | 
[**deleteMotorFrom3rdPartyFireAndTheftDocument**](DefaultApi.md#deletemotorfrom3rdpartyfireandtheftdocument) | **DELETE** /document/{documentId}/3rd-party-fire-and-theft/{motorId} | 
[**deleteMotorFrom3rdPartyPlusDocument**](DefaultApi.md#deletemotorfrom3rdpartyplusdocument) | **DELETE** /document/{documentId}/3rd-party-plus/{motorId} | 
[**deleteMotorFromComprehensiveDocument**](DefaultApi.md#deletemotorfromcomprehensivedocument) | **DELETE** /document/{documentId}/comprehensive/{motorId} | 
[**deleteMotorFromHeirs25kDocument**](DefaultApi.md#deletemotorfromheirs25kdocument) | **DELETE** /document/{documentId}/heirs-25k/{motorId} | 
[**deleteMotorFromHeirs35kDocument**](DefaultApi.md#deletemotorfromheirs35kdocument) | **DELETE** /document/{documentId}/heirs-35k/{motorId} | 
[**deleteMotorFromHeirs70kDocument**](DefaultApi.md#deletemotorfromheirs70kdocument) | **DELETE** /document/{documentId}/heirs-70k/{motorId} | 
[**deleteMotorFromHerMotorDocument**](DefaultApi.md#deletemotorfromhermotordocument) | **DELETE** /document/{documentId}/her-motor/{motorId} | 
[**deletePersonFromAccidentBronzeDocument**](DefaultApi.md#deletepersonfromaccidentbronzedocument) | **DELETE** /document/{documentId}/personal-accident-bronze/{accidentId} | 
[**deletePersonFromAccidentGoldDocument**](DefaultApi.md#deletepersonfromaccidentgolddocument) | **DELETE** /document/{documentId}/personal-accident-gold/{accidentId} | 
[**deletePersonFromAccidentPlatinumDocument**](DefaultApi.md#deletepersonfromaccidentplatinumdocument) | **DELETE** /document/{documentId}/personal-accident-platinum/{accidentId} | 
[**deletePersonFromAccidentSilverDocument**](DefaultApi.md#deletepersonfromaccidentsilverdocument) | **DELETE** /document/{documentId}/personal-accident-silver/{accidentId} | 
[**deleteRiderCoupleDocument**](DefaultApi.md#deleteridercoupledocument) | **DELETE** /document/{documentId}/couple/rider | 
[**deleteRiderEndowmentDocument**](DefaultApi.md#deleteriderendowmentdocument) | **DELETE** /document/{documentId}/endowment/rider | 
[**deleteRiderMyHeirsDocument**](DefaultApi.md#deleteridermyheirsdocument) | **DELETE** /document/{documentId}/my-heirs/rider | 
[**deleteRiderMyHeirsPlusDocument**](DefaultApi.md#deleteridermyheirsplusdocument) | **DELETE** /document/{documentId}/my-heirs-plus/rider | 
[**deleteRiderSalaryDocument**](DefaultApi.md#deleteridersalarydocument) | **DELETE** /document/{documentId}/salary/rider | 
[**deleteRiderSaveExtraDocument**](DefaultApi.md#deleteridersaveextradocument) | **DELETE** /document/{documentId}/save-extra/rider | 
[**deleteRiderTriplePayDocument**](DefaultApi.md#deleteridertriplepaydocument) | **DELETE** /document/{documentId}/triple-pay/rider | 
[**get3rdPartyDocument**](DefaultApi.md#get3rdpartydocument) | **GET** /document/{documentId}/3rd-party | 
[**get3rdPartyFireAndTheftDocument**](DefaultApi.md#get3rdpartyfireandtheftdocument) | **GET** /document/{documentId}/3rd-party-fire-and-theft | 
[**get3rdPartyFireAndTheftQuote**](DefaultApi.md#get3rdpartyfireandtheftquote) | **GET** /motor/quote/3rd-party-fire-and-theft/{motorClass}/{motorValue} | 
[**get3rdPartyPlusDocument**](DefaultApi.md#get3rdpartyplusdocument) | **GET** /document/{documentId}/3rd-party-plus | 
[**get3rdPartyPlusQuote**](DefaultApi.md#get3rdpartyplusquote) | **GET** /motor/quote/3rd-party-plus/{motorClass}/{motorType} | 
[**get3rdPartyQuote**](DefaultApi.md#get3rdpartyquote) | **GET** /motor/quote/3rd-party/{motorClass}/{motorType} | 
[**get3rdPartyQuoteOptions**](DefaultApi.md#get3rdpartyquoteoptions) | **GET** /motor/quote/3rd-party/options/{motorClass}/{motorType} | 
[**getAccidentBronzeDocument**](DefaultApi.md#getaccidentbronzedocument) | **GET** /document/{documentId}/personal-accident-bronze | 
[**getAccidentBronzeDocumentPremium**](DefaultApi.md#getaccidentbronzedocumentpremium) | **GET** /document/{documentId}/personal-accident-bronze/premium | 
[**getAccidentBronzeInterestPremium**](DefaultApi.md#getaccidentbronzeinterestpremium) | **GET** /document/{documentId}/personal-accident-bronze/{accidentId}/premium | 
[**getAccidentGoldDocument**](DefaultApi.md#getaccidentgolddocument) | **GET** /document/{documentId}/personal-accident-gold | 
[**getAccidentGoldDocumentPremium**](DefaultApi.md#getaccidentgolddocumentpremium) | **GET** /document/{documentId}/personal-accident-gold/premium | 
[**getAccidentGoldInterestPremium**](DefaultApi.md#getaccidentgoldinterestpremium) | **GET** /document/{documentId}/personal-accident-gold/{accidentId}/premium | 
[**getAccidentPerson**](DefaultApi.md#getaccidentperson) | **GET** /accident-person/{personId} | 
[**getAccidentPlatinumDocument**](DefaultApi.md#getaccidentplatinumdocument) | **GET** /document/{documentId}/personal-accident-platinum | 
[**getAccidentPlatinumDocumentPremium**](DefaultApi.md#getaccidentplatinumdocumentpremium) | **GET** /document/{documentId}/personal-accident-platinum/premium | 
[**getAccidentPlatinumInterestPremium**](DefaultApi.md#getaccidentplatinuminterestpremium) | **GET** /document/{documentId}/personal-accident-platinum/{accidentId}/premium | 
[**getAccidentSilverDocument**](DefaultApi.md#getaccidentsilverdocument) | **GET** /document/{documentId}/personal-accident-silver | 
[**getAccidentSilverDocumentPremium**](DefaultApi.md#getaccidentsilverdocumentpremium) | **GET** /document/{documentId}/personal-accident-silver/premium | 
[**getAccidentSilverInterestPremium**](DefaultApi.md#getaccidentsilverinterestpremium) | **GET** /document/{documentId}/personal-accident-silver/{accidentId}/premium | 
[**getBeneficiariesByLoggedInUser**](DefaultApi.md#getbeneficiariesbyloggedinuser) | **GET** /beneficiaries | 
[**getBeneficiaryById**](DefaultApi.md#getbeneficiarybyid) | **GET** /beneficiary/{beneficiaryId} | 
[**getBeneficiaryShareFromCoupleDocument**](DefaultApi.md#getbeneficiarysharefromcoupledocument) | **GET** /document/{documentId}/couple/beneficiary-share/{beneficiaryId} | 
[**getBeneficiaryShareFromEndowmentDocument**](DefaultApi.md#getbeneficiarysharefromendowmentdocument) | **GET** /document/{documentId}/endowment/beneficiary-share/{beneficiaryId} | 
[**getBeneficiaryShareFromHeirs3YearsDocument**](DefaultApi.md#getbeneficiarysharefromheirs3yearsdocument) | **GET** /document/{documentId}/heirs3years/beneficiary-share/{beneficiaryId} | 
[**getBeneficiaryShareFromMyHeirsDocument**](DefaultApi.md#getbeneficiarysharefrommyheirsdocument) | **GET** /document/{documentId}/my-heirs/beneficiary-share/{beneficiaryId} | 
[**getBeneficiaryShareFromMyHeirsPlusDocument**](DefaultApi.md#getbeneficiarysharefrommyheirsplusdocument) | **GET** /document/{documentId}/my-heirs-plus/beneficiary-share/{beneficiaryId} | 
[**getBeneficiaryShareFromSalaryDocument**](DefaultApi.md#getbeneficiarysharefromsalarydocument) | **GET** /document/{documentId}/salary/beneficiary-share/{beneficiaryId} | 
[**getBeneficiaryShareFromSaveDocument**](DefaultApi.md#getbeneficiarysharefromsavedocument) | **GET** /document/{documentId}/save/beneficiary-share/{beneficiaryId} | 
[**getBeneficiaryShareFromSaveExtraDocument**](DefaultApi.md#getbeneficiarysharefromsaveextradocument) | **GET** /document/{documentId}/save-extra/beneficiary-share/{beneficiaryId} | 
[**getBeneficiaryShareFromTriplePayDocument**](DefaultApi.md#getbeneficiarysharefromtriplepaydocument) | **GET** /document/{documentId}/triple-pay/beneficiary-share/{beneficiaryId} | 
[**getCartItem**](DefaultApi.md#getcartitem) | **GET** /cart/{cartId} | 
[**getComprehensiveDocument**](DefaultApi.md#getcomprehensivedocument) | **GET** /document/{documentId}/comprehensive | 
[**getComprehensiveDocumentPremium**](DefaultApi.md#getcomprehensivedocumentpremium) | **GET** /document/{documentId}/comprehensive/premium | 
[**getComprehensiveInterestPremium**](DefaultApi.md#getcomprehensiveinterestpremium) | **GET** /document/{documentId}/comprehensive/{motorId}/premium | 
[**getComprehensivePlusQuote**](DefaultApi.md#getcomprehensiveplusquote) | **GET** /motor/quote/comprehensive-plus/{motorClass}/{motorValue} | 
[**getComprehensiveQuote**](DefaultApi.md#getcomprehensivequote) | **GET** /motor/quote/comprehensive/{motorClass}/{motorValue} | 
[**getComprehensiveQuoteOptions**](DefaultApi.md#getcomprehensivequoteoptions) | **GET** /motor/quote/comprehensive/options/{motorClass}/{motorValue} | 
[**getCoupleDocument**](DefaultApi.md#getcoupledocument) | **GET** /document/{documentId}/couple | 
[**getCouplePremium**](DefaultApi.md#getcouplepremium) | **GET** /document/{documentId}/couple/premium | 
[**getCouplePremiumQuote**](DefaultApi.md#getcouplepremiumquote) | **GET** /couple/quote-premium/{premium}/{contribution}/{dob}/{term}/{frequency} | 
[**getCoupleSumAssuredQuote**](DefaultApi.md#getcouplesumassuredquote) | **GET** /couple/quote-assured/{sumAssured}/{savings}/{dob}/{term}/{frequency} | 
[**getCustomerById**](DefaultApi.md#getcustomerbyid) | **GET** /customer/{customerId} | 
[**getCustomersByLoggedInUser**](DefaultApi.md#getcustomersbyloggedinuser) | **GET** /customers | 
[**getEndowmentDocument**](DefaultApi.md#getendowmentdocument) | **GET** /documents/{documentId}/endowment | 
[**getEndowmentPremium**](DefaultApi.md#getendowmentpremium) | **GET** /document/{documentId}/endowment/premium | 
[**getHeirs25kDocument**](DefaultApi.md#getheirs25kdocument) | **GET** /document/{documentId}/heirs-25k | 
[**getHeirs25kDocumentPremium**](DefaultApi.md#getheirs25kdocumentpremium) | **GET** /document/{documentId}/heirs-25k/premium | 
[**getHeirs25kInterestPremium**](DefaultApi.md#getheirs25kinterestpremium) | **GET** /document/{documentId}/heirs-25k/{motorId}/premium | 
[**getHeirs25kQuote**](DefaultApi.md#getheirs25kquote) | **GET** /motor/quote/heirs-25k | 
[**getHeirs35kDocument**](DefaultApi.md#getheirs35kdocument) | **GET** /document/{documentId}/heirs-35k | 
[**getHeirs35kDocumentPremium**](DefaultApi.md#getheirs35kdocumentpremium) | **GET** /document/{documentId}/heirs-35k/premium | 
[**getHeirs35kInterestPremium**](DefaultApi.md#getheirs35kinterestpremium) | **GET** /document/{documentId}/heirs-35k/{motorId}/premium | 
[**getHeirs35kQuote**](DefaultApi.md#getheirs35kquote) | **GET** /motor/quote/heirs-35k | 
[**getHeirs3YearsDocument**](DefaultApi.md#getheirs3yearsdocument) | **GET** /document/{documentId}/heirs3years | 
[**getHeirs3YearsPremium**](DefaultApi.md#getheirs3yearspremium) | **GET** /document/{documentId}/heirs3years/premium | 
[**getHeirs3YearsPremiumQuote**](DefaultApi.md#getheirs3yearspremiumquote) | **GET** /heirs3years/quote-premium/{premium}/{dob}/{term}/{frequency} | 
[**getHeirs3YearsSumAssuredQuote**](DefaultApi.md#getheirs3yearssumassuredquote) | **GET** /heirs3years/quote-assured/{sumAssured}/{dob}/{term}/{frequency} | 
[**getHeirs70kDocument**](DefaultApi.md#getheirs70kdocument) | **GET** /document/{documentId}/heirs-70k | 
[**getHeirs70kDocumentPremium**](DefaultApi.md#getheirs70kdocumentpremium) | **GET** /document/{documentId}/heirs-70k/premium | 
[**getHeirs70kInterestPremium**](DefaultApi.md#getheirs70kinterestpremium) | **GET** /document/{documentId}/heirs-70k/{motorId}/premium | 
[**getHeirs70kQuote**](DefaultApi.md#getheirs70kquote) | **GET** /motor/quote/heirs-70k | 
[**getHerMotorDocument**](DefaultApi.md#gethermotordocument) | **GET** /document/{documentId}/her-motor | 
[**getHerMotorDocumentPremium**](DefaultApi.md#gethermotordocumentpremium) | **GET** /document/{documentId}/her-motor/premium | 
[**getHerMotorInterestPremium**](DefaultApi.md#gethermotorinterestpremium) | **GET** /document/{documentId}/her-motor/{motorId}/premium | 
[**getHerMotorQuote**](DefaultApi.md#gethermotorquote) | **GET** /motor/quote/her-motor/{motorClass}/{motorValue} | 
[**getHerMotorQuoteOptions**](DefaultApi.md#gethermotorquoteoptions) | **GET** /motor/quote/her-motor/options/{motorClass}/{motorValue} | 
[**getInsuredPersonById**](DefaultApi.md#getinsuredpersonbyid) | **GET** /insured-person/{personId} | 
[**getInsuredPersonsByLoggedInUser**](DefaultApi.md#getinsuredpersonsbyloggedinuser) | **GET** /insured-persons | 
[**getLgas**](DefaultApi.md#getlgas) | **GET** /lga | 
[**getLoggedInUser**](DefaultApi.md#getloggedinuser) | **GET** /user | 
[**getMotor3rdPartyFireAndTheftDocument**](DefaultApi.md#getmotor3rdpartyfireandtheftdocument) | **GET** /document/{documentId}/3rd-party-fire-and-theft/{motorId} | 
[**getMotorFrom3rdPartyDocument**](DefaultApi.md#getmotorfrom3rdpartydocument) | **GET** /document/{documentId}/3rd-party/{motorId} | 
[**getMotorFrom3rdPartyPlusDocument**](DefaultApi.md#getmotorfrom3rdpartyplusdocument) | **GET** /document/{documentId}/3rd-party-plus/{motorId} | 
[**getMotorFromComprehensiveDocument**](DefaultApi.md#getmotorfromcomprehensivedocument) | **GET** /document/{documentId}/comprehensive/{motorId} | 
[**getMotorFromHeirs25kDocument**](DefaultApi.md#getmotorfromheirs25kdocument) | **GET** /document/{documentId}/heirs-25k/{motorId} | 
[**getMotorFromHeirs35kDocument**](DefaultApi.md#getmotorfromheirs35kdocument) | **GET** /document/{documentId}/heirs-35k/{motorId} | 
[**getMotorFromHeirs70kDocument**](DefaultApi.md#getmotorfromheirs70kdocument) | **GET** /document/{documentId}/heirs-70k/{motorId} | 
[**getMotorFromHerMotorDocument**](DefaultApi.md#getmotorfromhermotordocument) | **GET** /document/{documentId}/her-motor/{motorId} | 
[**getMotorInstallments**](DefaultApi.md#getmotorinstallments) | **GET** /motor/installments/{eskaPolicyId} | 
[**getMotorParticulars**](DefaultApi.md#getmotorparticulars) | **GET** /motor/{motorId} | 
[**getMyHeirsDocument**](DefaultApi.md#getmyheirsdocument) | **GET** /document/{documentId}/my-heirs | 
[**getMyHeirsPlusDocument**](DefaultApi.md#getmyheirsplusdocument) | **GET** /document/{documentId}/my-heirs-plus | 
[**getMyHeirsPlusPremium**](DefaultApi.md#getmyheirspluspremium) | **GET** /document/{documentId}/my-heirs-plus/premium | 
[**getMyHeirsPlusPremiumQuote**](DefaultApi.md#getmyheirspluspremiumquote) | **GET** /my-heirs-plus/quote-premium/{premium}/{dob}/{term}/{frequency} | 
[**getMyHeirsPlusSumAssuredQuote**](DefaultApi.md#getmyheirsplussumassuredquote) | **GET** /my-heirs-plus/quote-assured/{sumAssured}/{dob}/{term}/{frequency} | 
[**getMyHeirsPremium**](DefaultApi.md#getmyheirspremium) | **GET** /document/{documentId}/my-heirs/premium | 
[**getMyHeirsPremiumQuote**](DefaultApi.md#getmyheirspremiumquote) | **GET** /my-heirs/quote-premium/{premium}/{contribution}/{dob}/{term}/{frequency} | 
[**getMyHeirsSumAssuredQuote**](DefaultApi.md#getmyheirssumassuredquote) | **GET** /my-heirs/quote-assured/{sumAssured}/{savings}/{dob}/{term}/{frequency} | 
[**getPaymentStatus**](DefaultApi.md#getpaymentstatus) | **GET** /pay/{payId}/status | 
[**getPersonFromAccidentBronzeDocument**](DefaultApi.md#getpersonfromaccidentbronzedocument) | **GET** /document/{documentId}/personal-accident-bronze/{accidentId} | 
[**getPersonFromAccidentGoldDocument**](DefaultApi.md#getpersonfromaccidentgolddocument) | **GET** /document/{documentId}/personal-accident-gold/{accidentId} | 
[**getPersonFromAccidentPlatinumDocument**](DefaultApi.md#getpersonfromaccidentplatinumdocument) | **GET** /document/{documentId}/personal-accident-platinum/{accidentId} | 
[**getPersonFromAccidentSilverDocument**](DefaultApi.md#getpersonfromaccidentsilverdocument) | **GET** /document/{documentId}/personal-accident-silver/{accidentId} | 
[**getPolicies**](DefaultApi.md#getpolicies) | **GET** /policy | 
[**getSalaryDocument**](DefaultApi.md#getsalarydocument) | **GET** /document/{documentId}/salary | 
[**getSalaryPremium**](DefaultApi.md#getsalarypremium) | **GET** /document/{documentId}/salary/premium | 
[**getSaveDocument**](DefaultApi.md#getsavedocument) | **GET** /document/{documentId}/save | 
[**getSaveExtraDocument**](DefaultApi.md#getsaveextradocument) | **GET** /document/{documentId}/save-extra | 
[**getSaveExtraPremium**](DefaultApi.md#getsaveextrapremium) | **GET** /document/{documentId}/save-extra/premium | 
[**getSaveExtraPremiumQuote**](DefaultApi.md#getsaveextrapremiumquote) | **GET** /save-extra/quote-premium/{premium}/{contribution}/{dob}/{term}/{frequency} | 
[**getSaveExtraSumAssuredQuote**](DefaultApi.md#getsaveextrasumassuredquote) | **GET** /save-extra/quote-assured/{sumAssured}/{savings}/{dob}/{term}/{frequency} | 
[**getSavePremium**](DefaultApi.md#getsavepremium) | **GET** /document/{documentId}/save/premium | 
[**getSavePremiumQuote**](DefaultApi.md#getsavepremiumquote) | **GET** /save/quote-premium/{premium}/{contribution}/{dob}/{term}/{frequency} | 
[**getSaveSumAssuredQuote**](DefaultApi.md#getsavesumassuredquote) | **GET** /save/quote-assured/{sumAssured}/{savings}/{dob}/{term}/{frequency} | 
[**getSinglePolicy**](DefaultApi.md#getsinglepolicy) | **GET** /policy/{eskaPolicyId}/company/{company} | 
[**getThirdPartyDocumentPremium**](DefaultApi.md#getthirdpartydocumentpremium) | **GET** /document/{documentId}/3rd-party/premium | 
[**getThirdPartyFireAndTheftDocumentPremium**](DefaultApi.md#getthirdpartyfireandtheftdocumentpremium) | **GET** /document/{documentId}/3rd-party-fire-and-theft/premium | 
[**getThirdPartyFireAndTheftInterestPremium**](DefaultApi.md#getthirdpartyfireandtheftinterestpremium) | **GET** /document/{documentId}/3rd-party-fire-and-theft/{motorId}/premium | 
[**getThirdPartyInterestPremium**](DefaultApi.md#getthirdpartyinterestpremium) | **GET** /document/{documentId}/3rd-party/{motorId}/premium | 
[**getThirdPartyPlusDocumentPremium**](DefaultApi.md#getthirdpartyplusdocumentpremium) | **GET** /document/{documentId}/3rd-party-plus/premium | 
[**getThirdPartyPlusInterestPremium**](DefaultApi.md#getthirdpartyplusinterestpremium) | **GET** /document/{documentId}/3rd-party-plus/{motorId}/premium | 
[**getTriplePayDocument**](DefaultApi.md#gettriplepaydocument) | **GET** /document/{documentId}/triple-pay | 
[**getTriplePayPremium**](DefaultApi.md#gettriplepaypremium) | **GET** /document/{documentId}/triple-pay/premium | 
[**isPasswordLogin**](DefaultApi.md#ispasswordlogin) | **POST** /user/is-login-by-password | 
[**logUserIn**](DefaultApi.md#loguserin) | **POST** /user/login | 
[**logUserInPayment**](DefaultApi.md#loguserinpayment) | **POST** /user/login/payment | 
[**payFor3rdPartyDocument**](DefaultApi.md#payfor3rdpartydocument) | **GET** /document/{documentId}/3rd-party/pay/{payId} | 
[**payFor3rdPartyFireAndTheftDocument**](DefaultApi.md#payfor3rdpartyfireandtheftdocument) | **GET** /document/{documentId}/3rd-party-fire-and-theft/pay/{payId} | 
[**payFor3rdPartyPlusDocument**](DefaultApi.md#payfor3rdpartyplusdocument) | **GET** /document/{documentId}/3rd-party-plus/pay/{payId} | 
[**payForAccidentBronzeDocument**](DefaultApi.md#payforaccidentbronzedocument) | **GET** /document/{documentId}/personal-accident-bronze/pay/{payId} | 
[**payForAccidentGoldDocument**](DefaultApi.md#payforaccidentgolddocument) | **GET** /document/{documentId}/personal-accident-gold/pay/{payId} | 
[**payForAccidentPlatinumDocument**](DefaultApi.md#payforaccidentplatinumdocument) | **GET** /document/{documentId}/personal-accident-platinum/pay/{payId} | 
[**payForAccidentSilverDocument**](DefaultApi.md#payforaccidentsilverdocument) | **GET** /document/{documentId}/personal-accident-silver/pay/{payId} | 
[**payForComprehensiveDocument**](DefaultApi.md#payforcomprehensivedocument) | **GET** /document/{documentId}/comprehensive/pay/{payId} | 
[**payForCoupleDocument**](DefaultApi.md#payforcoupledocument) | **GET** /document/{documentId}/couple/pay/{payId} | 
[**payForEndowmentDocument**](DefaultApi.md#payforendowmentdocument) | **GET** /document/{documentId}/endowment/pay/{payId} | 
[**payForHeirs25kDocument**](DefaultApi.md#payforheirs25kdocument) | **GET** /document/{documentId}/heirs-25k/pay/{payId} | 
[**payForHeirs35kDocument**](DefaultApi.md#payforheirs35kdocument) | **GET** /document/{documentId}/heirs-35k/pay/{payId} | 
[**payForHeirs3YearsDocument**](DefaultApi.md#payforheirs3yearsdocument) | **GET** /document/{documentId}/heirs3years/pay/{payId} | 
[**payForHeirs70kDocument**](DefaultApi.md#payforheirs70kdocument) | **GET** /document/{documentId}/heirs-70k/pay/{payId} | 
[**payForHerMotorDocument**](DefaultApi.md#payforhermotordocument) | **GET** /document/{documentId}/her-motor/pay/{payId} | 
[**payForMyHeirsDocument**](DefaultApi.md#payformyheirsdocument) | **GET** /document/{documentId}/my-heirs/pay/{payId} | 
[**payForMyHeirsPlusDocument**](DefaultApi.md#payformyheirsplusdocument) | **GET** /document/{documentId}/my-heirs-plus/pay/{payId} | 
[**payForSalaryDocument**](DefaultApi.md#payforsalarydocument) | **GET** /document/{documentId}/salary/pay/{payId} | 
[**payForSaveDocument**](DefaultApi.md#payforsavedocument) | **GET** /document/{documentId}/save/pay/{payId} | 
[**payForSaveExtraDocument**](DefaultApi.md#payforsaveextradocument) | **GET** /document/{documentId}/save-extra/pay/{payId} | 
[**payForTriplePayDocument**](DefaultApi.md#payfortriplepaydocument) | **GET** /document/{documentId}/triple-pay/pay/{payId} | 
[**paystackCallback**](DefaultApi.md#paystackcallback) | **GET** /paystack/{paystackId}/callback | 
[**register3rdPartyFireAndTheftPayment**](DefaultApi.md#register3rdpartyfireandtheftpayment) | **POST** /document/{documentId}/3rd-party-fire-and-theft/pay/{payId} | 
[**register3rdPartyPayment**](DefaultApi.md#register3rdpartypayment) | **POST** /document/{documentId}/3rd-party/pay/{payId} | 
[**register3rdPartyPlusPayment**](DefaultApi.md#register3rdpartypluspayment) | **POST** /document/{documentId}/3rd-party-plus/pay/{payId} | 
[**registerAccidentBronzePayment**](DefaultApi.md#registeraccidentbronzepayment) | **POST** /document/{documentId}/personal-accident-bronze/pay/{payId} | 
[**registerAccidentGoldPayment**](DefaultApi.md#registeraccidentgoldpayment) | **POST** /document/{documentId}/personal-accident-gold/pay/{payId} | 
[**registerAccidentPlatinumPayment**](DefaultApi.md#registeraccidentplatinumpayment) | **POST** /document/{documentId}/personal-accident-platinum/pay/{payId} | 
[**registerAccidentSilverPayment**](DefaultApi.md#registeraccidentsilverpayment) | **POST** /document/{documentId}/personal-accident-silver/pay/{payId} | 
[**registerComprehensivePayment**](DefaultApi.md#registercomprehensivepayment) | **POST** /document/{documentId}/comprehensive/pay/{payId} | 
[**registerCouplePayment**](DefaultApi.md#registercouplepayment) | **POST** /document/{documentId}/couple/pay/{payId} | 
[**registerEndowmentPayment**](DefaultApi.md#registerendowmentpayment) | **POST** /document/{documentId}/endowment/pay/{payId} | 
[**registerHeirs25kPayment**](DefaultApi.md#registerheirs25kpayment) | **POST** /document/{documentId}/heirs-25k/pay/{payId} | 
[**registerHeirs35kPayment**](DefaultApi.md#registerheirs35kpayment) | **POST** /document/{documentId}/heirs-35k/pay/{payId} | 
[**registerHeirs3YearsPayment**](DefaultApi.md#registerheirs3yearspayment) | **POST** /document/{documentId}/heirs3years/pay/{payId} | 
[**registerHeirs70kPayment**](DefaultApi.md#registerheirs70kpayment) | **POST** /document/{documentId}/heirs-70k/pay/{payId} | 
[**registerHerMotorPayment**](DefaultApi.md#registerhermotorpayment) | **POST** /document/{documentId}/her-motor/pay/{payId} | 
[**registerMyHeirsPayment**](DefaultApi.md#registermyheirspayment) | **POST** /document/{documentId}/my-heirs/pay/{payId} | 
[**registerMyHeirsPlusPayment**](DefaultApi.md#registermyheirspluspayment) | **POST** /document/{documentId}/my-heirs-plus/pay/{payId} | 
[**registerSalaryPayment**](DefaultApi.md#registersalarypayment) | **POST** /document/{documentId}/salary/pay/{payId} | 
[**registerSaveExtraPayment**](DefaultApi.md#registersaveextrapayment) | **POST** /document/{documentId}/save-extra/pay/{payId} | 
[**registerSavePayment**](DefaultApi.md#registersavepayment) | **POST** /document/{documentId}/save/pay/{payId} | 
[**registerTriplePayPayment**](DefaultApi.md#registertriplepaypayment) | **POST** /document/{documentId}/triple-pay/pay/{payId} | 
[**registerUserWithoutPassword**](DefaultApi.md#registeruserwithoutpassword) | **POST** /user/register | 
[**resetOtp**](DefaultApi.md#resetotp) | **POST** /user/reset | 
[**signUpUser**](DefaultApi.md#signupuser) | **POST** /user/signup | 
[**updateCustomer**](DefaultApi.md#updatecustomer) | **PATCH** /customer/{customerId} | 
[**updateCustomerAddress**](DefaultApi.md#updatecustomeraddress) | **PATCH** /customer/{customerId}/address | 
[**updateCustomerIdCard**](DefaultApi.md#updatecustomeridcard) | **PATCH** /customer/{customerId}/id-card | 
[**updateCustomerIdDetails**](DefaultApi.md#updatecustomeriddetails) | **PATCH** /customer/{customerId}/id-details | 
[**updateCustomerUtilityBill**](DefaultApi.md#updatecustomerutilitybill) | **PATCH** /customer/{customerId}/utility-bill | 
[**updateInsuredPerson**](DefaultApi.md#updateinsuredperson) | **PUT** /insured-person/{personId} | 
[**updateInsuredPersonPhoto**](DefaultApi.md#updateinsuredpersonphoto) | **PATCH** /insured-person/{personId}/photo | 
[**updateInsuredPersonSignature**](DefaultApi.md#updateinsuredpersonsignature) | **PATCH** /insured-person/{personId}/signature | 
[**updateMotorParticulars**](DefaultApi.md#updatemotorparticulars) | **PUT** /motor/{motorId} | 
[**uploadFrontSide**](DefaultApi.md#uploadfrontside) | **PATCH** /motor/{motorId}/front-side | 
[**uploadLeftSide**](DefaultApi.md#uploadleftside) | **PATCH** /motor/{motorId}/left-side | 
[**uploadRearSide**](DefaultApi.md#uploadrearside) | **PATCH** /motor/{motorId}/rear-side | 
[**uploadRightSide**](DefaultApi.md#uploadrightside) | **PATCH** /motor/{motorId}/right-side | 
[**validateIdNumber**](DefaultApi.md#validateidnumber) | **GET** /customer/{customerId}/validate-id-number/{idNumber} | 
[**validateOTP**](DefaultApi.md#validateotp) | **POST** /user/validate-otp | 
[**validateOTPforPayment**](DefaultApi.md#validateotpforpayment) | **POST** /user/validate-otp/payment | 


# **addBeneficiaryShareToCoupleDocument**
> addBeneficiaryShareToCoupleDocument(documentId, beneficiaryId, beneficiaryShare)



Add beneficiary share to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final BeneficiaryShare beneficiaryShare = ; // BeneficiaryShare | 

try {
    api.addBeneficiaryShareToCoupleDocument(documentId, beneficiaryId, beneficiaryShare);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addBeneficiaryShareToCoupleDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 
 **beneficiaryShare** | [**BeneficiaryShare**](BeneficiaryShare.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addBeneficiaryShareToEndowmentDocument**
> addBeneficiaryShareToEndowmentDocument(documentId, beneficiaryId, beneficiaryShare)



Add beneficiary share to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final BeneficiaryShare beneficiaryShare = ; // BeneficiaryShare | 

try {
    api.addBeneficiaryShareToEndowmentDocument(documentId, beneficiaryId, beneficiaryShare);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addBeneficiaryShareToEndowmentDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 
 **beneficiaryShare** | [**BeneficiaryShare**](BeneficiaryShare.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addBeneficiaryShareToHeirs3YearsDocument**
> addBeneficiaryShareToHeirs3YearsDocument(documentId, beneficiaryId, beneficiaryShare)



Add beneficiary share to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final BeneficiaryShare beneficiaryShare = ; // BeneficiaryShare | 

try {
    api.addBeneficiaryShareToHeirs3YearsDocument(documentId, beneficiaryId, beneficiaryShare);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addBeneficiaryShareToHeirs3YearsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 
 **beneficiaryShare** | [**BeneficiaryShare**](BeneficiaryShare.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addBeneficiaryShareToMyHeirsDocument**
> addBeneficiaryShareToMyHeirsDocument(documentId, beneficiaryId, beneficiaryShare)



Add beneficiary share to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final BeneficiaryShare beneficiaryShare = ; // BeneficiaryShare | 

try {
    api.addBeneficiaryShareToMyHeirsDocument(documentId, beneficiaryId, beneficiaryShare);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addBeneficiaryShareToMyHeirsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 
 **beneficiaryShare** | [**BeneficiaryShare**](BeneficiaryShare.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addBeneficiaryShareToMyHeirsPlusDocument**
> addBeneficiaryShareToMyHeirsPlusDocument(documentId, beneficiaryId, beneficiaryShare)



Add beneficiary share to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final BeneficiaryShare beneficiaryShare = ; // BeneficiaryShare | 

try {
    api.addBeneficiaryShareToMyHeirsPlusDocument(documentId, beneficiaryId, beneficiaryShare);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addBeneficiaryShareToMyHeirsPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 
 **beneficiaryShare** | [**BeneficiaryShare**](BeneficiaryShare.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addBeneficiaryShareToSalaryDocument**
> addBeneficiaryShareToSalaryDocument(documentId, beneficiaryId, beneficiaryShare)



Add beneficiary share to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final BeneficiaryShare beneficiaryShare = ; // BeneficiaryShare | 

try {
    api.addBeneficiaryShareToSalaryDocument(documentId, beneficiaryId, beneficiaryShare);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addBeneficiaryShareToSalaryDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 
 **beneficiaryShare** | [**BeneficiaryShare**](BeneficiaryShare.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addBeneficiaryShareToSaveDocument**
> addBeneficiaryShareToSaveDocument(documentId, beneficiaryId, beneficiaryShare)



Add beneficiary share to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final BeneficiaryShare beneficiaryShare = ; // BeneficiaryShare | 

try {
    api.addBeneficiaryShareToSaveDocument(documentId, beneficiaryId, beneficiaryShare);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addBeneficiaryShareToSaveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 
 **beneficiaryShare** | [**BeneficiaryShare**](BeneficiaryShare.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addBeneficiaryShareToSaveExtraDocument**
> addBeneficiaryShareToSaveExtraDocument(documentId, beneficiaryId, beneficiaryShare)



Add beneficiary share to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final BeneficiaryShare beneficiaryShare = ; // BeneficiaryShare | 

try {
    api.addBeneficiaryShareToSaveExtraDocument(documentId, beneficiaryId, beneficiaryShare);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addBeneficiaryShareToSaveExtraDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 
 **beneficiaryShare** | [**BeneficiaryShare**](BeneficiaryShare.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addBeneficiaryShareToTriplePayDocument**
> addBeneficiaryShareToTriplePayDocument(documentId, beneficiaryId, beneficiaryShare)



Add beneficiary share to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final BeneficiaryShare beneficiaryShare = ; // BeneficiaryShare | 

try {
    api.addBeneficiaryShareToTriplePayDocument(documentId, beneficiaryId, beneficiaryShare);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addBeneficiaryShareToTriplePayDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 
 **beneficiaryShare** | [**BeneficiaryShare**](BeneficiaryShare.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerTo3rdPartyDocument**
> addCustomerTo3rdPartyDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerTo3rdPartyDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerTo3rdPartyDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerTo3rdPartyFireAndTheftDocument**
> addCustomerTo3rdPartyFireAndTheftDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerTo3rdPartyFireAndTheftDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerTo3rdPartyFireAndTheftDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerTo3rdPartyPlusDocument**
> addCustomerTo3rdPartyPlusDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerTo3rdPartyPlusDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerTo3rdPartyPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToAccidentBronzeDocument**
> addCustomerToAccidentBronzeDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToAccidentBronzeDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToAccidentBronzeDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToAccidentGoldDocument**
> addCustomerToAccidentGoldDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToAccidentGoldDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToAccidentGoldDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToAccidentPlatinumDocument**
> addCustomerToAccidentPlatinumDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToAccidentPlatinumDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToAccidentPlatinumDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToAccidentSilverDocument**
> addCustomerToAccidentSilverDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToAccidentSilverDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToAccidentSilverDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToComprehensiveDocument**
> addCustomerToComprehensiveDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToComprehensiveDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToComprehensiveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToCoupleDocument**
> addCustomerToCoupleDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToCoupleDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToCoupleDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToEndowmentDocument**
> addCustomerToEndowmentDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToEndowmentDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToEndowmentDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToHeirs25kDocument**
> addCustomerToHeirs25kDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToHeirs25kDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToHeirs25kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToHeirs35kDocument**
> addCustomerToHeirs35kDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToHeirs35kDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToHeirs35kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToHeirs3YearsDocument**
> addCustomerToHeirs3YearsDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToHeirs3YearsDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToHeirs3YearsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToHeirs70kDocument**
> addCustomerToHeirs70kDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToHeirs70kDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToHeirs70kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToHerMotorDocument**
> addCustomerToHerMotorDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToHerMotorDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToHerMotorDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToMyHeirsDocument**
> addCustomerToMyHeirsDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToMyHeirsDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToMyHeirsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToMyHeirsPlusDocument**
> addCustomerToMyHeirsPlusDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToMyHeirsPlusDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToMyHeirsPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToSalaryDocument**
> addCustomerToSalaryDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToSalaryDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToSalaryDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToSaveDocument**
> addCustomerToSaveDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToSaveDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToSaveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToSaveExtraDocument**
> addCustomerToSaveExtraDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToSaveExtraDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToSaveExtraDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addCustomerToTriplePayDocument**
> addCustomerToTriplePayDocument(documentId, customerId)



Add customer to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final CustomerId customerId = ; // CustomerId | 

try {
    api.addCustomerToTriplePayDocument(documentId, customerId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addCustomerToTriplePayDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **customerId** | [**CustomerId**](CustomerId.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addHealthFormToInsuredPerson**
> addHealthFormToInsuredPerson(personId, healthForm)



Add Insured Person's Health Form

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String personId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final HealthForm healthForm = ; // HealthForm | 

try {
    api.addHealthFormToInsuredPerson(personId, healthForm);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addHealthFormToInsuredPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**|  | 
 **healthForm** | [**HealthForm**](HealthForm.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addItemToCart**
> addItemToCart(cartId, cartItem)



Add Item to Cart

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String cartId = 04748b6c-83b3-46a5-870c-bac83b3310ce; // String | 
final CartItem cartItem = ; // CartItem | 

try {
    api.addItemToCart(cartId, cartItem);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addItemToCart: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **String**|  | 
 **cartItem** | [**CartItem**](CartItem.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addLifeEntryToCoupleDocument**
> addLifeEntryToCoupleDocument(documentId, addLifeEntryToCoupleDocumentRequest)



Add another life etry to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final AddLifeEntryToCoupleDocumentRequest addLifeEntryToCoupleDocumentRequest = ; // AddLifeEntryToCoupleDocumentRequest | 

try {
    api.addLifeEntryToCoupleDocument(documentId, addLifeEntryToCoupleDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addLifeEntryToCoupleDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **addLifeEntryToCoupleDocumentRequest** | [**AddLifeEntryToCoupleDocumentRequest**](AddLifeEntryToCoupleDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addMotorTo3rdPartyDocument**
> addMotorTo3rdPartyDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest)



Add motor interest to 3rd party document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final AddMotorTo3rdPartyDocumentRequest addMotorTo3rdPartyDocumentRequest = ; // AddMotorTo3rdPartyDocumentRequest | 

try {
    api.addMotorTo3rdPartyDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addMotorTo3rdPartyDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 
 **addMotorTo3rdPartyDocumentRequest** | [**AddMotorTo3rdPartyDocumentRequest**](AddMotorTo3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addMotorTo3rdPartyFireAndTheftDocument**
> addMotorTo3rdPartyFireAndTheftDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest)



Add interest to 3rd party fire and theft document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final AddMotorTo3rdPartyDocumentRequest addMotorTo3rdPartyDocumentRequest = ; // AddMotorTo3rdPartyDocumentRequest | 

try {
    api.addMotorTo3rdPartyFireAndTheftDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addMotorTo3rdPartyFireAndTheftDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 
 **addMotorTo3rdPartyDocumentRequest** | [**AddMotorTo3rdPartyDocumentRequest**](AddMotorTo3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addMotorTo3rdPartyPlusDocument**
> addMotorTo3rdPartyPlusDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest)



Add motor interest to 3rd party document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final AddMotorTo3rdPartyDocumentRequest addMotorTo3rdPartyDocumentRequest = ; // AddMotorTo3rdPartyDocumentRequest | 

try {
    api.addMotorTo3rdPartyPlusDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addMotorTo3rdPartyPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 
 **addMotorTo3rdPartyDocumentRequest** | [**AddMotorTo3rdPartyDocumentRequest**](AddMotorTo3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addMotorToComprehensiveDocument**
> addMotorToComprehensiveDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest)



Add interest to comprehensive document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final AddMotorTo3rdPartyDocumentRequest addMotorTo3rdPartyDocumentRequest = ; // AddMotorTo3rdPartyDocumentRequest | 

try {
    api.addMotorToComprehensiveDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addMotorToComprehensiveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 
 **addMotorTo3rdPartyDocumentRequest** | [**AddMotorTo3rdPartyDocumentRequest**](AddMotorTo3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addMotorToHeirs25kDocument**
> addMotorToHeirs25kDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest)



Add motor interest to Heirs25k document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final AddMotorTo3rdPartyDocumentRequest addMotorTo3rdPartyDocumentRequest = ; // AddMotorTo3rdPartyDocumentRequest | 

try {
    api.addMotorToHeirs25kDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addMotorToHeirs25kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 
 **addMotorTo3rdPartyDocumentRequest** | [**AddMotorTo3rdPartyDocumentRequest**](AddMotorTo3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addMotorToHeirs35kDocument**
> addMotorToHeirs35kDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest)



Add motor interest to Heirs35k document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final AddMotorTo3rdPartyDocumentRequest addMotorTo3rdPartyDocumentRequest = ; // AddMotorTo3rdPartyDocumentRequest | 

try {
    api.addMotorToHeirs35kDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addMotorToHeirs35kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 
 **addMotorTo3rdPartyDocumentRequest** | [**AddMotorTo3rdPartyDocumentRequest**](AddMotorTo3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addMotorToHeirs70kDocument**
> addMotorToHeirs70kDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest)



Add motor interest to Heirs70k document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final AddMotorTo3rdPartyDocumentRequest addMotorTo3rdPartyDocumentRequest = ; // AddMotorTo3rdPartyDocumentRequest | 

try {
    api.addMotorToHeirs70kDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addMotorToHeirs70kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 
 **addMotorTo3rdPartyDocumentRequest** | [**AddMotorTo3rdPartyDocumentRequest**](AddMotorTo3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addMotorToHerMotorDocument**
> addMotorToHerMotorDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest)



Add motor interest to HerMotor document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final AddMotorTo3rdPartyDocumentRequest addMotorTo3rdPartyDocumentRequest = ; // AddMotorTo3rdPartyDocumentRequest | 

try {
    api.addMotorToHerMotorDocument(documentId, motorId, addMotorTo3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addMotorToHerMotorDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 
 **addMotorTo3rdPartyDocumentRequest** | [**AddMotorTo3rdPartyDocumentRequest**](AddMotorTo3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addPersonToAccidentBronzeDocument**
> addPersonToAccidentBronzeDocument(documentId, accidentId, addMotorTo3rdPartyDocumentRequest)



Add interest to AccidentBronze document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 
final AddMotorTo3rdPartyDocumentRequest addMotorTo3rdPartyDocumentRequest = ; // AddMotorTo3rdPartyDocumentRequest | 

try {
    api.addPersonToAccidentBronzeDocument(documentId, accidentId, addMotorTo3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addPersonToAccidentBronzeDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 
 **addMotorTo3rdPartyDocumentRequest** | [**AddMotorTo3rdPartyDocumentRequest**](AddMotorTo3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addPersonToAccidentGoldDocument**
> addPersonToAccidentGoldDocument(documentId, accidentId, addMotorTo3rdPartyDocumentRequest)



Add interest to AccidentPlus document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 
final AddMotorTo3rdPartyDocumentRequest addMotorTo3rdPartyDocumentRequest = ; // AddMotorTo3rdPartyDocumentRequest | 

try {
    api.addPersonToAccidentGoldDocument(documentId, accidentId, addMotorTo3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addPersonToAccidentGoldDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 
 **addMotorTo3rdPartyDocumentRequest** | [**AddMotorTo3rdPartyDocumentRequest**](AddMotorTo3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addPersonToAccidentPlatinumDocument**
> addPersonToAccidentPlatinumDocument(documentId, accidentId, addMotorTo3rdPartyDocumentRequest)



Add interest to AccidentPlatinum document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 
final AddMotorTo3rdPartyDocumentRequest addMotorTo3rdPartyDocumentRequest = ; // AddMotorTo3rdPartyDocumentRequest | 

try {
    api.addPersonToAccidentPlatinumDocument(documentId, accidentId, addMotorTo3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addPersonToAccidentPlatinumDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 
 **addMotorTo3rdPartyDocumentRequest** | [**AddMotorTo3rdPartyDocumentRequest**](AddMotorTo3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addPersonToAccidentSilverDocument**
> addPersonToAccidentSilverDocument(documentId, accidentId, addMotorTo3rdPartyDocumentRequest)



Add interest to AccidentSilver document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 
final AddMotorTo3rdPartyDocumentRequest addMotorTo3rdPartyDocumentRequest = ; // AddMotorTo3rdPartyDocumentRequest | 

try {
    api.addPersonToAccidentSilverDocument(documentId, accidentId, addMotorTo3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addPersonToAccidentSilverDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 
 **addMotorTo3rdPartyDocumentRequest** | [**AddMotorTo3rdPartyDocumentRequest**](AddMotorTo3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addRiderToCoupleDocument**
> addRiderToCoupleDocument(documentId, riderCode, rider)



Add rider to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.addRiderToCoupleDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addRiderToCoupleDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addRiderToEndowmentDocument**
> addRiderToEndowmentDocument(documentId, riderCode, rider)



Add rider to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.addRiderToEndowmentDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addRiderToEndowmentDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addRiderToMyHeirsDocument**
> addRiderToMyHeirsDocument(documentId, riderCode, rider)



Add rider to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.addRiderToMyHeirsDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addRiderToMyHeirsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addRiderToMyHeirsPlusDocument**
> addRiderToMyHeirsPlusDocument(documentId, riderCode, rider)



Add rider to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.addRiderToMyHeirsPlusDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addRiderToMyHeirsPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addRiderToSalaryDocument**
> addRiderToSalaryDocument(documentId, riderCode, rider)



Add rider to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.addRiderToSalaryDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addRiderToSalaryDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addRiderToSaveExtraDocument**
> addRiderToSaveExtraDocument(documentId, riderCode, rider)



Add rider to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.addRiderToSaveExtraDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addRiderToSaveExtraDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addRiderToTriplePayDocument**
> addRiderToTriplePayDocument(documentId, riderCode, rider)



Add rider to document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.addRiderToTriplePayDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->addRiderToTriplePayDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create3rdPartyDocument**
> create3rdPartyDocument(documentId, create3rdPartyDocumentRequest)



Create a 3rd party document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Create3rdPartyDocumentRequest create3rdPartyDocumentRequest = ; // Create3rdPartyDocumentRequest | 

try {
    api.create3rdPartyDocument(documentId, create3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->create3rdPartyDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **create3rdPartyDocumentRequest** | [**Create3rdPartyDocumentRequest**](Create3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create3rdPartyFireAndTheftDocument**
> create3rdPartyFireAndTheftDocument(documentId, create3rdPartyDocumentRequest)



Create 3rd party fire and theft document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Create3rdPartyDocumentRequest create3rdPartyDocumentRequest = ; // Create3rdPartyDocumentRequest | 

try {
    api.create3rdPartyFireAndTheftDocument(documentId, create3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->create3rdPartyFireAndTheftDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **create3rdPartyDocumentRequest** | [**Create3rdPartyDocumentRequest**](Create3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create3rdPartyPlusDocument**
> create3rdPartyPlusDocument(documentId, create3rdPartyDocumentRequest)



Create a 3rd party document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Create3rdPartyDocumentRequest create3rdPartyDocumentRequest = ; // Create3rdPartyDocumentRequest | 

try {
    api.create3rdPartyPlusDocument(documentId, create3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->create3rdPartyPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **create3rdPartyDocumentRequest** | [**Create3rdPartyDocumentRequest**](Create3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAccidentBronzeDocument**
> createAccidentBronzeDocument(documentId, create3rdPartyDocumentRequest)



Create accident document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Create3rdPartyDocumentRequest create3rdPartyDocumentRequest = ; // Create3rdPartyDocumentRequest | 

try {
    api.createAccidentBronzeDocument(documentId, create3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createAccidentBronzeDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **create3rdPartyDocumentRequest** | [**Create3rdPartyDocumentRequest**](Create3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAccidentGoldDocument**
> createAccidentGoldDocument(documentId, create3rdPartyDocumentRequest)



Create accident document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Create3rdPartyDocumentRequest create3rdPartyDocumentRequest = ; // Create3rdPartyDocumentRequest | 

try {
    api.createAccidentGoldDocument(documentId, create3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createAccidentGoldDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **create3rdPartyDocumentRequest** | [**Create3rdPartyDocumentRequest**](Create3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAccidentPerson**
> createAccidentPerson(personId, customerPersonal)



Create Accident Interest person

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String personId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final CustomerPersonal customerPersonal = ; // CustomerPersonal | 

try {
    api.createAccidentPerson(personId, customerPersonal);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createAccidentPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**|  | 
 **customerPersonal** | [**CustomerPersonal**](CustomerPersonal.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAccidentPlatinumDocument**
> createAccidentPlatinumDocument(documentId, create3rdPartyDocumentRequest)



Create accident document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Create3rdPartyDocumentRequest create3rdPartyDocumentRequest = ; // Create3rdPartyDocumentRequest | 

try {
    api.createAccidentPlatinumDocument(documentId, create3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createAccidentPlatinumDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **create3rdPartyDocumentRequest** | [**Create3rdPartyDocumentRequest**](Create3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAccidentSilverDocument**
> createAccidentSilverDocument(documentId, create3rdPartyDocumentRequest)



Create accident document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Create3rdPartyDocumentRequest create3rdPartyDocumentRequest = ; // Create3rdPartyDocumentRequest | 

try {
    api.createAccidentSilverDocument(documentId, create3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createAccidentSilverDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **create3rdPartyDocumentRequest** | [**Create3rdPartyDocumentRequest**](Create3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBeneficiary**
> createBeneficiary(beneficiaryId, beneficiary)



Create an beneficiary person

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final Beneficiary beneficiary = ; // Beneficiary | 

try {
    api.createBeneficiary(beneficiaryId, beneficiary);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createBeneficiary: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **beneficiaryId** | **String**|  | 
 **beneficiary** | [**Beneficiary**](Beneficiary.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createComprehensiveDocument**
> createComprehensiveDocument(documentId, create3rdPartyDocumentRequest)



Create comprehensive document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Create3rdPartyDocumentRequest create3rdPartyDocumentRequest = ; // Create3rdPartyDocumentRequest | 

try {
    api.createComprehensiveDocument(documentId, create3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createComprehensiveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **create3rdPartyDocumentRequest** | [**Create3rdPartyDocumentRequest**](Create3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCoupleDocument**
> createCoupleDocument(documentId, addLifeEntryToCoupleDocumentRequest)



Create Term assurance document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final AddLifeEntryToCoupleDocumentRequest addLifeEntryToCoupleDocumentRequest = ; // AddLifeEntryToCoupleDocumentRequest | 

try {
    api.createCoupleDocument(documentId, addLifeEntryToCoupleDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createCoupleDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **addLifeEntryToCoupleDocumentRequest** | [**AddLifeEntryToCoupleDocumentRequest**](AddLifeEntryToCoupleDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCustomer**
> createCustomer(customerId, customerPersonal)



Create a customer with  personal details

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String customerId = e29a5ce0-a4b9-4ab2-85eb-355f01553d54; // String | 
final CustomerPersonal customerPersonal = {"$ref":"#/components/examples/CustomerPersonal"}; // CustomerPersonal | 

try {
    api.createCustomer(customerId, customerPersonal);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createCustomer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**|  | 
 **customerPersonal** | [**CustomerPersonal**](CustomerPersonal.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEndowmentDocument**
> createEndowmentDocument(documentId, deathCover)



Create Term assurance document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final DeathCover deathCover = ; // DeathCover | 

try {
    api.createEndowmentDocument(documentId, deathCover);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createEndowmentDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **deathCover** | [**DeathCover**](DeathCover.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createHeirs25kDocument**
> createHeirs25kDocument(documentId, create3rdPartyDocumentRequest)



Create a Heirs 15k document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Create3rdPartyDocumentRequest create3rdPartyDocumentRequest = ; // Create3rdPartyDocumentRequest | 

try {
    api.createHeirs25kDocument(documentId, create3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createHeirs25kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **create3rdPartyDocumentRequest** | [**Create3rdPartyDocumentRequest**](Create3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createHeirs35kDocument**
> createHeirs35kDocument(documentId, create3rdPartyDocumentRequest)



Create a Heirs 35k document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Create3rdPartyDocumentRequest create3rdPartyDocumentRequest = ; // Create3rdPartyDocumentRequest | 

try {
    api.createHeirs35kDocument(documentId, create3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createHeirs35kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **create3rdPartyDocumentRequest** | [**Create3rdPartyDocumentRequest**](Create3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createHeirs3YearsDocument**
> createHeirs3YearsDocument(documentId, deathCover)



Create Term assurance document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final DeathCover deathCover = ; // DeathCover | 

try {
    api.createHeirs3YearsDocument(documentId, deathCover);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createHeirs3YearsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **deathCover** | [**DeathCover**](DeathCover.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createHeirs70kDocument**
> createHeirs70kDocument(documentId, create3rdPartyDocumentRequest)



Create a Heirs 70k document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Create3rdPartyDocumentRequest create3rdPartyDocumentRequest = ; // Create3rdPartyDocumentRequest | 

try {
    api.createHeirs70kDocument(documentId, create3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createHeirs70kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **create3rdPartyDocumentRequest** | [**Create3rdPartyDocumentRequest**](Create3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createHerMotorDocument**
> createHerMotorDocument(documentId, create3rdPartyDocumentRequest)



Create a Her motor document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Create3rdPartyDocumentRequest create3rdPartyDocumentRequest = ; // Create3rdPartyDocumentRequest | 

try {
    api.createHerMotorDocument(documentId, create3rdPartyDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createHerMotorDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **create3rdPartyDocumentRequest** | [**Create3rdPartyDocumentRequest**](Create3rdPartyDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInsuredPerson**
> createInsuredPerson(personId, customerPersonal)



Create an insured person

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String personId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final CustomerPersonal customerPersonal = {"$ref":"#/components/examples/CustomerPersonal"}; // CustomerPersonal | 

try {
    api.createInsuredPerson(personId, customerPersonal);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createInsuredPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**|  | 
 **customerPersonal** | [**CustomerPersonal**](CustomerPersonal.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMotorParticulars**
> createMotorParticulars(motorId, motorParticulars)



Create particulars of a motor

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final MotorParticulars motorParticulars = ; // MotorParticulars | 

try {
    api.createMotorParticulars(motorId, motorParticulars);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createMotorParticulars: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorId** | **String**|  | 
 **motorParticulars** | [**MotorParticulars**](MotorParticulars.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMyHeirsDocument**
> createMyHeirsDocument(documentId, addLifeEntryToCoupleDocumentRequest)



Create Term assurance document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final AddLifeEntryToCoupleDocumentRequest addLifeEntryToCoupleDocumentRequest = ; // AddLifeEntryToCoupleDocumentRequest | 

try {
    api.createMyHeirsDocument(documentId, addLifeEntryToCoupleDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createMyHeirsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **addLifeEntryToCoupleDocumentRequest** | [**AddLifeEntryToCoupleDocumentRequest**](AddLifeEntryToCoupleDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMyHeirsPlusDocument**
> createMyHeirsPlusDocument(documentId, deathCover)



Create Term assurance document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final DeathCover deathCover = ; // DeathCover | 

try {
    api.createMyHeirsPlusDocument(documentId, deathCover);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createMyHeirsPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **deathCover** | [**DeathCover**](DeathCover.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOTP**
> createOTP(resetOtpRequest)



create a one time password for an existing user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final ResetOtpRequest resetOtpRequest = ; // ResetOtpRequest | 

try {
    api.createOTP(resetOtpRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createOTP: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetOtpRequest** | [**ResetOtpRequest**](ResetOtpRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPassword**
> createPassword(createPasswordRequest)



create a password for an existing user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final CreatePasswordRequest createPasswordRequest = ; // CreatePasswordRequest | 

try {
    api.createPassword(createPasswordRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPasswordRequest** | [**CreatePasswordRequest**](CreatePasswordRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSalaryDocument**
> createSalaryDocument(documentId, addLifeEntryToCoupleDocumentRequest)



Create Term assurance document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final AddLifeEntryToCoupleDocumentRequest addLifeEntryToCoupleDocumentRequest = ; // AddLifeEntryToCoupleDocumentRequest | 

try {
    api.createSalaryDocument(documentId, addLifeEntryToCoupleDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createSalaryDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **addLifeEntryToCoupleDocumentRequest** | [**AddLifeEntryToCoupleDocumentRequest**](AddLifeEntryToCoupleDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSaveDocument**
> createSaveDocument(documentId, addLifeEntryToCoupleDocumentRequest)



Create Term assurance document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final AddLifeEntryToCoupleDocumentRequest addLifeEntryToCoupleDocumentRequest = ; // AddLifeEntryToCoupleDocumentRequest | 

try {
    api.createSaveDocument(documentId, addLifeEntryToCoupleDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createSaveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **addLifeEntryToCoupleDocumentRequest** | [**AddLifeEntryToCoupleDocumentRequest**](AddLifeEntryToCoupleDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSaveExtraDocument**
> createSaveExtraDocument(documentId, addLifeEntryToCoupleDocumentRequest)



Create Term assurance document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final AddLifeEntryToCoupleDocumentRequest addLifeEntryToCoupleDocumentRequest = ; // AddLifeEntryToCoupleDocumentRequest | 

try {
    api.createSaveExtraDocument(documentId, addLifeEntryToCoupleDocumentRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createSaveExtraDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **addLifeEntryToCoupleDocumentRequest** | [**AddLifeEntryToCoupleDocumentRequest**](AddLifeEntryToCoupleDocumentRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTriplePayDocument**
> createTriplePayDocument(documentId, deathCover)



Create Term assurance document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final DeathCover deathCover = ; // DeathCover | 

try {
    api.createTriplePayDocument(documentId, deathCover);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->createTriplePayDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **deathCover** | [**DeathCover**](DeathCover.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBeneficiaryShareFromCoupleDocument**
> deleteBeneficiaryShareFromCoupleDocument(documentId, beneficiaryId)



Delete beneficiary share from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    api.deleteBeneficiaryShareFromCoupleDocument(documentId, beneficiaryId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteBeneficiaryShareFromCoupleDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBeneficiaryShareFromEndowmentDocument**
> deleteBeneficiaryShareFromEndowmentDocument(documentId, beneficiaryId)



Delete beneficiary share from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    api.deleteBeneficiaryShareFromEndowmentDocument(documentId, beneficiaryId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteBeneficiaryShareFromEndowmentDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBeneficiaryShareFromHeirs3YearsDocument**
> deleteBeneficiaryShareFromHeirs3YearsDocument(documentId, beneficiaryId)



Delete beneficiary share from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    api.deleteBeneficiaryShareFromHeirs3YearsDocument(documentId, beneficiaryId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteBeneficiaryShareFromHeirs3YearsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBeneficiaryShareFromMyHeirsDocument**
> deleteBeneficiaryShareFromMyHeirsDocument(documentId, beneficiaryId)



Delete beneficiary share from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    api.deleteBeneficiaryShareFromMyHeirsDocument(documentId, beneficiaryId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteBeneficiaryShareFromMyHeirsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBeneficiaryShareFromMyHeirsPlusDocument**
> deleteBeneficiaryShareFromMyHeirsPlusDocument(documentId, beneficiaryId)



Delete beneficiary share from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    api.deleteBeneficiaryShareFromMyHeirsPlusDocument(documentId, beneficiaryId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteBeneficiaryShareFromMyHeirsPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBeneficiaryShareFromSalaryDocument**
> deleteBeneficiaryShareFromSalaryDocument(documentId, beneficiaryId)



Delete beneficiary share from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    api.deleteBeneficiaryShareFromSalaryDocument(documentId, beneficiaryId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteBeneficiaryShareFromSalaryDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBeneficiaryShareFromSaveDocument**
> deleteBeneficiaryShareFromSaveDocument(documentId, beneficiaryId)



Delete beneficiary share from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    api.deleteBeneficiaryShareFromSaveDocument(documentId, beneficiaryId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteBeneficiaryShareFromSaveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBeneficiaryShareFromSaveExtraDocument**
> deleteBeneficiaryShareFromSaveExtraDocument(documentId, beneficiaryId)



Delete beneficiary share from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    api.deleteBeneficiaryShareFromSaveExtraDocument(documentId, beneficiaryId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteBeneficiaryShareFromSaveExtraDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBeneficiaryShareFromTriplePayDocument**
> deleteBeneficiaryShareFromTriplePayDocument(documentId, beneficiaryId)



Delete beneficiary share from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    api.deleteBeneficiaryShareFromTriplePayDocument(documentId, beneficiaryId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteBeneficiaryShareFromTriplePayDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCartItem**
> deleteCartItem(cartId)



Delete a Cart Item

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String cartId = 04748b6c-83b3-46a5-870c-bac83b3310ce; // String | 

try {
    api.deleteCartItem(cartId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteCartItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMotorFrom3rdPartyDocument**
> deleteMotorFrom3rdPartyDocument(documentId, motorId)



Delete 3rd party interest from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    api.deleteMotorFrom3rdPartyDocument(documentId, motorId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteMotorFrom3rdPartyDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMotorFrom3rdPartyFireAndTheftDocument**
> deleteMotorFrom3rdPartyFireAndTheftDocument(documentId, motorId)



Delete 3rd party fire and theft interest from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    api.deleteMotorFrom3rdPartyFireAndTheftDocument(documentId, motorId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteMotorFrom3rdPartyFireAndTheftDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMotorFrom3rdPartyPlusDocument**
> deleteMotorFrom3rdPartyPlusDocument(documentId, motorId)



Delete 3rd party interest from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    api.deleteMotorFrom3rdPartyPlusDocument(documentId, motorId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteMotorFrom3rdPartyPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMotorFromComprehensiveDocument**
> deleteMotorFromComprehensiveDocument(documentId, motorId)



Delete  interest from comprehensive document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    api.deleteMotorFromComprehensiveDocument(documentId, motorId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteMotorFromComprehensiveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMotorFromHeirs25kDocument**
> deleteMotorFromHeirs25kDocument(documentId, motorId)



Delete 3rd party interest from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    api.deleteMotorFromHeirs25kDocument(documentId, motorId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteMotorFromHeirs25kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMotorFromHeirs35kDocument**
> deleteMotorFromHeirs35kDocument(documentId, motorId)



Delete 3rd party interest from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    api.deleteMotorFromHeirs35kDocument(documentId, motorId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteMotorFromHeirs35kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMotorFromHeirs70kDocument**
> deleteMotorFromHeirs70kDocument(documentId, motorId)



Delete 3rd party interest from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    api.deleteMotorFromHeirs70kDocument(documentId, motorId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteMotorFromHeirs70kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMotorFromHerMotorDocument**
> deleteMotorFromHerMotorDocument(documentId, motorId)



Delete 3rd party interest from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    api.deleteMotorFromHerMotorDocument(documentId, motorId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteMotorFromHerMotorDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePersonFromAccidentBronzeDocument**
> deletePersonFromAccidentBronzeDocument(documentId, accidentId)



Delete  interest from accident document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 

try {
    api.deletePersonFromAccidentBronzeDocument(documentId, accidentId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deletePersonFromAccidentBronzeDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePersonFromAccidentGoldDocument**
> deletePersonFromAccidentGoldDocument(documentId, accidentId)



Delete  interest from accident document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 

try {
    api.deletePersonFromAccidentGoldDocument(documentId, accidentId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deletePersonFromAccidentGoldDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePersonFromAccidentPlatinumDocument**
> deletePersonFromAccidentPlatinumDocument(documentId, accidentId)



Delete  interest from accident document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 

try {
    api.deletePersonFromAccidentPlatinumDocument(documentId, accidentId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deletePersonFromAccidentPlatinumDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePersonFromAccidentSilverDocument**
> deletePersonFromAccidentSilverDocument(documentId, accidentId)



Delete  interest from accident document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 

try {
    api.deletePersonFromAccidentSilverDocument(documentId, accidentId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deletePersonFromAccidentSilverDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRiderCoupleDocument**
> deleteRiderCoupleDocument(documentId, riderCode, rider)



Delete rider from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.deleteRiderCoupleDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteRiderCoupleDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRiderEndowmentDocument**
> deleteRiderEndowmentDocument(documentId, riderCode, rider)



Delete rider from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.deleteRiderEndowmentDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteRiderEndowmentDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRiderMyHeirsDocument**
> deleteRiderMyHeirsDocument(documentId, riderCode, rider)



Delete rider from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.deleteRiderMyHeirsDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteRiderMyHeirsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRiderMyHeirsPlusDocument**
> deleteRiderMyHeirsPlusDocument(documentId, riderCode, rider)



Delete rider from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.deleteRiderMyHeirsPlusDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteRiderMyHeirsPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRiderSalaryDocument**
> deleteRiderSalaryDocument(documentId, riderCode, rider)



Delete rider from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.deleteRiderSalaryDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteRiderSalaryDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRiderSaveExtraDocument**
> deleteRiderSaveExtraDocument(documentId, riderCode, rider)



Delete rider from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.deleteRiderSaveExtraDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteRiderSaveExtraDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRiderTriplePayDocument**
> deleteRiderTriplePayDocument(documentId, riderCode, rider)



Delete rider from document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String riderCode = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final Rider rider = ; // Rider | 

try {
    api.deleteRiderTriplePayDocument(documentId, riderCode, rider);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->deleteRiderTriplePayDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **riderCode** | **String**|  | 
 **rider** | [**Rider**](Rider.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get3rdPartyDocument**
> Document get3rdPartyDocument(documentId)



Get 3rd party document with premium and interests

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.get3rdPartyDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->get3rdPartyDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get3rdPartyFireAndTheftDocument**
> Document get3rdPartyFireAndTheftDocument(documentId)



Get 3rd party fire and theft  document with premium and interests

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.get3rdPartyFireAndTheftDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->get3rdPartyFireAndTheftDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get3rdPartyFireAndTheftQuote**
> GetEndowmentPremium200Response get3rdPartyFireAndTheftQuote(motorClass, motorValue)



Get Quotes for 3rd party fire and theft by class and value

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorClass = motorClass_example; // String | 
final num motorValue = 8.14; // num | 

try {
    final response = api.get3rdPartyFireAndTheftQuote(motorClass, motorValue);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->get3rdPartyFireAndTheftQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorClass** | **String**|  | 
 **motorValue** | **num**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get3rdPartyPlusDocument**
> Document get3rdPartyPlusDocument(documentId)



Get 3rd party document with premium and interests

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.get3rdPartyPlusDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->get3rdPartyPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get3rdPartyPlusQuote**
> GetEndowmentPremium200Response get3rdPartyPlusQuote(motorClass, motorType)



Get Quotes for 3rd party plus

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorClass = motorClass_example; // String | 
final String motorType = motorType_example; // String | 

try {
    final response = api.get3rdPartyPlusQuote(motorClass, motorType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->get3rdPartyPlusQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorClass** | **String**|  | 
 **motorType** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get3rdPartyQuote**
> MotorPremium get3rdPartyQuote(motorClass, motorType)



Get Quotes for 3rd party by class

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorClass = motorClass_example; // String | 
final String motorType = motorType_example; // String | 

try {
    final response = api.get3rdPartyQuote(motorClass, motorType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->get3rdPartyQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorClass** | **String**|  | 
 **motorType** | **String**|  | 

### Return type

[**MotorPremium**](MotorPremium.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get3rdPartyQuoteOptions**
> Get3rdPartyQuoteOptions200Response get3rdPartyQuoteOptions(motorClass, motorType)



Get Quotes options for 3rd party by class

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorClass = motorClass_example; // String | 
final String motorType = motorType_example; // String | 

try {
    final response = api.get3rdPartyQuoteOptions(motorClass, motorType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->get3rdPartyQuoteOptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorClass** | **String**|  | 
 **motorType** | **String**|  | 

### Return type

[**Get3rdPartyQuoteOptions200Response**](Get3rdPartyQuoteOptions200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccidentBronzeDocument**
> Document getAccidentBronzeDocument(documentId)



Get accident document with premium and interests

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getAccidentBronzeDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getAccidentBronzeDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccidentBronzeDocumentPremium**
> GetEndowmentPremium200Response getAccidentBronzeDocumentPremium(documentId)



Get owner document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getAccidentBronzeDocumentPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getAccidentBronzeDocumentPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccidentBronzeInterestPremium**
> GetEndowmentPremium200Response getAccidentBronzeInterestPremium(documentId, accidentId)



Get holder interest premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 

try {
    final response = api.getAccidentBronzeInterestPremium(documentId, accidentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getAccidentBronzeInterestPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccidentGoldDocument**
> Document getAccidentGoldDocument(documentId)



Get accident document with premium and interests

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getAccidentGoldDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getAccidentGoldDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccidentGoldDocumentPremium**
> GetEndowmentPremium200Response getAccidentGoldDocumentPremium(documentId)



Get document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getAccidentGoldDocumentPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getAccidentGoldDocumentPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccidentGoldInterestPremium**
> GetEndowmentPremium200Response getAccidentGoldInterestPremium(documentId, accidentId)



Get interest premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 

try {
    final response = api.getAccidentGoldInterestPremium(documentId, accidentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getAccidentGoldInterestPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccidentPerson**
> CustomerPersonal getAccidentPerson(personId)



Get details of accident interest/person

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String personId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    final response = api.getAccidentPerson(personId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getAccidentPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**|  | 

### Return type

[**CustomerPersonal**](CustomerPersonal.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccidentPlatinumDocument**
> Document getAccidentPlatinumDocument(documentId)



Get accident document with premium and interests

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getAccidentPlatinumDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getAccidentPlatinumDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccidentPlatinumDocumentPremium**
> GetEndowmentPremium200Response getAccidentPlatinumDocumentPremium(documentId)



Get owner document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getAccidentPlatinumDocumentPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getAccidentPlatinumDocumentPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccidentPlatinumInterestPremium**
> GetEndowmentPremium200Response getAccidentPlatinumInterestPremium(documentId, accidentId)



Get holder interest premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 

try {
    final response = api.getAccidentPlatinumInterestPremium(documentId, accidentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getAccidentPlatinumInterestPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccidentSilverDocument**
> Document getAccidentSilverDocument(documentId)



Get accident document with premium and interests

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getAccidentSilverDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getAccidentSilverDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccidentSilverDocumentPremium**
> GetEndowmentPremium200Response getAccidentSilverDocumentPremium(documentId)



Get owner document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getAccidentSilverDocumentPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getAccidentSilverDocumentPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccidentSilverInterestPremium**
> GetEndowmentPremium200Response getAccidentSilverInterestPremium(documentId, accidentId)



Get holder interest premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 

try {
    final response = api.getAccidentSilverInterestPremium(documentId, accidentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getAccidentSilverInterestPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBeneficiariesByLoggedInUser**
> BuiltList<Beneficiary> getBeneficiariesByLoggedInUser()



Get a users registered Beneficiaries

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.getBeneficiariesByLoggedInUser();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getBeneficiariesByLoggedInUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Beneficiary&gt;**](Beneficiary.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBeneficiaryById**
> Beneficiary getBeneficiaryById(beneficiaryId)



Get Beneficiary details

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    final response = api.getBeneficiaryById(beneficiaryId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getBeneficiaryById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **beneficiaryId** | **String**|  | 

### Return type

[**Beneficiary**](Beneficiary.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBeneficiaryShareFromCoupleDocument**
> BeneficiaryShare getBeneficiaryShareFromCoupleDocument(documentId, beneficiaryId)



Get beneficiary share of insured person for document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    final response = api.getBeneficiaryShareFromCoupleDocument(documentId, beneficiaryId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getBeneficiaryShareFromCoupleDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

[**BeneficiaryShare**](BeneficiaryShare.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBeneficiaryShareFromEndowmentDocument**
> BeneficiaryShare getBeneficiaryShareFromEndowmentDocument(documentId, beneficiaryId)



Get beneficiary share of insured person for document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    final response = api.getBeneficiaryShareFromEndowmentDocument(documentId, beneficiaryId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getBeneficiaryShareFromEndowmentDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

[**BeneficiaryShare**](BeneficiaryShare.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBeneficiaryShareFromHeirs3YearsDocument**
> BeneficiaryShare getBeneficiaryShareFromHeirs3YearsDocument(documentId, beneficiaryId)



Get beneficiary share of insured person for document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    final response = api.getBeneficiaryShareFromHeirs3YearsDocument(documentId, beneficiaryId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getBeneficiaryShareFromHeirs3YearsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

[**BeneficiaryShare**](BeneficiaryShare.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBeneficiaryShareFromMyHeirsDocument**
> BeneficiaryShare getBeneficiaryShareFromMyHeirsDocument(documentId, beneficiaryId)



Get beneficiary share of insured person for document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    final response = api.getBeneficiaryShareFromMyHeirsDocument(documentId, beneficiaryId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getBeneficiaryShareFromMyHeirsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

[**BeneficiaryShare**](BeneficiaryShare.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBeneficiaryShareFromMyHeirsPlusDocument**
> BeneficiaryShare getBeneficiaryShareFromMyHeirsPlusDocument(documentId, beneficiaryId)



Get beneficiary share of insured person for document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    final response = api.getBeneficiaryShareFromMyHeirsPlusDocument(documentId, beneficiaryId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getBeneficiaryShareFromMyHeirsPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

[**BeneficiaryShare**](BeneficiaryShare.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBeneficiaryShareFromSalaryDocument**
> BeneficiaryShare getBeneficiaryShareFromSalaryDocument(documentId, beneficiaryId)



Get beneficiary share of insured person for document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    final response = api.getBeneficiaryShareFromSalaryDocument(documentId, beneficiaryId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getBeneficiaryShareFromSalaryDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

[**BeneficiaryShare**](BeneficiaryShare.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBeneficiaryShareFromSaveDocument**
> BeneficiaryShare getBeneficiaryShareFromSaveDocument(documentId, beneficiaryId)



Get beneficiary share of insured person for document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    final response = api.getBeneficiaryShareFromSaveDocument(documentId, beneficiaryId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getBeneficiaryShareFromSaveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

[**BeneficiaryShare**](BeneficiaryShare.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBeneficiaryShareFromSaveExtraDocument**
> BeneficiaryShare getBeneficiaryShareFromSaveExtraDocument(documentId, beneficiaryId)



Get beneficiary share of insured person for document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    final response = api.getBeneficiaryShareFromSaveExtraDocument(documentId, beneficiaryId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getBeneficiaryShareFromSaveExtraDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

[**BeneficiaryShare**](BeneficiaryShare.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBeneficiaryShareFromTriplePayDocument**
> BeneficiaryShare getBeneficiaryShareFromTriplePayDocument(documentId, beneficiaryId)



Get beneficiary share of insured person for document

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String beneficiaryId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    final response = api.getBeneficiaryShareFromTriplePayDocument(documentId, beneficiaryId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getBeneficiaryShareFromTriplePayDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **beneficiaryId** | **String**|  | 

### Return type

[**BeneficiaryShare**](BeneficiaryShare.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCartItem**
> CartItem getCartItem(cartId)



Get Cart Item

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String cartId = 04748b6c-83b3-46a5-870c-bac83b3310ce; // String | 

try {
    final response = api.getCartItem(cartId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getCartItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cartId** | **String**|  | 

### Return type

[**CartItem**](CartItem.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComprehensiveDocument**
> Document getComprehensiveDocument(documentId)



Get comprehensive document with premium and interests

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getComprehensiveDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getComprehensiveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComprehensiveDocumentPremium**
> GetEndowmentPremium200Response getComprehensiveDocumentPremium(documentId)



Get document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getComprehensiveDocumentPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getComprehensiveDocumentPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComprehensiveInterestPremium**
> GetEndowmentPremium200Response getComprehensiveInterestPremium(documentId, motorId)



Get interest premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getComprehensiveInterestPremium(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getComprehensiveInterestPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComprehensivePlusQuote**
> GetEndowmentPremium200Response getComprehensivePlusQuote(motorClass, motorValue)



Get Quotes for comprehensive Plus by class and value

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorClass = motorClass_example; // String | 
final num motorValue = 8.14; // num | 

try {
    final response = api.getComprehensivePlusQuote(motorClass, motorValue);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getComprehensivePlusQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorClass** | **String**|  | 
 **motorValue** | **num**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComprehensiveQuote**
> GetEndowmentPremium200Response getComprehensiveQuote(motorClass, motorValue)



Get Quotes for comprehensive by class and value

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorClass = motorClass_example; // String | 
final num motorValue = 8.14; // num | 

try {
    final response = api.getComprehensiveQuote(motorClass, motorValue);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getComprehensiveQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorClass** | **String**|  | 
 **motorValue** | **num**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComprehensiveQuoteOptions**
> Get3rdPartyQuoteOptions200Response getComprehensiveQuoteOptions(motorClass, motorValue)



Get Quotes options for comprehensive by class and value

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorClass = motorClass_example; // String | 
final num motorValue = 8.14; // num | 

try {
    final response = api.getComprehensiveQuoteOptions(motorClass, motorValue);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getComprehensiveQuoteOptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorClass** | **String**|  | 
 **motorValue** | **num**|  | 

### Return type

[**Get3rdPartyQuoteOptions200Response**](Get3rdPartyQuoteOptions200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCoupleDocument**
> BuiltList<IndividualSavingsDocument> getCoupleDocument(documentId)



Get term assurance with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getCoupleDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getCoupleDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**BuiltList&lt;IndividualSavingsDocument&gt;**](IndividualSavingsDocument.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCouplePremium**
> GetEndowmentPremium200Response getCouplePremium(documentId)



Get owner document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getCouplePremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getCouplePremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCouplePremiumQuote**
> GetSavePremiumQuote200Response getCouplePremiumQuote(contribution, premium, dob, term, frequency)



Get Quote for Sum Assured

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final num contribution = 5000; // num | 
final num premium = 5000; // num | 
final String dob = 01-03-2001; // String | 
final num term = 5; // num | 
final String frequency = frequency_example; // String | 

try {
    final response = api.getCouplePremiumQuote(contribution, premium, dob, term, frequency);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getCouplePremiumQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contribution** | **num**|  | 
 **premium** | **num**|  | 
 **dob** | **String**|  | 
 **term** | **num**|  | 
 **frequency** | **String**|  | 

### Return type

[**GetSavePremiumQuote200Response**](GetSavePremiumQuote200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCoupleSumAssuredQuote**
> BuiltList<GetSaveSumAssuredQuote200ResponseInner> getCoupleSumAssuredQuote(sumAssured, savings, dob, term, frequency)



Get Quote for Premium Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final num sumAssured = 5000; // num | 
final num savings = 5000; // num | 
final String dob = 01-03-2001; // String | 
final num term = 5; // num | 
final String frequency = frequency_example; // String | 

try {
    final response = api.getCoupleSumAssuredQuote(sumAssured, savings, dob, term, frequency);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getCoupleSumAssuredQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sumAssured** | **num**|  | 
 **savings** | **num**|  | 
 **dob** | **String**|  | 
 **term** | **num**|  | 
 **frequency** | **String**|  | 

### Return type

[**BuiltList&lt;GetSaveSumAssuredQuote200ResponseInner&gt;**](GetSaveSumAssuredQuote200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerById**
> Customer getCustomerById(customerId)



Get customer personal details

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String customerId = e29a5ce0-a4b9-4ab2-85eb-355f01553d54; // String | 

try {
    final response = api.getCustomerById(customerId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getCustomerById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**|  | 

### Return type

[**Customer**](Customer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomersByLoggedInUser**
> BuiltList<Customer> getCustomersByLoggedInUser()



Get customers for user id via jwt

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.getCustomersByLoggedInUser();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getCustomersByLoggedInUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Customer&gt;**](Customer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEndowmentDocument**
> IndividualProtectionDocument getEndowmentDocument(documentId)



Get term assurance with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getEndowmentDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getEndowmentDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**IndividualProtectionDocument**](IndividualProtectionDocument.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEndowmentPremium**
> GetEndowmentPremium200Response getEndowmentPremium(documentId)



Get owner document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getEndowmentPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getEndowmentPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs25kDocument**
> Document getHeirs25kDocument(documentId)



Get Heirs25k document with premium and interests

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getHeirs25kDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs25kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs25kDocumentPremium**
> GetEndowmentPremium200Response getHeirs25kDocumentPremium(documentId)



Get document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getHeirs25kDocumentPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs25kDocumentPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs25kInterestPremium**
> GetEndowmentPremium200Response getHeirs25kInterestPremium(documentId, motorId)



Get interest premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getHeirs25kInterestPremium(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs25kInterestPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs25kQuote**
> GetEndowmentPremium200Response getHeirs25kQuote()



Get Quotes for Heirs 15k

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.getHeirs25kQuote();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs25kQuote: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs35kDocument**
> Document getHeirs35kDocument(documentId)



Get Heirs35k document with premium and interests

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getHeirs35kDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs35kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs35kDocumentPremium**
> GetEndowmentPremium200Response getHeirs35kDocumentPremium(documentId)



Get document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getHeirs35kDocumentPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs35kDocumentPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs35kInterestPremium**
> GetEndowmentPremium200Response getHeirs35kInterestPremium(documentId, motorId)



Get interest premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getHeirs35kInterestPremium(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs35kInterestPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs35kQuote**
> GetEndowmentPremium200Response getHeirs35kQuote()



Get Quotes for Heirs 35k

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.getHeirs35kQuote();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs35kQuote: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs3YearsDocument**
> IndividualProtectionDocument getHeirs3YearsDocument(documentId)



Get term assurance with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getHeirs3YearsDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs3YearsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**IndividualProtectionDocument**](IndividualProtectionDocument.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs3YearsPremium**
> GetEndowmentPremium200Response getHeirs3YearsPremium(documentId)



Get heirs3years document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getHeirs3YearsPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs3YearsPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs3YearsPremiumQuote**
> LifeQuote getHeirs3YearsPremiumQuote(premium, dob, term, frequency)



Get Quote for Sum Assured

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final num premium = 5000; // num | 
final String dob = 01-03-2001; // String | 
final num term = 5; // num | 
final String frequency = frequency_example; // String | 

try {
    final response = api.getHeirs3YearsPremiumQuote(premium, dob, term, frequency);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs3YearsPremiumQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **premium** | **num**|  | 
 **dob** | **String**|  | 
 **term** | **num**|  | 
 **frequency** | **String**|  | 

### Return type

[**LifeQuote**](LifeQuote.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs3YearsSumAssuredQuote**
> BuiltList<LifePremium> getHeirs3YearsSumAssuredQuote(sumAssured, dob, term, frequency)



Get Quote for Premium Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final num sumAssured = 5000; // num | 
final String dob = 01-03-2001; // String | 
final num term = 5; // num | 
final String frequency = frequency_example; // String | 

try {
    final response = api.getHeirs3YearsSumAssuredQuote(sumAssured, dob, term, frequency);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs3YearsSumAssuredQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sumAssured** | **num**|  | 
 **dob** | **String**|  | 
 **term** | **num**|  | 
 **frequency** | **String**|  | 

### Return type

[**BuiltList&lt;LifePremium&gt;**](LifePremium.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs70kDocument**
> Document getHeirs70kDocument(documentId)



Get Heirs70k document with premium and interests

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getHeirs70kDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs70kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs70kDocumentPremium**
> GetEndowmentPremium200Response getHeirs70kDocumentPremium(documentId)



Get document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getHeirs70kDocumentPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs70kDocumentPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs70kInterestPremium**
> GetEndowmentPremium200Response getHeirs70kInterestPremium(documentId, motorId)



Get interest premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getHeirs70kInterestPremium(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs70kInterestPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHeirs70kQuote**
> GetEndowmentPremium200Response getHeirs70kQuote()



Get Quotes for Heirs 70k

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.getHeirs70kQuote();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHeirs70kQuote: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHerMotorDocument**
> Document getHerMotorDocument(documentId)



Get HerMotor document with premium and interests

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getHerMotorDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHerMotorDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHerMotorDocumentPremium**
> GetEndowmentPremium200Response getHerMotorDocumentPremium(documentId)



Get document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getHerMotorDocumentPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHerMotorDocumentPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHerMotorInterestPremium**
> GetEndowmentPremium200Response getHerMotorInterestPremium(documentId, motorId)



Get interest premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getHerMotorInterestPremium(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHerMotorInterestPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHerMotorQuote**
> GetEndowmentPremium200Response getHerMotorQuote(motorClass, motorValue)



Get Quotes for comprehensive by class and value

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorClass = motorClass_example; // String | 
final num motorValue = 8.14; // num | 

try {
    final response = api.getHerMotorQuote(motorClass, motorValue);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHerMotorQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorClass** | **String**|  | 
 **motorValue** | **num**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHerMotorQuoteOptions**
> Get3rdPartyQuoteOptions200Response getHerMotorQuoteOptions(motorClass, motorValue)



Get Quotes options for comprehensive by class and value

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorClass = motorClass_example; // String | 
final num motorValue = 8.14; // num | 

try {
    final response = api.getHerMotorQuoteOptions(motorClass, motorValue);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getHerMotorQuoteOptions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorClass** | **String**|  | 
 **motorValue** | **num**|  | 

### Return type

[**Get3rdPartyQuoteOptions200Response**](Get3rdPartyQuoteOptions200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInsuredPersonById**
> InsuredPersonResponse getInsuredPersonById(personId)



Get insured person

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String personId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    final response = api.getInsuredPersonById(personId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getInsuredPersonById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**|  | 

### Return type

[**InsuredPersonResponse**](InsuredPersonResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInsuredPersonsByLoggedInUser**
> BuiltList<InsuredPersonResponse> getInsuredPersonsByLoggedInUser()



Get insured persons for user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.getInsuredPersonsByLoggedInUser();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getInsuredPersonsByLoggedInUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;InsuredPersonResponse&gt;**](InsuredPersonResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLgas**
> BuiltList<GetLgas200ResponseInner> getLgas()



Get LGA

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.getLgas();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getLgas: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;GetLgas200ResponseInner&gt;**](GetLgas200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLoggedInUser**
> GetLoggedInUser200Response getLoggedInUser()



get a user using JWT

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.getLoggedInUser();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getLoggedInUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetLoggedInUser200Response**](GetLoggedInUser200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMotor3rdPartyFireAndTheftDocument**
> GetMotorFrom3rdPartyDocument200Response getMotor3rdPartyFireAndTheftDocument(documentId, motorId)



Get 3rd party fire and theft interests for document with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getMotor3rdPartyFireAndTheftDocument(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMotor3rdPartyFireAndTheftDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetMotorFrom3rdPartyDocument200Response**](GetMotorFrom3rdPartyDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMotorFrom3rdPartyDocument**
> GetMotorFrom3rdPartyDocument200Response getMotorFrom3rdPartyDocument(documentId, motorId)



Get 3rd party interests for document with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getMotorFrom3rdPartyDocument(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMotorFrom3rdPartyDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetMotorFrom3rdPartyDocument200Response**](GetMotorFrom3rdPartyDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMotorFrom3rdPartyPlusDocument**
> GetMotorFrom3rdPartyDocument200Response getMotorFrom3rdPartyPlusDocument(documentId, motorId)



Get 3rd party interests for document with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getMotorFrom3rdPartyPlusDocument(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMotorFrom3rdPartyPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetMotorFrom3rdPartyDocument200Response**](GetMotorFrom3rdPartyDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMotorFromComprehensiveDocument**
> GetMotorFrom3rdPartyDocument200Response getMotorFromComprehensiveDocument(documentId, motorId)



Get comprehensive interests for document with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getMotorFromComprehensiveDocument(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMotorFromComprehensiveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetMotorFrom3rdPartyDocument200Response**](GetMotorFrom3rdPartyDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMotorFromHeirs25kDocument**
> GetMotorFrom3rdPartyDocument200Response getMotorFromHeirs25kDocument(documentId, motorId)



Get Heirs25k interests for document with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getMotorFromHeirs25kDocument(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMotorFromHeirs25kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetMotorFrom3rdPartyDocument200Response**](GetMotorFrom3rdPartyDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMotorFromHeirs35kDocument**
> GetMotorFrom3rdPartyDocument200Response getMotorFromHeirs35kDocument(documentId, motorId)



Get Heirs35k interests for document with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getMotorFromHeirs35kDocument(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMotorFromHeirs35kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetMotorFrom3rdPartyDocument200Response**](GetMotorFrom3rdPartyDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMotorFromHeirs70kDocument**
> GetMotorFrom3rdPartyDocument200Response getMotorFromHeirs70kDocument(documentId, motorId)



Get Heirs70k interests for document with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getMotorFromHeirs70kDocument(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMotorFromHeirs70kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetMotorFrom3rdPartyDocument200Response**](GetMotorFrom3rdPartyDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMotorFromHerMotorDocument**
> GetMotorFrom3rdPartyDocument200Response getMotorFromHerMotorDocument(documentId, motorId)



Get HerMotor interests for document with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getMotorFromHerMotorDocument(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMotorFromHerMotorDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetMotorFrom3rdPartyDocument200Response**](GetMotorFrom3rdPartyDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMotorInstallments**
> GetMotorInstallments200Response getMotorInstallments(eskaPolicyId)



Get motor installments

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final num eskaPolicyId = 8.14; // num | 

try {
    final response = api.getMotorInstallments(eskaPolicyId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMotorInstallments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eskaPolicyId** | **num**|  | 

### Return type

[**GetMotorInstallments200Response**](GetMotorInstallments200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMotorParticulars**
> MotorParticulars getMotorParticulars(motorId)



Get particulars of a motor

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getMotorParticulars(motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMotorParticulars: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorId** | **String**|  | 

### Return type

[**MotorParticulars**](MotorParticulars.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyHeirsDocument**
> IndividualSavingsDocument getMyHeirsDocument(documentId)



Get term assurance with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getMyHeirsDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMyHeirsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**IndividualSavingsDocument**](IndividualSavingsDocument.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyHeirsPlusDocument**
> IndividualProtectionDocument getMyHeirsPlusDocument(documentId)



Get term assurance with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getMyHeirsPlusDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMyHeirsPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**IndividualProtectionDocument**](IndividualProtectionDocument.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyHeirsPlusPremium**
> GetEndowmentPremium200Response getMyHeirsPlusPremium(documentId)



Get my heirs plus document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getMyHeirsPlusPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMyHeirsPlusPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyHeirsPlusPremiumQuote**
> LifeQuote getMyHeirsPlusPremiumQuote(premium, dob, term, frequency)



Get Quote for Sum Assured

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final num premium = 5000; // num | 
final String dob = 01-03-2001; // String | 
final num term = 5; // num | 
final String frequency = frequency_example; // String | 

try {
    final response = api.getMyHeirsPlusPremiumQuote(premium, dob, term, frequency);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMyHeirsPlusPremiumQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **premium** | **num**|  | 
 **dob** | **String**|  | 
 **term** | **num**|  | 
 **frequency** | **String**|  | 

### Return type

[**LifeQuote**](LifeQuote.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyHeirsPlusSumAssuredQuote**
> BuiltList<LifePremium> getMyHeirsPlusSumAssuredQuote(sumAssured, dob, term, frequency)



Get Quote for Premium Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final num sumAssured = 5000; // num | 
final String dob = 01-03-2001; // String | 
final num term = 5; // num | 
final String frequency = frequency_example; // String | 

try {
    final response = api.getMyHeirsPlusSumAssuredQuote(sumAssured, dob, term, frequency);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMyHeirsPlusSumAssuredQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sumAssured** | **num**|  | 
 **dob** | **String**|  | 
 **term** | **num**|  | 
 **frequency** | **String**|  | 

### Return type

[**BuiltList&lt;LifePremium&gt;**](LifePremium.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyHeirsPremium**
> GetEndowmentPremium200Response getMyHeirsPremium(documentId)



Get my heirs document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getMyHeirsPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMyHeirsPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyHeirsPremiumQuote**
> GetSavePremiumQuote200Response getMyHeirsPremiumQuote(contribution, premium, dob, term, frequency)



Get Quote for Sum Assured

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final num contribution = 5000; // num | 
final num premium = 5000; // num | 
final String dob = 01-03-2001; // String | 
final num term = 5; // num | 
final String frequency = frequency_example; // String | 

try {
    final response = api.getMyHeirsPremiumQuote(contribution, premium, dob, term, frequency);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMyHeirsPremiumQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contribution** | **num**|  | 
 **premium** | **num**|  | 
 **dob** | **String**|  | 
 **term** | **num**|  | 
 **frequency** | **String**|  | 

### Return type

[**GetSavePremiumQuote200Response**](GetSavePremiumQuote200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyHeirsSumAssuredQuote**
> BuiltList<GetSaveSumAssuredQuote200ResponseInner> getMyHeirsSumAssuredQuote(sumAssured, savings, dob, term, frequency)



Get Quote for Premium Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final num sumAssured = 5000; // num | 
final num savings = 5000; // num | 
final String dob = 01-03-2001; // String | 
final num term = 5; // num | 
final String frequency = frequency_example; // String | 

try {
    final response = api.getMyHeirsSumAssuredQuote(sumAssured, savings, dob, term, frequency);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getMyHeirsSumAssuredQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sumAssured** | **num**|  | 
 **savings** | **num**|  | 
 **dob** | **String**|  | 
 **term** | **num**|  | 
 **frequency** | **String**|  | 

### Return type

[**BuiltList&lt;GetSaveSumAssuredQuote200ResponseInner&gt;**](GetSaveSumAssuredQuote200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentStatus**
> GetPaymentStatus200Response getPaymentStatus(payId)



Get payment status

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.getPaymentStatus(payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getPaymentStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payId** | **String**|  | 

### Return type

[**GetPaymentStatus200Response**](GetPaymentStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPersonFromAccidentBronzeDocument**
> GetMotorFrom3rdPartyDocument200Response getPersonFromAccidentBronzeDocument(documentId, accidentId)



Get accident interest for document with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 

try {
    final response = api.getPersonFromAccidentBronzeDocument(documentId, accidentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getPersonFromAccidentBronzeDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 

### Return type

[**GetMotorFrom3rdPartyDocument200Response**](GetMotorFrom3rdPartyDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPersonFromAccidentGoldDocument**
> GetMotorFrom3rdPartyDocument200Response getPersonFromAccidentGoldDocument(documentId, accidentId)



Get accident interest for document with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 

try {
    final response = api.getPersonFromAccidentGoldDocument(documentId, accidentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getPersonFromAccidentGoldDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 

### Return type

[**GetMotorFrom3rdPartyDocument200Response**](GetMotorFrom3rdPartyDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPersonFromAccidentPlatinumDocument**
> GetMotorFrom3rdPartyDocument200Response getPersonFromAccidentPlatinumDocument(documentId, accidentId)



Get accident interest for document with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 

try {
    final response = api.getPersonFromAccidentPlatinumDocument(documentId, accidentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getPersonFromAccidentPlatinumDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 

### Return type

[**GetMotorFrom3rdPartyDocument200Response**](GetMotorFrom3rdPartyDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPersonFromAccidentSilverDocument**
> GetMotorFrom3rdPartyDocument200Response getPersonFromAccidentSilverDocument(documentId, accidentId)



Get accident interest for document with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String accidentId = 04748b6c-83b3-46a5-870c-bac83b3210cd; // String | 

try {
    final response = api.getPersonFromAccidentSilverDocument(documentId, accidentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getPersonFromAccidentSilverDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **accidentId** | **String**|  | 

### Return type

[**GetMotorFrom3rdPartyDocument200Response**](GetMotorFrom3rdPartyDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPolicies**
> BuiltList<PolicyInfo> getPolicies()



Get Policies

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.getPolicies();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getPolicies: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;PolicyInfo&gt;**](PolicyInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSalaryDocument**
> IndividualSavingsDocument getSalaryDocument(documentId)



Get term assurance with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getSalaryDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getSalaryDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**IndividualSavingsDocument**](IndividualSavingsDocument.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSalaryPremium**
> GetEndowmentPremium200Response getSalaryPremium(documentId)



Get salary plus premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getSalaryPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getSalaryPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSaveDocument**
> IndividualSavingsDocument getSaveDocument(documentId)



Get term assurance with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getSaveDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getSaveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**IndividualSavingsDocument**](IndividualSavingsDocument.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSaveExtraDocument**
> IndividualSavingsDocument getSaveExtraDocument(documentId)



Get term assurance with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getSaveExtraDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getSaveExtraDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**IndividualSavingsDocument**](IndividualSavingsDocument.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSaveExtraPremium**
> GetEndowmentPremium200Response getSaveExtraPremium(documentId)



Get save extra document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getSaveExtraPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getSaveExtraPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSaveExtraPremiumQuote**
> GetSavePremiumQuote200Response getSaveExtraPremiumQuote(contribution, premium, dob, term, frequency)



Get Quote for Sum Assured

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final num contribution = 5000; // num | 
final num premium = 5000; // num | 
final String dob = 01-03-2001; // String | 
final num term = 5; // num | 
final String frequency = frequency_example; // String | 

try {
    final response = api.getSaveExtraPremiumQuote(contribution, premium, dob, term, frequency);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getSaveExtraPremiumQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contribution** | **num**|  | 
 **premium** | **num**|  | 
 **dob** | **String**|  | 
 **term** | **num**|  | 
 **frequency** | **String**|  | 

### Return type

[**GetSavePremiumQuote200Response**](GetSavePremiumQuote200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSaveExtraSumAssuredQuote**
> BuiltList<GetSaveSumAssuredQuote200ResponseInner> getSaveExtraSumAssuredQuote(sumAssured, savings, dob, term, frequency)



Get Quote for Premium Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final num sumAssured = 5000; // num | 
final num savings = 5000; // num | 
final String dob = 01-03-2001; // String | 
final num term = 5; // num | 
final String frequency = frequency_example; // String | 

try {
    final response = api.getSaveExtraSumAssuredQuote(sumAssured, savings, dob, term, frequency);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getSaveExtraSumAssuredQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sumAssured** | **num**|  | 
 **savings** | **num**|  | 
 **dob** | **String**|  | 
 **term** | **num**|  | 
 **frequency** | **String**|  | 

### Return type

[**BuiltList&lt;GetSaveSumAssuredQuote200ResponseInner&gt;**](GetSaveSumAssuredQuote200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSavePremium**
> GetEndowmentPremium200Response getSavePremium(documentId)



Get save document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getSavePremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getSavePremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSavePremiumQuote**
> GetSavePremiumQuote200Response getSavePremiumQuote(contribution, premium, dob, term, frequency)



Get Quote for Sum Assured

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final num contribution = 5000; // num | 
final num premium = 5000; // num | 
final String dob = 01-03-2001; // String | 
final num term = 5; // num | 
final String frequency = frequency_example; // String | 

try {
    final response = api.getSavePremiumQuote(contribution, premium, dob, term, frequency);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getSavePremiumQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contribution** | **num**|  | 
 **premium** | **num**|  | 
 **dob** | **String**|  | 
 **term** | **num**|  | 
 **frequency** | **String**|  | 

### Return type

[**GetSavePremiumQuote200Response**](GetSavePremiumQuote200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSaveSumAssuredQuote**
> BuiltList<GetSaveSumAssuredQuote200ResponseInner> getSaveSumAssuredQuote(sumAssured, savings, dob, term, frequency)



Get Quote for Premium Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final num sumAssured = 5000; // num | 
final num savings = 5000; // num | 
final String dob = 01-03-2001; // String | 
final num term = 5; // num | 
final String frequency = frequency_example; // String | 

try {
    final response = api.getSaveSumAssuredQuote(sumAssured, savings, dob, term, frequency);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getSaveSumAssuredQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sumAssured** | **num**|  | 
 **savings** | **num**|  | 
 **dob** | **String**|  | 
 **term** | **num**|  | 
 **frequency** | **String**|  | 

### Return type

[**BuiltList&lt;GetSaveSumAssuredQuote200ResponseInner&gt;**](GetSaveSumAssuredQuote200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSinglePolicy**
> BuiltList<PolicyInfo> getSinglePolicy(company, eskaPolicyId)



Get Single User Policy by Company and EskaPolicyId

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String company = company_example; // String | 
final num eskaPolicyId = 8.14; // num | 

try {
    final response = api.getSinglePolicy(company, eskaPolicyId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getSinglePolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company** | **String**|  | 
 **eskaPolicyId** | **num**|  | 

### Return type

[**BuiltList&lt;PolicyInfo&gt;**](PolicyInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThirdPartyDocumentPremium**
> GetEndowmentPremium200Response getThirdPartyDocumentPremium(documentId)



Get document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getThirdPartyDocumentPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getThirdPartyDocumentPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThirdPartyFireAndTheftDocumentPremium**
> GetEndowmentPremium200Response getThirdPartyFireAndTheftDocumentPremium(documentId)



Get document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getThirdPartyFireAndTheftDocumentPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getThirdPartyFireAndTheftDocumentPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThirdPartyFireAndTheftInterestPremium**
> GetEndowmentPremium200Response getThirdPartyFireAndTheftInterestPremium(documentId, motorId)



Get interest premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getThirdPartyFireAndTheftInterestPremium(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getThirdPartyFireAndTheftInterestPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThirdPartyInterestPremium**
> GetEndowmentPremium200Response getThirdPartyInterestPremium(documentId, motorId)



Get interest premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getThirdPartyInterestPremium(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getThirdPartyInterestPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThirdPartyPlusDocumentPremium**
> GetEndowmentPremium200Response getThirdPartyPlusDocumentPremium(documentId)



Get document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getThirdPartyPlusDocumentPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getThirdPartyPlusDocumentPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThirdPartyPlusInterestPremium**
> GetEndowmentPremium200Response getThirdPartyPlusInterestPremium(documentId, motorId)



Get interest premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 

try {
    final response = api.getThirdPartyPlusInterestPremium(documentId, motorId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getThirdPartyPlusInterestPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **motorId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTriplePayDocument**
> IndividualProtectionDocument getTriplePayDocument(documentId)



Get term assurance with premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getTriplePayDocument(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getTriplePayDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**IndividualProtectionDocument**](IndividualProtectionDocument.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTriplePayPremium**
> GetEndowmentPremium200Response getTriplePayPremium(documentId)



Get triple pay document premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 

try {
    final response = api.getTriplePayPremium(documentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->getTriplePayPremium: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 

### Return type

[**GetEndowmentPremium200Response**](GetEndowmentPremium200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isPasswordLogin**
> IsPasswordLogin200Response isPasswordLogin(resetOtpRequest)



get Log in type for user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final ResetOtpRequest resetOtpRequest = ; // ResetOtpRequest | 

try {
    final response = api.isPasswordLogin(resetOtpRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->isPasswordLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetOtpRequest** | [**ResetOtpRequest**](ResetOtpRequest.md)|  | [optional] 

### Return type

[**IsPasswordLogin200Response**](IsPasswordLogin200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logUserIn**
> AuthToken logUserIn(logUserInRequest)



Log a user in

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final LogUserInRequest logUserInRequest = ; // LogUserInRequest | 

try {
    final response = api.logUserIn(logUserInRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->logUserIn: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logUserInRequest** | [**LogUserInRequest**](LogUserInRequest.md)|  | [optional] 

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logUserInPayment**
> AuthToken logUserInPayment(logUserInRequest)



Log a user in

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final LogUserInRequest logUserInRequest = ; // LogUserInRequest | 

try {
    final response = api.logUserInPayment(logUserInRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->logUserInPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logUserInRequest** | [**LogUserInRequest**](LogUserInRequest.md)|  | [optional] 

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payFor3rdPartyDocument**
> PayForEndowmentDocument200Response payFor3rdPartyDocument(documentId, payId)



Pay for 3rd party premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payFor3rdPartyDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payFor3rdPartyDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payFor3rdPartyFireAndTheftDocument**
> PayForEndowmentDocument200Response payFor3rdPartyFireAndTheftDocument(documentId, payId)



Pay for 3rd party fire and theft premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payFor3rdPartyFireAndTheftDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payFor3rdPartyFireAndTheftDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payFor3rdPartyPlusDocument**
> PayForEndowmentDocument200Response payFor3rdPartyPlusDocument(documentId, payId)



Pay for 3rd party premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payFor3rdPartyPlusDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payFor3rdPartyPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForAccidentBronzeDocument**
> PayForEndowmentDocument200Response payForAccidentBronzeDocument(documentId, payId)



Pay for AccidentBronze premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForAccidentBronzeDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForAccidentBronzeDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForAccidentGoldDocument**
> PayForEndowmentDocument200Response payForAccidentGoldDocument(documentId, payId)



Pay for accident premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForAccidentGoldDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForAccidentGoldDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForAccidentPlatinumDocument**
> PayForEndowmentDocument200Response payForAccidentPlatinumDocument(documentId, payId)



Pay for AccidentPlatinum premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForAccidentPlatinumDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForAccidentPlatinumDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForAccidentSilverDocument**
> PayForEndowmentDocument200Response payForAccidentSilverDocument(documentId, payId)



Pay for AccidentSilver premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForAccidentSilverDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForAccidentSilverDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForComprehensiveDocument**
> PayForEndowmentDocument200Response payForComprehensiveDocument(documentId, payId)



Pay for comprehensive premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForComprehensiveDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForComprehensiveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForCoupleDocument**
> PayForEndowmentDocument200Response payForCoupleDocument(documentId, payId)



Pay for term assurance premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForCoupleDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForCoupleDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForEndowmentDocument**
> PayForEndowmentDocument200Response payForEndowmentDocument(documentId, payId)



Pay for term assurance premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForEndowmentDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForEndowmentDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForHeirs25kDocument**
> PayForEndowmentDocument200Response payForHeirs25kDocument(documentId, payId)



Pay for 3rd party premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForHeirs25kDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForHeirs25kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForHeirs35kDocument**
> PayForEndowmentDocument200Response payForHeirs35kDocument(documentId, payId)



Pay for 3rd party premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForHeirs35kDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForHeirs35kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForHeirs3YearsDocument**
> PayForEndowmentDocument200Response payForHeirs3YearsDocument(documentId, payId)



Pay for term assurance premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForHeirs3YearsDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForHeirs3YearsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForHeirs70kDocument**
> PayForEndowmentDocument200Response payForHeirs70kDocument(documentId, payId)



Pay for 3rd party premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForHeirs70kDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForHeirs70kDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForHerMotorDocument**
> PayForEndowmentDocument200Response payForHerMotorDocument(documentId, payId)



Pay for 3rd party premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForHerMotorDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForHerMotorDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForMyHeirsDocument**
> PayForEndowmentDocument200Response payForMyHeirsDocument(documentId, payId)



Pay for term assurance premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForMyHeirsDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForMyHeirsDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForMyHeirsPlusDocument**
> PayForEndowmentDocument200Response payForMyHeirsPlusDocument(documentId, payId)



Pay for term assurance premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForMyHeirsPlusDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForMyHeirsPlusDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForSalaryDocument**
> PayForEndowmentDocument200Response payForSalaryDocument(documentId, payId)



Pay for term assurance premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForSalaryDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForSalaryDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForSaveDocument**
> PayForEndowmentDocument200Response payForSaveDocument(documentId, payId)



Pay for term assurance premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForSaveDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForSaveDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForSaveExtraDocument**
> PayForEndowmentDocument200Response payForSaveExtraDocument(documentId, payId)



Pay for term assurance premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForSaveExtraDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForSaveExtraDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payForTriplePayDocument**
> PayForEndowmentDocument200Response payForTriplePayDocument(documentId, payId)



Pay for term assurance premium

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 

try {
    final response = api.payForTriplePayDocument(documentId, payId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->payForTriplePayDocument: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 

### Return type

[**PayForEndowmentDocument200Response**](PayForEndowmentDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paystackCallback**
> paystackCallback(paystackId)



Verify Paystack Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String paystackId = e29a3ce0-a4b9-4ab2-85eb-355f01553d55; // String | 

try {
    api.paystackCallback(paystackId);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->paystackCallback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paystackId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register3rdPartyFireAndTheftPayment**
> register3rdPartyFireAndTheftPayment(documentId, payId, payEntry)



Register 3rdPartyFireAndTheft Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.register3rdPartyFireAndTheftPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->register3rdPartyFireAndTheftPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register3rdPartyPayment**
> register3rdPartyPayment(documentId, payId, payEntry)



Register 3rdParty Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.register3rdPartyPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->register3rdPartyPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register3rdPartyPlusPayment**
> register3rdPartyPlusPayment(documentId, payId, payEntry)



Register 3rdParty Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.register3rdPartyPlusPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->register3rdPartyPlusPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerAccidentBronzePayment**
> registerAccidentBronzePayment(documentId, payId, payEntry)



Register AccidentBronze Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerAccidentBronzePayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerAccidentBronzePayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerAccidentGoldPayment**
> registerAccidentGoldPayment(documentId, payId, payEntry)



Register Accident Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerAccidentGoldPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerAccidentGoldPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerAccidentPlatinumPayment**
> registerAccidentPlatinumPayment(documentId, payId, payEntry)



Register AccidentPlatinum Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerAccidentPlatinumPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerAccidentPlatinumPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerAccidentSilverPayment**
> registerAccidentSilverPayment(documentId, payId, payEntry)



Register AccidentSilver Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerAccidentSilverPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerAccidentSilverPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerComprehensivePayment**
> registerComprehensivePayment(documentId, payId, payEntry)



Register Comprehensive Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerComprehensivePayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerComprehensivePayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerCouplePayment**
> registerCouplePayment(documentId, payId, payEntry)



Register Term Assurance Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerCouplePayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerCouplePayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerEndowmentPayment**
> registerEndowmentPayment(documentId, payId, payEntry)



Register Term Assurance Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerEndowmentPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerEndowmentPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerHeirs25kPayment**
> registerHeirs25kPayment(documentId, payId, payEntry)



Register Heirs15k Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerHeirs25kPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerHeirs25kPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerHeirs35kPayment**
> registerHeirs35kPayment(documentId, payId, payEntry)



Register Heirs35k Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerHeirs35kPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerHeirs35kPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerHeirs3YearsPayment**
> registerHeirs3YearsPayment(documentId, payId, payEntry)



Register Term Assurance Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerHeirs3YearsPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerHeirs3YearsPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerHeirs70kPayment**
> registerHeirs70kPayment(documentId, payId, payEntry)



Register Heirs70k Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerHeirs70kPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerHeirs70kPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerHerMotorPayment**
> registerHerMotorPayment(documentId, payId, payEntry)



Register HerMotor Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerHerMotorPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerHerMotorPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerMyHeirsPayment**
> registerMyHeirsPayment(documentId, payId, payEntry)



Register Term Assurance Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerMyHeirsPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerMyHeirsPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerMyHeirsPlusPayment**
> registerMyHeirsPlusPayment(documentId, payId, payEntry)



Register Term Assurance Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerMyHeirsPlusPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerMyHeirsPlusPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerSalaryPayment**
> registerSalaryPayment(documentId, payId, payEntry)



Register Term Assurance Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerSalaryPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerSalaryPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerSaveExtraPayment**
> registerSaveExtraPayment(documentId, payId, payEntry)



Register Term Assurance Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerSaveExtraPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerSaveExtraPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerSavePayment**
> registerSavePayment(documentId, payId, payEntry)



Register Term Assurance Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerSavePayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerSavePayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerTriplePayPayment**
> registerTriplePayPayment(documentId, payId, payEntry)



Register Term Assurance Payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String documentId = f453db02-6337-4797-922c-2fb836b3a146; // String | 
final String payId = f1eacbc0-2e1b-40fe-8fdf-269f1a1d7fed; // String | 
final PayEntry payEntry = ; // PayEntry | 

try {
    api.registerTriplePayPayment(documentId, payId, payEntry);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerTriplePayPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documentId** | **String**|  | 
 **payId** | **String**|  | 
 **payEntry** | [**PayEntry**](PayEntry.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUserWithoutPassword**
> registerUserWithoutPassword(registerUserWithoutPasswordRequest)



create a user without password

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final RegisterUserWithoutPasswordRequest registerUserWithoutPasswordRequest = ; // RegisterUserWithoutPasswordRequest | 

try {
    api.registerUserWithoutPassword(registerUserWithoutPasswordRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->registerUserWithoutPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerUserWithoutPasswordRequest** | [**RegisterUserWithoutPasswordRequest**](RegisterUserWithoutPasswordRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetOtp**
> resetOtp(resetOtpRequest)



Reset password by creating a one time password for an existing user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final ResetOtpRequest resetOtpRequest = ; // ResetOtpRequest | 

try {
    api.resetOtp(resetOtpRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->resetOtp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetOtpRequest** | [**ResetOtpRequest**](ResetOtpRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signUpUser**
> signUpUser(signUpUserRequest)



create a user with password

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final SignUpUserRequest signUpUserRequest = ; // SignUpUserRequest | 

try {
    api.signUpUser(signUpUserRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->signUpUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signUpUserRequest** | [**SignUpUserRequest**](SignUpUserRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomer**
> updateCustomer(customerId, updateCustomerRequest)



Update customer profile

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String customerId = e29a5ce0-a4b9-4ab2-85eb-355f01553d54; // String | 
final UpdateCustomerRequest updateCustomerRequest = ; // UpdateCustomerRequest | 

try {
    api.updateCustomer(customerId, updateCustomerRequest);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->updateCustomer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**|  | 
 **updateCustomerRequest** | [**UpdateCustomerRequest**](UpdateCustomerRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomerAddress**
> updateCustomerAddress(customerId, address)



Create a customer address

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String customerId = e29a5ce0-a4b9-4ab2-85eb-355f01553d54; // String | 
final Address address = ; // Address | 

try {
    api.updateCustomerAddress(customerId, address);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->updateCustomerAddress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**|  | 
 **address** | [**Address**](Address.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomerIdCard**
> updateCustomerIdCard(customerId, upload)



Add a customer id card by upload

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String customerId = e29a5ce0-a4b9-4ab2-85eb-355f01553d54; // String | 
final Upload upload = ; // Upload | 

try {
    api.updateCustomerIdCard(customerId, upload);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->updateCustomerIdCard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**|  | 
 **upload** | [**Upload**](Upload.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomerIdDetails**
> updateCustomerIdDetails(customerId, idDetails)



Add a customer id details by upload

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String customerId = e29a5ce0-a4b9-4ab2-85eb-355f01553d54; // String | 
final IdDetails idDetails = ; // IdDetails | 

try {
    api.updateCustomerIdDetails(customerId, idDetails);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->updateCustomerIdDetails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**|  | 
 **idDetails** | [**IdDetails**](IdDetails.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomerUtilityBill**
> updateCustomerUtilityBill(customerId, upload)



Create a customer utility bill

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String customerId = e29a5ce0-a4b9-4ab2-85eb-355f01553d54; // String | 
final Upload upload = ; // Upload | 

try {
    api.updateCustomerUtilityBill(customerId, upload);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->updateCustomerUtilityBill: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**|  | 
 **upload** | [**Upload**](Upload.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInsuredPerson**
> updateInsuredPerson(personId, customerPersonal)



Update an insured person

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String personId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final CustomerPersonal customerPersonal = {"$ref":"#/components/examples/CustomerPersonal"}; // CustomerPersonal | 

try {
    api.updateInsuredPerson(personId, customerPersonal);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->updateInsuredPerson: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**|  | 
 **customerPersonal** | [**CustomerPersonal**](CustomerPersonal.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInsuredPersonPhoto**
> updateInsuredPersonPhoto(personId, upload)



Add a photo for insured person by upload/capture

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String personId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final Upload upload = ; // Upload | 

try {
    api.updateInsuredPersonPhoto(personId, upload);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->updateInsuredPersonPhoto: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**|  | 
 **upload** | [**Upload**](Upload.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInsuredPersonSignature**
> updateInsuredPersonSignature(personId, upload)



Add a signature for insured person by upload/capture

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String personId = e29a5ce0-a4b9-4ab2-85eb-355f01553d55; // String | 
final Upload upload = ; // Upload | 

try {
    api.updateInsuredPersonSignature(personId, upload);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->updateInsuredPersonSignature: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **personId** | **String**|  | 
 **upload** | [**Upload**](Upload.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMotorParticulars**
> updateMotorParticulars(motorId, motorParticulars)



update particulars of a motor

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final MotorParticulars motorParticulars = ; // MotorParticulars | 

try {
    api.updateMotorParticulars(motorId, motorParticulars);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->updateMotorParticulars: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorId** | **String**|  | 
 **motorParticulars** | [**MotorParticulars**](MotorParticulars.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadFrontSide**
> uploadFrontSide(motorId, upload)



Upload front side

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final Upload upload = ; // Upload | 

try {
    api.uploadFrontSide(motorId, upload);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->uploadFrontSide: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorId** | **String**|  | 
 **upload** | [**Upload**](Upload.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadLeftSide**
> uploadLeftSide(motorId, upload)



Upload left side

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final Upload upload = ; // Upload | 

try {
    api.uploadLeftSide(motorId, upload);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->uploadLeftSide: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorId** | **String**|  | 
 **upload** | [**Upload**](Upload.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadRearSide**
> uploadRearSide(motorId, upload)



Upload rear side

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final Upload upload = ; // Upload | 

try {
    api.uploadRearSide(motorId, upload);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->uploadRearSide: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorId** | **String**|  | 
 **upload** | [**Upload**](Upload.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadRightSide**
> uploadRightSide(motorId, upload)



Upload right side

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String motorId = e9ec0616-c292-4fad-b746-5c172ee70e27; // String | 
final Upload upload = ; // Upload | 

try {
    api.uploadRightSide(motorId, upload);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->uploadRightSide: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **motorId** | **String**|  | 
 **upload** | [**Upload**](Upload.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateIdNumber**
> validateIdNumber(customerId, idNumber)



Validate ID Number

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String customerId = e29a5ce0-a4b9-4ab2-85eb-355f01553d54; // String | 
final String idNumber = AA21536r263; // String | 

try {
    api.validateIdNumber(customerId, idNumber);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->validateIdNumber: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**|  | 
 **idNumber** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateOTP**
> AuthToken validateOTP(validateOTPRequest)



validate a one time password for an existing user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final ValidateOTPRequest validateOTPRequest = ; // ValidateOTPRequest | 

try {
    final response = api.validateOTP(validateOTPRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->validateOTP: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validateOTPRequest** | [**ValidateOTPRequest**](ValidateOTPRequest.md)|  | [optional] 

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateOTPforPayment**
> AuthToken validateOTPforPayment(validateOTPRequest)



validate a one time password for an existing user for payment

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final ValidateOTPRequest validateOTPRequest = ; // ValidateOTPRequest | 

try {
    final response = api.validateOTPforPayment(validateOTPRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DefaultApi->validateOTPforPayment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validateOTPRequest** | [**ValidateOTPRequest**](ValidateOTPRequest.md)|  | [optional] 

### Return type

[**AuthToken**](AuthToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

