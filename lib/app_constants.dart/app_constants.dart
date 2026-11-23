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

Map<String, Map<String, dynamic>> ProtectionPolicy = {
  'HEIRSTERM': {
    'name': 'Heirs Term Assure',
    'description': 'Heirs Term Assure is a savings and protection plan that helps you build funds for future goals.',
    'image': 'heirs_term_assure.png',
    'productIcon': 'heirs_term_assure_icon.png',
    'terms': ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
    'availableFrequencies': ['annual'],
    'minAmount': '1000',
  },
  'HEIRSSMART': {
    'name': 'Heirs Smart School Plan',
    'description': 'Heirs Smart School Plan is a savings and protection plan that helps you build funds for future goals.',
    'image': 'heirs_smart_school.png',
    'productIcon': 'heirs_smart_school_icon.png',
    'terms': ['1'],
    'availableFrequencies': ['annual'],
    'minAmount': '300000',
  },
  'HEIRSSURGERY': {
    'name': 'Heirs Surgery Care Plan',
    'description': 'Heirs Surgery Care Plan is a savings and protection plan that helps you build funds for future goals.',
    'image': 'heirs_surgery_care.png',
    'productIcon': 'heirs_surgery_care_icon.png',
    'terms': ['3', '9', '12'],
    'availableFrequencies': ['monthly', 'quarterly', 'biannual', 'annual'],
    'minAmount': '300000',
  },
  'HOSPITALBASIC': {
    'name': 'Heirs Hospital Cash Basic Plan',
    'description': 'Heirs Hospital Cash Basic Plan is a savings and protection plan that helps you build funds for future goals.',
    'image': 'hospital_cash_basic.png',
    'productIcon': 'hospital_cash_basic_icon.png',
    'terms': ['1'],
    'availableFrequencies': ['annual'],
    'minAmount': '600',
  },
  'HOSPITALINTERMEDIATE': {
    'name': 'Heirs Hospital Cash Intermediate Plan',
    'description': 'Heirs Hospital Cash Intermediate Plan is a savings and protection plan that helps you build funds for future goals.',
    'image': 'hospital_cash_intermediate.png',
    'productIcon': 'hospital_cash_intermediate_icon.png',
    'terms': ['1'],
    'availableFrequencies': ['annual'],
    'minAmount': '1500',
  },
  'HOSPITALADVANCE': {
    'name': 'Heirs Hospital Cash Advance Plan',
    'description': 'Heirs Hospital Cash Advance Plan is a savings and protection plan that helps you build funds for future goals.',
    'image': 'hospital_cash_advance.png',
    'productIcon': 'hospital_cash_advance_icon.png',
    'terms': ['1'],
    'availableFrequencies': ['annual'],
    'minAmount': '2800',
  },
  // 'HEIRSTERMRETURN': {
  //   'name': 'Heirs Term Assurance Cashback',
  //   'description': 'Heirs Term Assurance Cashback is a savings and protection plan that helps you build funds for future goals.',
  //   'image': 'heirs_term_cashback.png',
  //   'productIcon': 'heirs_term_cashback_icon.png',
  //   'terms': ['3', '9', '12'],
  //   'availableFrequencies':['monthly','quarterly', 'biannual','annual'],
  //   'minAmount':'300000'
  // },
  'HEIRSKEYMAN': {
    'name': 'Heirs Keyman Assurance',
    'description': 'Heirs Keyman Assurance is a savings and protection plan that helps you build funds for future goals.',
    'image': 'heirs_keyman.png',
    'productIcon': 'heirs_keyman_icon.png',
    'terms': ['1', '2', '3', '4', '5'],
    'availableFrequencies': ['annual', 'single'],
    'minAmount': '10000',
  },
  'HEIRSCREDITLIFE': {
    'name': 'Heirs Credit Life Assurance',
    'description': 'Heirs Credit Life Assurance is a savings and protection plan that helps you build funds for future goals.',
    'image': 'heirs_credit_life.png',
    'productIcon': 'heirs_credit_life_icon.png',
    'terms': ['1', '2', '3', '4', '5'],
    'availableFrequencies': ['annual'],
  },
  'HEIRSWHOLELIFE': {
    'name': 'Heirs Whole Life Assurance',
    'description': 'Long-term life protection designed to provide lifelong financial security.',
    'image': 'heirs_whole_life.png',
    'productIcon': 'heirs_whole_life_icon.png',
    'terms': ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
    'availableFrequencies': ['monthly', 'quarterly', 'biannual', 'annual'],
    'minAmount': '1000',
  },
  'HEIRSWHOLELIFELIMITED': {
    'name': 'Heirs Whole Life Assurance with Limited Premium Term',
    'description':
        'Lifelong cover with premiums payable over a defined limited period.',
    'image': 'heirs_whole_life_limited.png',
    'productIcon': 'heirs_whole_life_limited_icon.png',
    'terms': ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
    'availableFrequencies': ['monthly', 'quarterly', 'biannual', 'annual'],
    'minAmount': '1000',
  },
};

