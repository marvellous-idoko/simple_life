// ignore_for_file: constant_identifier_names, non_constant_identifier_names

const CACHED_VALUE_EXPIRY_TIME = 24;
const SAVINGS_PRODUCTS_SUM_ASSURED = 100000;
Map<String, String> Company = {
  'HIL': 'Heirs Insurance',
  'HLA': 'Heirs Life Assurance',
};
//  Map<String, String> BusinessChannel = {
//   'MOBILE':'mobile'
// };


enum BusinessType {
  direct('direct');

  // The associated string value
  final String value;

  // Constructor
  const BusinessType(this.value);
}
enum BusinessChannel {
  mobile('mobile');

  // The associated string value
  final String value;

  // Constructor
  const BusinessChannel(this.value);
}

  Map<String, Map<String, dynamic>> HomeOwnerPolicy = {
  'HOMEPROTECT': {
    'name': 'Home Protect',
    'description': 'Home Protect covers your home and its contents against damage or loss.',
    'image': 'home_protect.png',
    'productIcon': 'home_protect_icon.png',
    'maxTerm': '30',
    'minTerm': '1',
    'availableFrequencies':['monthly','quarterly', 'biannual','annual', 'single'],
  },
  'HOMEPROTECTPLUS': {
    'name': 'Home Protect Plus',
    'description': 'Home Protect Plus provides enhanced protection for your home, belongings and household risks.',
    'image': 'home_protect_plus.png',
    'productIcon': 'home_protect_plus_icon.png',
  },
};
Map<String, Map<String, dynamic>> SavingsPolicy = {
    // HEIRSCOUPLE = 'Heirs Couple Plan',
    // HEIRSSALARY = 'Heirs Salary plus',
    // HEIRSENTREPRENUER = 'Heirs Entrepreneurs Plan',
    // MYHEIRS = 'MyHeirs Plan',
    'HEIRSSAVE': {
    'name': 'Heirs Save Plan',
    'description': 'Affordable entry-level protection for a tenant’s personal belongings and selected liabilities.',
    'image': 'tenant_protect_bronze.png',
    'productIcon': 'tenant_protect_bronze_icon.png',
      'terms': ['2', '4'],
      'availableFrequencies':['monthly','quarterly', 'biannual','annual', 'single'],
      'minAmount':'300000'
  },
    // HEIRSSAVEEXTRA = 'Heirs Save Extra',
};

Map<String, Map<String, String>> TenantPolicy = {
  'TENANTPROTECTBRONZE': {
    'name': 'Tenant Protect (Bronze)',
    'description': 'Affordable entry-level protection for a tenant’s personal belongings and selected liabilities.',
    'image': 'tenant_protect_bronze.png',
    'productIcon': 'tenant_protect_bronze_icon.png',
  },
  'TENANTPROTECTSILVER': {
    'name': 'Tenant Protect (Silver)',
    'description': 'Balanced protection for tenants who need broader cover for their belongings and liabilities.',
    'image': 'tenant_protect_silver.png',
    'productIcon': 'tenant_protect_silver_icon.png',
  },
  'TENANTPROTECTGOLD': {
    'name': 'Tenant Protect (Gold)',
    'description': 'Comprehensive tenant protection with higher cover limits for belongings and related risks.',
    'image': 'tenant_protect_gold.png',
    'productIcon': 'tenant_protect_gold_icon.png',
  },
  'TENANTPROTECTPLUS': {
    'name': 'Tenant Protect Plus',
    'description': 'Enhanced tenant insurance for personal property, accidental damage and additional liabilities.',
    'image': 'tenant_protect_plus.png',
    'productIcon': 'tenant_protect_plus_icon.png',
  },
};

Map<String, Map<String, String>> MarineCargoPolicy = {
  'CLAUSEA': {
    'name': 'Marine Cargo (Single Transit) A',
    'description': 'Broad single-transit cargo protection against most accidental loss or damage risks.',
    'image': 'marine_cargo_clause_a.png',
    'productIcon': 'marine_cargo_clause_a_icon.png',
  },
  'CLAUSEB': {
    'name': 'Marine Cargo (Single Transit) B',
    'description': 'Single-transit cargo cover for specified major risks during transportation.',
    'image': 'marine_cargo_clause_b.png',
    'productIcon': 'marine_cargo_clause_b_icon.png',
  },
  'CLAUSEC': {
    'name': 'Marine Cargo (Single Transit) C',
    'description': 'Essential single-transit cargo protection for a defined set of transportation risks.',
    'image': 'marine_cargo_clause_c.png',
    'productIcon': 'marine_cargo_clause_c_icon.png',
  },
};

