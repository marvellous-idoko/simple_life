// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (Serializers().toBuilder()
      ..add($Address.serializer)
      ..add($CustomerPersonal.serializer)
      ..add($DeathCover.serializer)
      ..add($IndividualProtectionDocument.serializer)
      ..add($MotorParticulars.serializer)
      ..add($Upload.serializer)
      ..add(AccidentPerson.serializer)
      ..add(AccountStatementPremium.serializer)
      ..add(AddLifeEntryToCoupleDocumentRequest.serializer)
      ..add(AddMotorTo3rdPartyDocumentRequest.serializer)
      ..add(Agent.serializer)
      ..add(AgentGenderEnum.serializer)
      ..add(AgentInvitation.serializer)
      ..add(AgentInvitationPositionEnum.serializer)
      ..add(AgentInvitationPrimaryCompanyEnum.serializer)
      ..add(AgentLicense.serializer)
      ..add(AgentLicenseInsuranceAgencyEnum.serializer)
      ..add(AgentSubmission.serializer)
      ..add(AgentSubmissionAgencyEnum.serializer)
      ..add(AgentSubmissionMaritalStatusEnum.serializer)
      ..add(AgentSubmissionQualificationEnum.serializer)
      ..add(AggregatorPartner.serializer)
      ..add(Allocation.serializer)
      ..add(Allocations.serializer)
      ..add(AllocationsAllocationInner.serializer)
      ..add(AnnuitantItem.serializer)
      ..add(AnnuitantLiteItem.serializer)
      ..add(AnnuityInflow.serializer)
      ..add(AnnuityRate.serializer)
      ..add(AnnuitySetting.serializer)
      ..add(AuthToken.serializer)
      ..add(Authorization.serializer)
      ..add(AuthorizationCode.serializer)
      ..add(BancassuranceCorporateReferral.serializer)
      ..add(BancassuranceCorporateReferralChannelEnum.serializer)
      ..add(BancassuranceIndividualReferral.serializer)
      ..add(BancassuranceIndividualReferralChannelEnum.serializer)
      ..add(BancassuranceNonCustomerReferral.serializer)
      ..add(BancassuranceNonCustomerReferralChannelEnum.serializer)
      ..add(Bank.serializer)
      ..add(BankAccount.serializer)
      ..add(BankStatusEnum.serializer)
      ..add(Beneficiary.serializer)
      ..add(BeneficiaryGenderEnum.serializer)
      ..add(BeneficiaryShare.serializer)
      ..add(BrokerPartner.serializer)
      ..add(BuyMotorPolicy.serializer)
      ..add(CargoDocument.serializer)
      ..add(CargoDocumentCargoesInner.serializer)
      ..add(CargoParticulars.serializer)
      ..add(CargoParticularsCurrencyEnum.serializer)
      ..add(CartItem.serializer)
      ..add(ClaimInfo.serializer)
      ..add(ClaimNotice.serializer)
      ..add(Claimant.serializer)
      ..add(ClaimantClaimTypeEnum.serializer)
      ..add(ClaimantClaimantTypeEnum.serializer)
      ..add(ClaimantCost.serializer)
      ..add(ClaimantCostCurrencyEnum.serializer)
      ..add(ClaimantCostProviderTypeEnum.serializer)
      ..add(ClaimantDetailsInner.serializer)
      ..add(ClaimantResponsibilityEnum.serializer)
      ..add(CommissionRate.serializer)
      ..add(CommissionRateFrequencyEnum.serializer)
      ..add(CompanyCustomer.serializer)
      ..add(CompanyPartner.serializer)
      ..add(CompanyPartnerBusinessRegistrationTypeEnum.serializer)
      ..add(CompanyPartnerLinkedPartnerTypeEnum.serializer)
      ..add(Create3rdPartyDocumentRequest.serializer)
      ..add(CreatePasswordRequest.serializer)
      ..add(Customer.serializer)
      ..add(CustomerIDVerification.serializer)
      ..add(CustomerIDVerificationData.serializer)
      ..add(CustomerIDVerificationError.serializer)
      ..add(CustomerId.serializer)
      ..add(CustomerPersonalGenderEnum.serializer)
      ..add(CustomerSanctionListVerification.serializer)
      ..add(DamageUpload.serializer)
      ..add(DeathCoverFrequencyEnum.serializer)
      ..add(DiscountRate.serializer)
      ..add(Document.serializer)
      ..add(DocumentInterestsInner.serializer)
      ..add(DocumentReferral.serializer)
      ..add(Driver.serializer)
      ..add(EskaAgent.serializer)
      ..add(ExistingPolicy.serializer)
      ..add(FlutterwaveEvent.serializer)
      ..add(Get3rdPartyQuoteOptions200Response.serializer)
      ..add(Get3rdPartyQuoteOptions200ResponsePremium.serializer)
      ..add(GetEndowmentPremium200Response.serializer)
      ..add(GetLgas200ResponseInner.serializer)
      ..add(GetLoggedInUser200Response.serializer)
      ..add(GetMotorFrom3rdPartyDocument200Response.serializer)
      ..add(GetMotorInstallments200Response.serializer)
      ..add(GetPaymentStatus200Response.serializer)
      ..add(GetSavePremiumQuote200Response.serializer)
      ..add(GetSaveSumAssuredQuote200ResponseInner.serializer)
      ..add(Guarantor.serializer)
      ..add(HealthForm.serializer)
      ..add(HealthFormDisabilityIssuesEnum.serializer)
      ..add(HealthFormEngageInSportEnum.serializer)
      ..add(HealthFormGeneralBodyWeaknessEnum.serializer)
      ..add(HealthFormHeartIssuesEnum.serializer)
      ..add(HealthFormNeuralIssuesEnum.serializer)
      ..add(HealthFormPreExistingIssuesEnum.serializer)
      ..add(HealthFormPregnantEnum.serializer)
      ..add(HealthFormRenalIssuesEnum.serializer)
      ..add(HealthFormRespiratoryIssuesEnum.serializer)
      ..add(HealthFormStateOfHealthEnum.serializer)
      ..add(HealthFormStiIssuesEnum.serializer)
      ..add(HouseItem.serializer)
      ..add(IdCardDetails.serializer)
      ..add(IdDetails.serializer)
      ..add(IdDetailsTypeEnum.serializer)
      ..add(IndividualPartner.serializer)
      ..add(IndividualPartnerLinkedPartnerTypeEnum.serializer)
      ..add(IndividualProtectionDocumentBasic.serializer)
      ..add(IndividualSavingsDocument.serializer)
      ..add(InsuredPersonResponse.serializer)
      ..add(InterestRate.serializer)
      ..add(InterestRateFrequencyEnum.serializer)
      ..add(IsPasswordLogin200Response.serializer)
      ..add(LifePremium.serializer)
      ..add(LifePremiumFrequencyEnum.serializer)
      ..add(LifeQuote.serializer)
      ..add(LogUserInRequest.serializer)
      ..add(MandateDebit.serializer)
      ..add(MarinePortalUnitType.serializer)
      ..add(MobileItem.serializer)
      ..add(MotorClass.serializer)
      ..add(MotorClassCategoryEnum.serializer)
      ..add(MotorDocument.serializer)
      ..add(MotorDocumentMotorsInner.serializer)
      ..add(MotorParticularsTypeEnum.serializer)
      ..add(MotorParticularsUseEnum.serializer)
      ..add(MotorPremium.serializer)
      ..add(OwnDamage.serializer)
      ..add(OwnerParticulars.serializer)
      ..add(OwnerParticularsBuildingTypeEnum.serializer)
      ..add(OwnerParticularsMaterialEnum.serializer)
      ..add(PartnerPolicySubmission.serializer)
      ..add(PartnerPolicySubmissionBeneficiaryInner.serializer)
      ..add(PartnerPolicySubmissionGenderEnum.serializer)
      ..add(PartnerPolicySubmissionPartnerTypeEnum.serializer)
      ..add(PartnerPolicySubmissionProductIdEnum.serializer)
      ..add(PartnerType.serializer)
      ..add(PayEntry.serializer)
      ..add(PayEntryMethodEnum.serializer)
      ..add(PayForEndowmentDocument200Response.serializer)
      ..add(PaystackEvent.serializer)
      ..add(PaystackMandate.serializer)
      ..add(PaystackMandateFrequencyEnum.serializer)
      ..add(PolicyInfo.serializer)
      ..add(PolicyPremiumSummary.serializer)
      ..add(PreLossComment.serializer)
      ..add(PreLossPhotoLink.serializer)
      ..add(PreLossQuery.serializer)
      ..add(PreLossQueryResponse.serializer)
      ..add(PreLossStatus.serializer)
      ..add(PreLossVideoLink.serializer)
      ..add(ProblemDetail.serializer)
      ..add(PropertyDamage.serializer)
      ..add(ProposalInfo.serializer)
      ..add(Rating.serializer)
      ..add(RegisterUserWithoutPasswordRequest.serializer)
      ..add(RemitaMandate.serializer)
      ..add(RemitaMandateFrequencyEnum.serializer)
      ..add(Rent.serializer)
      ..add(RenterParticulars.serializer)
      ..add(RenterParticularsAnyOf.serializer)
      ..add(ResetOtpRequest.serializer)
      ..add(Rider.serializer)
      ..add(RiderFrequencyEnum.serializer)
      ..add(RiderResponse.serializer)
      ..add(RiderResponseFrequencyEnum.serializer)
      ..add(Role.serializer)
      ..add(RoleStatusEnum.serializer)
      ..add(SignUpUserRequest.serializer)
      ..add(StatementPremium.serializer)
      ..add(SurrenderRate.serializer)
      ..add(TermAssurance.serializer)
      ..add(TravelPremium.serializer)
      ..add(UBABranch.serializer)
      ..add(UBABranchRegionEnum.serializer)
      ..add(UBAStaffReferrer.serializer)
      ..add(UpdateCustomerRequest.serializer)
      ..add(UploadUseEnum.serializer)
      ..add(ValidateOTPRequest.serializer)
      ..add(Voucher.serializer)
      ..add(VoucherCompanyEnum.serializer)
      ..add(VoucherRecipientTypeEnum.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(AllocationsAllocationInner)]),
          () => ListBuilder<AllocationsAllocationInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(BeneficiaryShare)]),
          () => ListBuilder<BeneficiaryShare>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Rider)]),
          () => ListBuilder<Rider>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CargoDocumentCargoesInner)]),
          () => ListBuilder<CargoDocumentCargoesInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ClaimantDetailsInner)]),
          () => ListBuilder<ClaimantDetailsInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(DocumentInterestsInner)]),
          () => ListBuilder<DocumentInterestsInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(MotorDocumentMotorsInner)]),
          () => ListBuilder<MotorDocumentMotorsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(PartnerPolicySubmissionBeneficiaryInner)]),
          () => ListBuilder<PartnerPolicySubmissionBeneficiaryInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Rider)]),
          () => ListBuilder<Rider>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(BeneficiaryShare)]),
          () => ListBuilder<BeneficiaryShare>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Rider)]),
          () => ListBuilder<Rider>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(BeneficiaryShare)]),
          () => ListBuilder<BeneficiaryShare>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(num)]),
          () => ListBuilder<num>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(JsonObject)]),
          () => ListBuilder<JsonObject?>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