Map<String, Map<String, dynamic>> EndowmentPolicy = {
  'MYHEIRSPLUS': {
    'name': 'MyHeirs Plus Plan',
    'description': 'MyHeirs Plus Plan is a savings and protection plan that helps you build funds for future goals.',
    'image': 'myheirs_plus.png',
    'productIcon': 'myheirs_plus_icon.png',
    'terms': ['3', '9', '12'],
    'availableFrequencies': ['monthly', 'quarterly', 'biannual', 'annual'],
    'minAmount': '300000',
  },
  'HEIRSTRIPLEPAY': {
    'name': 'Heirs Triple Pay Plan',
    'description': 'Heirs Triple Pay Plan is a savings and protection plan that helps you build funds for future goals.',
    'image': 'heirs_triple_pay.png',
    'productIcon': 'heirs_triple_pay_icon.png',
    'terms': ['3', '9', '12'],
    'availableFrequencies': [
      'monthly',
      'quarterly',
      'biannual',
      'annual',
      'single',
    ],
    'minAmount': '300000',
  },
  'HEIRSENDOWMENT': {
    'name': 'Heirs Endowment Assurance',
    'description': 'Heirs Endowment Assurance is a savings and protection plan that helps you build funds for future goals.',
    'image': 'heirs_endowment.png',
    'productIcon': 'heirs_endowment_icon.png',
    'terms': ['3', '9', '12'],
    'availableFrequencies': ['monthly', 'quarterly', 'biannual', 'annual'],
    'minAmount': '300000',
  },
  'HEIRSSECUREPLAN': {
    'name': 'Heirs Secure Plan',
    'description': 'Heirs Secure Plan is a savings and protection plan that helps you build funds for future goals.',
    'image': 'heirs_secure_plan.png',
    'productIcon': 'heirs_secure_plan_icon.png',
    'terms': ['3'],
    'availableFrequencies': ['single'],
    'minAmount': '250000',
  },
};
Map<String, Map<String, dynamic>> HomeOwnerPolicy = {
  'HOMEPROTECT': {
    'name': 'Home Protect',
    'description': 'Home Protect covers your home and its contents against damage or loss.',
    'image': 'home_protect.png',
    'productIcon': 'Homeowner.png',
    'terms': ['1'],
    'availableFrequencies': ['single'],
    'minAmount':'25000',
    'maxCost':'25000000',

},
  'HOMEPROTECTPLUS': {
    'name': 'Home Protect Plus',
    'description': 'Home Protect Plus provides enhanced protection for your home, belongings and household risks.',
    'image': 'home_protect_plus.png',
    'productIcon': 'Homeowner.png',
    'terms': ['1'],
    'availableFrequencies': ['single'],
    'minCost':'25000000',
  },
};
Map<String, Map<String, dynamic>> SavingsPolicy = {
  'HEIRSCOUPLE': {
    'name': 'Heirs Couple Plan',
    'description': 'Affordable entry-level protection for a tenant’s personal belongings and selected liabilities.',
    'image': 'tenant_protect_bronze.png',
    'productIcon': 'tenant_protect_bronze_icon.png',
    'terms': ['2', '4'],
    'availableFrequencies': [
      'monthly',
      'quarterly',
      'biannual',
      'annual',
      'single',
    ],
    'minAmount': '300000',
  },
  'HEIRSSALARY': {
    'name': 'Heirs Salary plus',
    'description': 'Affordable entry-level protection for a tenant’s personal belongings and selected liabilities.',
    'image': 'tenant_protect_bronze.png',
    'productIcon': 'tenant_protect_bronze_icon.png',
    'terms': ['2', '4'],
    'availableFrequencies': [
      'monthly',
      'quarterly',
      'biannual',
      'annual',
      'single',
    ],
    'minAmount': '300000',
  },
  'HEIRSENTREPRENUER': {
    'name': 'Heirs Entrepreneurs Plan',
    'description': 'Affordable entry-level protection for a tenant’s personal belongings and selected liabilities.',
    'image': 'tenant_protect_bronze.png',
    'productIcon': 'tenant_protect_bronze_icon.png',
    'terms': ['2', '4'],
    'availableFrequencies': [
      'monthly',
      'quarterly',
      'biannual',
      'annual',
      'single',
    ],
    'minAmount': '300000',
  },
  'MYHEIRS': {
    'name': 'MyHeirs Plan',
    'description': 'Affordable entry-level protection for a tenant’s personal belongings and selected liabilities.',
    'image': 'tenant_protect_bronze.png',
    'productIcon': 'tenant_protect_bronze_icon.png',
    'terms': ['2', '4'],
    'availableFrequencies': [
      'monthly',
      'quarterly',
      'biannual',
      'annual',
      'single',
    ],
    'minAmount': '300000',
  },
  'HEIRSSAVE': {
    'name': 'Heirs Save Plan',
    'description': 'Affordable entry-level protection for a tenant’s personal belongings and selected liabilities.',
    'image': 'tenant_protect_bronze.png',
    'productIcon': 'tenant_protect_bronze_icon.png',
    'terms': ['2', '4'],
    'availableFrequencies': [
      'monthly',
      'quarterly',
      'biannual',
      'annual',
      'single',
    ],
    'minAmount': '300000',
  },
  'HEIRSSAVEEXTRA': {
    'name': 'Heirs Save Extra',
    'description': 'Affordable entry-level protection for a tenant’s personal belongings and selected liabilities.',
    'image': 'tenant_protect_bronze.png',
    'productIcon': 'tenant_protect_bronze_icon.png',
    'terms': ['2', '4'],
    'availableFrequencies': [
      'monthly',
      'quarterly',
      'biannual',
      'annual',
      'single',
    ],
    'minAmount': '300000',
  },
};

