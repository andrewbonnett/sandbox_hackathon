import 'CompanyProfile.dart';

class CompanyData {
  List<CompanyProfile> getCompanyData() {
    return companyProfiles;
  }

  List<CompanyProfile> companyProfiles = <CompanyProfile>[
    CompanyProfile(
      'images/facebook.png',
      'Facebook',
      24,
    ),
    CompanyProfile(
      'images/nike.png',
      'Nike',
      18,
    ),
    CompanyProfile(
      'images/nintendo.png',
      'Nintendo',
      6,
    )
  ];
}