Map<String, Map<String, String>> ProtectionPolicy = {
  'HEIRSTERM': {
    'name': 'Heirs Term Assure',
    'description': 'Flexible term life cover that protects your loved ones for a chosen period.',
    'image': 'heirs_term_assure.png',
    'productIcon': 'heirs_term_assure_icon.png',
  },
  'HEIRSSMART': {
    'name': 'Heirs Smart School Plan',
    'description': 'An education protection plan designed to keep your child’s schooling on track.',
    'image': 'heirs_smart_school.png',
    'productIcon': 'heirs_smart_school_icon.png',
  },
  'HEIRSSURGERY': {
    'name': 'Heirs Surgery Care Plan',
    'description': 'Financial support for covered surgical procedures and related medical needs.',
    'image': 'heirs_surgery_care.png',
    'productIcon': 'heirs_surgery_care_icon.png',
  },
  'HOSPITALBASIC': {
    'name': 'Heirs Hospital Cash Basic Plan',
    'description': 'Daily cash support during covered hospital admissions at an affordable level.',
    'image': 'hospital_cash_basic.png',
    'productIcon': 'hospital_cash_basic_icon.png',
  },
  'HOSPITALINTERMEDIATE': {
    'name': 'Heirs Hospital Cash Intermediate Plan',
    'description': 'Increased daily hospital cash benefits for additional financial support.',
    'image': 'hospital_cash_intermediate.png',
    'productIcon': 'hospital_cash_intermediate_icon.png',
  },
  'HOSPITALADVANCE': {
    'name': 'Heirs Hospital Cash Advance Plan',
    'description': 'Enhanced daily cash benefits for covered hospital stays and recovery costs.',
    'image': 'hospital_cash_advance.png',
    'productIcon': 'hospital_cash_advance_icon.png',
  },
  'HEIRSTERMRETURN': {
    'name': 'Heirs Term Assurance Cashback',
    'description': 'Term life protection with a cashback benefit when eligible policy conditions are met.',
    'image': 'heirs_term_cashback.png',
    'productIcon': 'heirs_term_cashback_icon.png',
  },
  'HEIRSKEYMAN': {
    'name': 'Heirs Keyman Assurance',
    'description': 'Business protection against the financial impact of losing a key employee.',
    'image': 'heirs_keyman.png',
    'productIcon': 'heirs_keyman_icon.png',
  },
  'HEIRSCREDITLIFE': {
    'name': 'Heirs Credit Life Assurance',
    'description': 'Life cover designed to repay an outstanding eligible loan after a covered event.',
    'image': 'heirs_credit_life.png',
    'productIcon': 'heirs_credit_life_icon.png',
  },
  'HEIRSMORTGAGE': {
    'name': 'Heirs Mortgage Protection Assurance',
    'description': 'Protection that helps settle an eligible mortgage after a covered life event.',
    'image': 'heirs_mortgage_protection.png',
    'productIcon': 'heirs_mortgage_protection_icon.png',
  },
  'HEIRSWHOLELIFE': {
    'name': 'Heirs Whole Life Assurance',
    'description': 'Long-term life protection designed to provide lifelong financial security.',
    'image': 'heirs_whole_life.png',
    'productIcon': 'heirs_whole_life_icon.png',
  },
  'HEIRSWHOLELIFELIMITED': {
    'name': 'Heirs Whole Life Assurance with Limited Premium Term',
    'description':
        'Lifelong cover with premiums payable over a defined limited period.',
    'image': 'heirs_whole_life_limited.png',
    'productIcon': 'heirs_whole_life_limited_icon.png',
  },
};