Map<String, Map<String, dynamic>> TenantPolicy = {
  'TENANTPROTECTBRONZE': {
    'name': 'Tenant Protect (Bronze)',
    'description': 'Affordable entry-level protection for a tenant’s personal belongings and selected liabilities.',
    'image': 'TenantProtect.png',
    'productIcon': 'TenantProtect.png',
  },
  'TENANTPROTECTSILVER': {
    'name': 'Tenant Protect (Silver)',
    'description': 'Balanced protection for tenants who need broader cover for their belongings and liabilities.',
    'image': 'TenantProtect.png',
    'productIcon': 'TenantProtect.png',
  },
  'TENANTPROTECTGOLD': {
    'name': 'Tenant Protect (Gold)',
    'description': 'Comprehensive tenant protection with higher cover limits for belongings and related risks.',
    'image': 'TenantProtect.png',
    'productIcon': 'TenantProtect.png',
  },
  'TENANTPROTECTPLUS': {
    'name': 'Tenant Protect Plus',
    'description': 'Enhanced tenant insurance for personal property, accidental damage and additional liabilities.',
    'image': 'TenantProtect.png',
    'productIcon': 'TenantProtect.png',
  },
};

Map<String, Map<String, dynamic>> MarineCargoPolicy = {
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
Map<String, Map<String, dynamic>> FireTheftPolicy = {
  'FIREANDTHEFT': {
    'name': 'Fire and Theft',
    'description': 'Our Fire & Special Perils plan is for smart property owners who want to protect their buildings against damage caused by fire, lightning, explosion, natural disasters, and other related incidents.<br><br> If any of the stated risks occur, we will pay to fix or replace your damaged property.',
    'image': 'fire_and_theft.png',
    'productIcon': 'fire_and_theft_icon.png',
  },
};

Map<String, Map<String, dynamic>> PersonalAccidentPolicy = {
  'PERSONALBRONZE': {
    'name': 'Heirs Personal Accident (Bronze)',
    'description': 'Entry-level financial protection against covered accidental injury or death.',
    'image': 'personal_accident_bronze.png',
    'productIcon': 'PersonalAccident.png',
  },
  'PERSONALSILVER': {
    'name': 'Heirs Personal Accident (Silver)',
    'description':
        'Balanced accidental injury protection with increased benefit limits.',
    'image': 'personal_accident_silver.png',
    'productIcon': 'PersonalAccident.png',
  },
  'PERSONALGOLD': {
    'name': 'Heirs Personal Accident (Gold)',
    'description':
        'Comprehensive personal accident cover with higher financial benefits.',
    'image': 'personal_accident_gold.png',
    'productIcon': 'PersonalAccident.png',
  },
  'PERSONALPLATINUM': {
    'name': 'Heirs Personal Accident (Platinum)',
    'description': 'Premium personal accident protection with the highest available benefit level.',
    'image': 'personal_accident_platinum.png',
    'productIcon': 'PersonalAccident.png',
  },
};

Map<String, Map<String, dynamic>> MotorPolicy = {
  'HEIRSTHIRDPARTY': {
    'name': 'Third Party',
    'description': 'Mandatory motor insurance covering legal liability for third-party injury or property damage.',
    'image': 'third_party_motor.png',
    'productIcon': 'third_party_motor_icon.png',
  },
  // 'HEIRSTHIRDPARTYPLUS': {
  //   'name': 'Heirs Third Party Plus',
  //   'description': 'Third-party motor cover with additional benefits for selected vehicle risks.',
  //   'image': 'third_party_plus.png',
  //   'productIcon': 'third_party_plus_icon.png',
  // },
  // 'HEIRSTHIRDPARTYFIRE': {
  //   'name': 'Third Party, Fire and Theft',
  //   'description': 'Third-party liability protection plus cover for fire damage and vehicle theft.',
  //   'image': 'third_party_fire_theft.png',
  //   'productIcon': 'third_party_fire_theft_icon.png',
  // },
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

Map<String, Map<String, dynamic>> AnnuityPolicy = {
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

Map<String, Map<String, dynamic>> SmePolicy = {
  'BUSINESSPROTECT': {
    'name': 'Business Protect',
    'description': 'Core insurance cover for business premises, assets and selected operational risks.',
    'image': 'shop-insurance.jpg',
    'productIcon': 'shop-insurance.jpg',
    'terms': ['1'],
    'availableFrequencies': ['single'],
    'maxCost':'25000000'
  },
  'BUSINESSPROTECTPLUS': {
    'name': 'Business Protect Plus',
    'description': 'Expanded business-owner protection with broader cover and higher limits.',
    'image': 'business_owner_protect_plus.png',
    'productIcon': 'shop-insurance.jpg',
    'terms': ['1'],
    'availableFrequencies': ['single'],
    'minCost':'25000000'
  },
};

enum PaymentMethod {
  paystack('paystack'),
  van('virtual-account');

  // The associated string value
  final String value;

  // Constructor
  const PaymentMethod(this.value);
}

Map<String, String> POLICY_CANCELLATION_REASONS = {
  'REASON_1': 'Change in Financial Situation',
  'REASON_2': 'Policy Terms Not Well Understood',
  'REASON_3': 'Changes in Personal Circumstances',
  'REASON_4': 'Dissatisfaction with Service or Delays',
  'REASON_5': 'Policy Not Yet in Force',
};
List<Object> SOURCE_OF_WEALTHS = [
  {'value': 1, 'title': 'Insurance Proceeds'},
  {'value': 2, 'title': 'Salary'},
  {'value': 3, 'title': 'Retirement Income '},
  {'value': 4, 'title': 'Investment'},
  {'value': 5, 'title': 'Business Earnings'},
  {'value': 6, 'title': 'Inheritance'},
  {'value': 7, 'title': 'Property sales'},
  {'value': 8, 'title': 'Gifts'},
];

enum SourceOfWealth {
  insuranceProceeds(1, 'Insurance Proceeds'),
  salary(2, 'Salary'),
  retirementIncome(3, 'Retirement Income'),
  investment(4, 'Investment'),
  businessEarnings(5, 'Business Earnings'),
  inheritance(6, 'Inheritance'),
  propertySales(7, 'Property Sales'),
  gifts(8, 'Gifts');

  final int value;
  final String title;
  const SourceOfWealth(this.value, this.title);
}

Map<String, List<Object>> OCCUPATIONS = {
  "Public Sector / Civil Service": [
    {'value': 4000, 'title': 'Civil Servant'},
    {'value': 4001, 'title': 'Teacher (Public School)'},
    {'value': 4002, 'title': 'Lecturer (Public University/Polytechnic)'},
    {'value': 4003, 'title': 'Military Personnel'},
    {'value': 4004, 'title': 'Police Officer'},
    {'value': 4005, 'title': 'Immigration Officer'},
    {'value': 4006, 'title': 'Customs Officer'},
    {'value': 4007, 'title': 'FRSC Officer'},
    {'value': 4008, 'title': 'NSCDC Officer'},
    {'value': 4009, 'title': 'Fire Service Officer'},
    {'value': 4010, 'title': 'Correctional Service Officer'},
    {'value': 4011, 'title': 'Local Government Worker'},
    {'value': 4012, 'title': 'State Government Worker'},
    {'value': 4013, 'title': 'Federal Government Worker'},
    {'value': 4014, 'title': 'Lawmaker / Legislator'},
    {'value': 4015, 'title': 'Judiciary Staff (Court Clerk, Registrar)'},
  ],
  "Private Sector – White Collar Jobs": [
    {'value': 4016, 'title': 'Accountant'},
    {'value': 4017, 'title': 'Auditor'},
    {'value': 4018, 'title': 'Banker / Financial Services Staff'},
    {'value': 4019, 'title': 'Insurance Professional'},
    {'value': 4020, 'title': 'Lawyer / Legal Practitioner'},
    {'value': 4021, 'title': 'Doctor / Medical Practitioner'},
    {'value': 4022, 'title': 'Nurse / Midwife'},
    {'value': 4023, 'title': 'Pharmacist'},
    {'value': 4024, 'title': 'Engineer (Civil, Mechanical, Electrical, etc.)'},
    {'value': 4025, 'title': 'Architect'},
    {'value': 4026, 'title': 'Surveyor'},
    {'value': 4027, 'title': 'IT Professional / Software Developer'},
    {'value': 4028, 'title': 'Data Analyst'},
    {'value': 4029, 'title': 'Human Resources Professional'},
    {'value': 4030, 'title': 'Customer Service Representative'},
    {'value': 4031, 'title': 'Marketing Executive'},
    {'value': 4032, 'title': 'Project Manager'},
    {'value': 4033, 'title': 'Business Analyst'},
    {'value': 4034, 'title': 'Operations Officer'},
    {'value': 4035, 'title': 'Journalist / Media Personnel'},
    {'value': 4036, 'title': 'Consultant'},
    {'value': 4037, 'title': 'Real Estate Agent'},
    {'value': 4038, 'title': 'Pilot / Aviation Staff'},
    {'value': 4039, 'title': 'Cabin Crew / Flight Attendant'},
    {'value': 4040, 'title': 'Private School Teacher / Lecturer'},
  ],
  "Skilled Trades / Artisans": [
    {'value': 4041, 'title': 'Tailor / Fashion Designer'},
    {'value': 4042, 'title': 'Hair Stylist / Barber'},
    {'value': 4043, 'title': 'Makeup Artist'},
    {'value': 4044, 'title': 'Carpenter'},
    {'value': 4045, 'title': 'Mechanic / Auto Technician'},
    {'value': 4046, 'title': 'Electrician'},
    {'value': 4047, 'title': 'Plumber'},
    {'value': 4048, 'title': 'Welder'},
    {'value': 4049, 'title': 'Painter'},
    {'value': 4050, 'title': 'Bricklayer / Mason'},
    {'value': 4051, 'title': 'Generator Repairer'},
    {'value': 4052, 'title': 'Shoe Maker / Cobbler'},
    {'value': 4053, 'title': 'Event Decorator'},
    {'value': 4054, 'title': 'DJ / Sound Engineer'},
    {'value': 4055, 'title': 'Photographer / Videographer'},
  ],
  "Informal / Self-Employed": [
    {'value': 4056, 'title': 'Trader / Business Owner'},
    {'value': 4057, 'title': 'Market Woman / Man'},
    {'value': 4058, 'title': 'Food Vendor / Caterer'},
    {'value': 4059, 'title': 'POS Operator / Agent Banker'},
    {
      'value': 4060,
      'title': 'Transport Operator (Bus / Taxi Driver / Keke / Okada)',
    },
    {'value': 4061, 'title': 'Logistics Operator / Dispatch Rider'},
    {'value': 4062, 'title': 'Tailor / Seamstress (Self-employed)'},
    {'value': 4063, 'title': 'Shop Owner / Boutique Owner'},
    {'value': 4064, 'title': 'Farmer'},
    {'value': 4065, 'title': 'Fisherman'},
    {'value': 4066, 'title': 'Butcher'},
    {'value': 4067, 'title': 'Baker'},
    {'value': 4068, 'title': 'Laundry / Dry Cleaner'},
    {'value': 4069, 'title': 'House Help / Nanny'},
    {'value': 4070, 'title': 'Security Guard'},
  ],
  "Agriculture": [
    {'value': 4071, 'title': 'Crop Farmer'},
    {'value': 4072, 'title': 'Livestock Farmer'},
    {'value': 4073, 'title': 'Poultry Farmer'},
    {'value': 4074, 'title': 'Fish Farmer'},
    {'value': 4075, 'title': 'Agro-Dealer / Produce Buyer'},
    {'value': 4076, 'title': 'Agricultural Extension Worker'},
  ],
  "Creative Industry / Entertainment": [
    {'value': 4077, 'title': 'Actor / Actress'},
    {'value': 4078, 'title': 'Musician / Singer'},
    {'value': 4079, 'title': 'Dancer'},
    {'value': 4080, 'title': 'Comedian'},
    {'value': 4081, 'title': 'Influencer / Content Creator'},
    {'value': 4082, 'title': 'Fashion Model'},
    {'value': 4083, 'title': 'Visual Artist'},
    {'value': 4084, 'title': 'Graphic Designer'},
    {'value': 4085, 'title': 'Make-up Artist'},
    {'value': 4086, 'title': 'Event Planner'},
  ],
  "Technology & Digital": [
    {'value': 4087, 'title': 'Software Engineer'},
    {'value': 4088, 'title': 'Product Manager'},
    {'value': 4089, 'title': 'UI/UX Designer'},
    {'value': 4090, 'title': 'Data Scientist'},
    {'value': 4091, 'title': 'Cybersecurity Analyst'},
    {'value': 4092, 'title': 'Digital Marketer'},
    {'value': 4093, 'title': 'Social Media Manager'},
    {'value': 4094, 'title': 'Content Creator'},
    {'value': 4095, 'title': 'IT Support / Network Engineer'},
  ],
  "Finance, Business & Professional Services": [
    {'value': 4096, 'title': 'Banker'},
    {'value': 4097, 'title': 'Insurance Agent'},
    {'value': 4098, 'title': 'Loan Officer'},
    {'value': 4099, 'title': 'Stockbroker'},
    {'value': 4100, 'title': 'Financial Advisor'},
    {'value': 4101, 'title': 'Business Owner'},
    {'value': 4102, 'title': 'Entrepreneur'},
    {'value': 4103, 'title': 'Tax Consultant'},
    {'value': 4104, 'title': 'Accountant'},
    {'value': 4105, 'title': 'Auditor'},
    {'value': 4106, 'title': 'Microfinance Operator'},
  ],
  "Healthcare": [
    {'value': 1315, 'title': 'Medical Doctor'},
    {'value': 4107, 'title': 'Nurse'},
    {'value': 4108, 'title': 'Midwife'},
    {'value': 4109, 'title': 'Pharmacist'},
    {'value': 4110, 'title': 'Lab Technician'},
    {'value': 4111, 'title': 'Radiographer'},
    {'value': 4112, 'title': 'Physiotherapist'},
    {'value': 4113, 'title': 'Optometrist'},
    {'value': 4114, 'title': 'Dentist'},
    {'value': 4115, 'title': 'Traditional Healer / Herbal Practitioner'},
  ],
  "Hospitality & Tourism": [
    {'value': 4116, 'title': 'Hotel Staff'},
    {'value': 4117, 'title': 'Waiter / Waitress'},
    {'value': 4118, 'title': 'Chef / Cook'},
    {'value': 4119, 'title': 'Tour Guide'},
    {'value': 4120, 'title': 'Travel Agent'},
    {'value': 4121, 'title': 'Event Host / MC'},
    {'value': 4122, 'title': 'Bartender'},
    {'value': 4123, 'title': 'Housekeeper'},
  ],
  "Construction & Engineering": [
    {'value': 4124, 'title': 'Civil Engineer'},
    {'value': 4125, 'title': 'Site Supervisor'},
    {'value': 4126, 'title': 'Builder'},
    {'value': 4127, 'title': 'Quantity Surveyor'},
    {'value': 4128, 'title': 'Structural Engineer'},
    {'value': 4129, 'title': 'Construction Worker'},
    {'value': 4130, 'title': 'Equipment Operator'},
  ],
  "Transport & Logistics": [
    {'value': 4131, 'title': 'Truck Driver'},
    {'value': 4132, 'title': 'Taxi Driver'},
    {'value': 4133, 'title': 'Bus Driver'},
    {'value': 4134, 'title': 'Keke Rider'},
    {'value': 4135, 'title': 'Okada Rider'},
    {'value': 4136, 'title': 'Dispatch Rider'},
    {'value': 4137, 'title': 'Logistics Company Staff'},
    {'value': 4138, 'title': 'Shipping / Clearing Agent'},
  ],
  "Students & Others": [
    {'value': 4139, 'title': 'Student (Secondary / University / Polytechnic)'},
    {'value': 4140, 'title': 'Youth Corper (NYSC)'},
    {'value': 4141, 'title': 'Retired (Pensioner)'},
    {'value': 4142, 'title': 'Unemployed'},
    {'value': 4143, 'title': 'Housewife / Homemaker'},
    {'value': 4144, 'title': 'Clergy / Religious Leader'},
    {'value': 4145, 'title': 'Other (Please Specify)'},
  ],
};
List<Map<String, dynamic>> NIBSS_BANKS = const [
  {"id": 1, "bankCode": "033", "bankName": "UBA Plc", "nipcode": "000004"},
  {"id": 2, "bankCode": "050", "bankName": "EcoBank Plc", "nipcode": "000010"},
  {"id": 3, "bankCode": "035", "bankName": "Wema Bank", "nipcode": "000017"},
  {"id": 4, "bankCode": "221", "bankName": "Stanbic IBTC", "nipcode": "000012"},
  {
    "id": 5,
    "bankCode": "063",
    "bankName": "Access Bank Plc (Diamond)",
    "nipcode": "000005",
  },
  {
    "id": 6,
    "bankCode": "044",
    "bankName": "ACCESS BANK PLC",
    "nipcode": "000014",
  },
  {
    "id": 7,
    "bankCode": "014",
    "bankName": "MAINSTREET BANK PLC",
    "nipcode": "999014",
  },
  {
    "id": 8,
    "bankCode": "082",
    "bankName": "KEYSTONE BANK PLC",
    "nipcode": "000002",
  },
  {
    "id": 9,
    "bankCode": "070",
    "bankName": "FIDELITY BANK PLC",
    "nipcode": "000007",
  },
  {
    "id": 10,
    "bankCode": "011",
    "bankName": "FIRST BANK OF NIGERIA PLC",
    "nipcode": "000016",
  },
  {
    "id": 11,
    "bankCode": "214",
    "bankName": "FIRST CITY MONUMENT BANK PLC",
    "nipcode": "000003",
  },
  {
    "id": 12,
    "bankCode": "058",
    "bankName": "GUARANTY TRUST BANK PLC",
    "nipcode": "000013",
  },
  {"id": 13, "bankCode": "023", "bankName": "CITI BANK", "nipcode": "000009"},
  {
    "id": 14,
    "bankCode": "076",
    "bankName": "POLARIS BANK LIMITED",
    "nipcode": "000008",
  },
  {
    "id": 15,
    "bankCode": "084",
    "bankName": "ENTERPRISE BANK PLC",
    "nipcode": "000019",
  },
  {
    "id": 16,
    "bankCode": "068",
    "bankName": "STANDARD CHARTERED BANK PLC",
    "nipcode": "000021",
  },
  {
    "id": 17,
    "bankCode": "232",
    "bankName": "STERLING BANK PLC",
    "nipcode": "000001",
  },
  {
    "id": 18,
    "bankCode": "032",
    "bankName": "UNION BANK OF NIGERIA PLC",
    "nipcode": "000018",
  },
  {
    "id": 19,
    "bankCode": "215",
    "bankName": "UNITY BANK PLC",
    "nipcode": "000011",
  },
  {
    "id": 20,
    "bankCode": "057",
    "bankName": "ZENITH INTERNATIONAL BANK PLC",
    "nipcode": "000015",
  },
  {
    "id": 21,
    "bankCode": "030",
    "bankName": "HERITAGE BANK",
    "nipcode": "000020",
  },
  {"id": 22, "bankCode": "301", "bankName": "JAIIZ Bank", "nipcode": "000006"},
  {"id": 23, "bankCode": "039", "bankName": "NIBSS Bank", "nipcode": "999998"},
  {
    "id": 24,
    "bankCode": "040",
    "bankName": "Unknown Bank",
    "nipcode": "150000",
  },
  {
    "id": 25,
    "bankCode": "056",
    "bankName": "Oceanic Bank",
    "nipcode": "120000",
  },
  {
    "id": 26,
    "bankCode": "069",
    "bankName": "Intercontinental Bank",
    "nipcode": "130000",
  },
  {"id": 27, "bankCode": "085", "bankName": "FIN Bank", "nipcode": "140000"},
  {
    "id": 28,
    "bankCode": "100",
    "bankName": "SUNTRUST BANK",
    "nipcode": "000022",
  },
  {
    "id": 29,
    "bankCode": "101",
    "bankName": "Providus Bank",
    "nipcode": "000023",
  },
  {
    "id": 30,
    "bankCode": "559",
    "bankName": "Coronation Merchant Bank",
    "nipcode": "060001",
  },
  {
    "id": 31,
    "bankCode": "560",
    "bankName": "FBN Merchant Bank",
    "nipcode": "060002",
  },
  {
    "id": 32,
    "bankCode": "561",
    "bankName": "Nova Merchant Bank",
    "nipcode": "060003",
  },
  {
    "id": 33,
    "bankCode": "102",
    "bankName": "TITAN TRUST BANK",
    "nipcode": "000025",
  },
  {
    "id": 34,
    "bankCode": "103",
    "bankName": "Globus Bank Ltd",
    "nipcode": "000027",
  },
  {
    "id": 35,
    "bankCode": "501",
    "bankName": "FSDH MERCHANT BANK",
    "nipcode": "400001",
  },
  {
    "id": 36,
    "bankCode": "502",
    "bankName": "Rand Merchant Bank",
    "nipcode": "000024",
  },
  {"id": 37, "bankCode": "302", "bankName": "TAJBank Ltd", "nipcode": "000026"},
  {
    "id": 38,
    "bankCode": "105",
    "bankName": "PremiumTrust Bank Limited",
    "nipcode": "000031",
  },
  {
    "id": 39,
    "bankCode": "802",
    "bankName": "9 PAYMENT SERVICES BANK LTD",
    "nipcode": "120001",
  },
  {
    "id": 40,
    "bankCode": "104",
    "bankName": "PARALLEX BANK",
    "nipcode": "000030",
  },
  {"id": 41, "bankCode": "449", "bankName": "SHONGOM MFB", "nipcode": "090558"},
  {
    "id": 42,
    "bankCode": "998",
    "bankName": "ROCKSHIELD MFB",
    "nipcode": "090547",
  },
  {
    "id": 43,
    "bankCode": "473",
    "bankName": "SNOW MICROFINANCE BANK",
    "nipcode": "090573",
  },
  {
    "id": 44,
    "bankCode": "401",
    "bankName": "Aso Savings and Loans Plc",
    "nipcode": "090001",
  },
  {
    "id": 45,
    "bankCode": "562",
    "bankName": "Greenwich Merchant Bank Limited",
    "nipcode": "060004",
  },
  {
    "id": 46,
    "bankCode": "760",
    "bankName": "NEPTUNE MICROFINANCE BANK",
    "nipcode": "090329",
  },
  {
    "id": 47,
    "bankCode": "107",
    "bankName": "OPTIMUS BANK LIMITED",
    "nipcode": "000036",
  },
  {
    "id": 48,
    "bankCode": "116",
    "bankName": "The Alternative Bank Limited",
    "nipcode": "000037",
  },
  {"id": 49, "bankCode": "303", "bankName": "LOTUS Bank", "nipcode": "000029"},
  {
    "id": 50,
    "bankCode": "106",
    "bankName": "SIGNATURE BANK LIMITED",
    "nipcode": "000034",
  },
  {
    "id": 51,
    "bankCode": "718",
    "bankName": "PALMPAY LIMITED",
    "nipcode": "100033",
  },
  {
    "id": 52,
    "bankCode": "672",
    "bankName": "Kuda Microfinance Bank",
    "nipcode": "090267",
  },
  {"id": 53, "bankCode": "305", "bankName": "OPAY", "nipcode": "100004"},
  {
    "id": 54,
    "bankCode": "469",
    "bankName": "Rubies MFB Ltd",
    "nipcode": "090175",
  },
];

enum SEGMENTS {
  electronics('Electronics'),
  fashion('Fashion'),
  childrenAndMaternity('Children & Maternity'),
  digitalServices('Digital Services'),
  cosmeticsAndBodyCare('Cosmetics and Body Care'),
  foodAndBeverage('Food and Beverage'),
  furnitureAndDecoration('Furniture and Decoration'),
  healthAndWellness('Health and Wellness'),
  householdItems('Household Items'),
  media('Media'),
  petCare('Pet Care'),
  officeEquipment('Office Equipment'),
  sportsAndFitness('Sports and Fitness'),
  others('Others');

  final String value;

  const SEGMENTS(this.value);
}

final List<String> segmentValues =
    SEGMENTS.values.map((segment) => segment.value).toList();

final List<Map<String, String>> segmentDropdownItems = segmentValues
    .map((segment) => {'value': segment, 'label': segment})
    .toList();