Map<String, Map<String, dynamic>> EndowmentPolicy = {
  'MYHEIRSPLUS': {
    'name': 'MyHeirs Plus Plan',
    'description': 'A savings and protection plan that helps you build funds for future goals.',
    'image': 'myheirs_plus.png',
    'productIcon': 'myheirs_plus_icon.png',
  },
  'HEIRSTRIPLEPAY': {
    'name': 'Heirs Triple Pay Plan',
    'description': 'A structured savings plan with scheduled benefits and life protection.',
    'image': 'heirs_triple_pay.png',
    'productIcon': 'heirs_triple_pay_icon.png',
    'terms': ['3', '9', '12'],
    'availableFrequencies':['monthly','quarterly', 'biannual','annual'],
    'minAmount':'300000'
  },
  'HEIRSENDOWMENT': {
    'name': 'Heirs Endowment Assurance',
    'description': 'Combines disciplined savings with financial protection over an agreed term.',
    'image': 'heirs_endowment.png',
    'productIcon': 'heirs_endowment_icon.png',
  },
  'HEIRSSECUREPLAN': {
    'name': 'Heirs Secure Plan',
    'description': 'A simple savings and life protection plan for short- to medium-term goals.',
    'image': 'heirs_secure_plan.png',
    'productIcon': 'heirs_secure_plan_icon.png',
  },
  'HEIRS3YEARSAGENT': {
    'name': 'Heirs Secure Plan - Agent',
    'description': 'The agent-supported version of the three-year Heirs Secure savings plan.',
    'image': 'heirs_secure_plan_agent.png',
    'productIcon': 'heirs_secure_plan_agent_icon.png',
  },
  'HEIRS3YEARS': {
    'name': 'Heirs 3-Years Plan',
    'description': 'A three-year savings plan that combines targeted returns with life protection.',
    'image': 'heirs_three_years.png',
    'productIcon': 'heirs_three_years_icon.png',
  },
};

Map<String, Map<String, String>> PersonalAccidentPolicy = {
  'PERSONALBRONZE': {
    'name': 'Heirs Personal Accident (Bronze)',
    'description': 'Entry-level financial protection against covered accidental injury or death.',
    'image': 'personal_accident_bronze.png',
    'productIcon': 'personal_accident_bronze_icon.png',
  },
  'PERSONALSILVER': {
    'name': 'Heirs Personal Accident (Silver)',
    'description':
        'Balanced accidental injury protection with increased benefit limits.',
    'image': 'personal_accident_silver.png',
    'productIcon': 'personal_accident_silver_icon.png',
  },
  'PERSONALGOLD': {
    'name': 'Heirs Personal Accident (Gold)',
    'description':
        'Comprehensive personal accident cover with higher financial benefits.',
    'image': 'personal_accident_gold.png',
    'productIcon': 'personal_accident_gold_icon.png',
  },
  'PERSONALPLATINUM': {
    'name': 'Heirs Personal Accident (Platinum)',
    'description': 'Premium personal accident protection with the highest available benefit level.',
    'image': 'personal_accident_platinum.png',
    'productIcon': 'personal_accident_platinum_icon.png',
  },
};

Map<String, Map<String, String>> SmePolicy = {
  'SMEPROTECT': {
    'name': 'Business Protect',
    'description': 'Practical insurance protection for the property and operations of a small business.',
    'image': 'business_protect.png',
    'productIcon': 'business_protect_icon.png',
  },
  'SMEPROTECTPLUS': {
    'name': 'Business Protect Plus',
    'description': 'Enhanced small-business protection with wider cover and higher benefit limits.',
    'image': 'business_protect_plus.png',
    'productIcon': 'business_protect_plus_icon.png',
  },
};

Map<String, Map<String, String>> MotorPolicy = {
  'HEIRSTHIRDPARTY': {
    'name': 'Third Party',
    'description': 'Mandatory motor insurance covering legal liability for third-party injury or property damage.',
    'image': 'third_party_motor.png',
    'productIcon': 'third_party_motor_icon.png',
  },
  'HEIRSTHIRDPARTYPLUS': {
    'name': 'Heirs Third Party Plus',
    'description': 'Third-party motor cover with additional benefits for selected vehicle risks.',
    'image': 'third_party_plus.png',
    'productIcon': 'third_party_plus_icon.png',
  },
  'HEIRSTHIRDPARTYFIRE': {
    'name': 'Third Party, Fire and Theft',
    'description': 'Third-party liability protection plus cover for fire damage and vehicle theft.',
    'image': 'third_party_fire_theft.png',
    'productIcon': 'third_party_fire_theft_icon.png',
  },
  'HERMOTOR': {
    'name': 'HER Motor',
    'description':
        'Motor protection tailored to the mobility and support needs of women.',
    'image': 'her_motor.png',
    'productIcon': 'her_motor_icon.png',
  },
  'HEIRSCOMPREHENSIVE': {
    'name': 'Comprehensive',
    'description': 'Broad motor cover for accidental damage, theft, fire and third-party liability.',
    'image': 'comprehensive_motor.png',
    'productIcon': 'comprehensive_motor_icon.png',
  },
  'HEIRS70k': {
    'name': 'Heirs Motor Flexi 70K',
    'description':
        'Flexible motor protection offered at the 70K premium level.',
    'image': 'motor_flexi_70k.png',
    'productIcon': 'motor_flexi_70k_icon.png',
  },
  'HEIRS35k': {
    'name': 'Heirs Motor Flexi 35K',
    'description':
        'Flexible motor protection offered at the 35K premium level.',
    'image': 'motor_flexi_35k.png',
    'productIcon': 'motor_flexi_35k_icon.png',
  },
  'HEIRS25k': {
    'name': 'Heirs Motor Flexi 25K',
    'description': 'Accessible flexible motor protection offered at the 25K premium level.',
    'image': 'motor_flexi_25k.png',
    'productIcon': 'motor_flexi_25k_icon.png',
  },
};

Map<String, Map<String, String>> AnnuityPolicy = {
  'PENCOM': {
    'name': 'Heirs Annuity Plan',
    'description': 'A retirement income plan that converts pension savings into regular payments.',
    'image': 'heirs_annuity.png',
    'productIcon': 'heirs_annuity_icon.png',
  },
  'LASPEC': {
    'name': 'LASPEC Annuity Plan',
    'description':
        'A retirement income solution designed for eligible LASPEC retirees.',
    'image': 'laspec_annuity.png',
    'productIcon': 'laspec_annuity_icon.png',
  },
  'LITE': {
    'name': 'Heirs Annuity Lite',
    'description': 'A simplified annuity solution for accessible and dependable retirement income.',
    'image': 'heirs_annuity_lite.png',
    'productIcon': 'heirs_annuity_lite_icon.png',
  },
};

Map<String, String> AnnuitySource = {'DIRECT': 'DIRECT', 'LASPEC': 'LASPEC'};

Map<String, String> MotorType = {
  'BIKE': 'Bike',
  'SALOON': 'Saloon',
  'SUV': 'SUV',
  'HEAVYDUTY': 'Light Truck',
  'LIGHTTRUCK': 'Heavy Duty Truck',
};

Map<String, Map<String, String>> BikersPolicy = {
  'BIKERSTHIRDPARTYPLUS': {
    'name': 'Heirs Bikers Third Party Plus',
    'description': 'Third-party motorcycle protection with additional benefits for riders.',
    'image': 'bikers_third_party_plus.png',
    'productIcon': 'bikers_third_party_plus_icon.png',
  },
  'BIKERSFLEXI': {
    'name': 'Heirs Bikers Flexi Motorcycle',
    'description': 'Flexible motorcycle insurance designed for everyday riders and their bikes.',
    'image': 'bikers_flexi.png',
    'productIcon': 'bikers_flexi_icon.png',
  },
};

Map<String, Map<String, String>> BusinessOwnerPolicy = {
  'BUSINESSPROTECT': {
    'name': 'Business Protect',
    'description': 'Core insurance cover for business premises, assets and selected operational risks.',
    'image': 'business_owner_protect.png',
    'productIcon': 'business_owner_protect_icon.png',
  },
  'BUSINESSPROTECTPLUS': {
    'name': 'Business Protect Plus',
    'description': 'Expanded business-owner protection with broader cover and higher limits.',
    'image': 'business_owner_protect_plus.png',
    'productIcon': 'business_owner_protect_plus_icon.png',
  },
};
