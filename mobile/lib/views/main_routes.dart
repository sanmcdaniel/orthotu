import 'package:flutter/material.dart';
import 'package:superapp_c4c/views/enhances/base_route_builder.dart';
import 'package:superapp_c4c/views/enhances/standart_route.dart';
import 'package:superapp_c4c/views/enhances/slide_up_route.dart';
import 'package:superapp_c4c/views/pages/cid_camera_page.dart';
import 'package:superapp_c4c/views/pages/guideline_page.dart';
import 'package:superapp_c4c/views/pages/ncb_consent_page.dart';
import 'package:superapp_c4c/views/pages/ndid_bank_selection_page.dart';
import 'package:superapp_c4c/views/pages/ndid_consent_page.dart';
import 'package:superapp_c4c/views/pages/personal_information_page.dart';
import 'package:superapp_c4c/views/pages/product_detail_good_grade_page.dart';
import 'package:superapp_c4c/views/pages/product_detail_page.dart';
import 'package:superapp_c4c/views/pages/product_sale_sheet_good_grade_page.dart';
import 'package:superapp_c4c/views/pages/rejected_page.dart';
import 'package:superapp_c4c/views/pages/select_vehicle_good_grade_page.dart';
import 'package:superapp_c4c/views/pages/upload_loan_document_page.dart';
import 'package:superapp_c4c/views/pages/vehicle_verification_page.dart';
import 'package:superapp_c4c/views/pages/empty_page.dart';
import 'package:superapp_c4c/views/pages/deal_detail_page.dart';
import 'package:superapp_c4c/views/pages/lead_form_page.dart';
import 'package:superapp_c4c/views/pages/loan_eligible_page.dart';
import 'package:superapp_c4c/views/pages/otp_page.dart';
import 'package:superapp_c4c/views/pages/product_highlight_guest_page.dart';
import 'package:superapp_c4c/views/pages/product_highlight_good_grade_page.dart';
import 'package:superapp_c4c/views/pages/product_highlight_page.dart';
import 'package:superapp_c4c/views/pages/select_product_page.dart';
import 'package:superapp_c4c/views/pages/select_user_type_page.dart';
import 'package:superapp_c4c/views/pages/select_vehicle_page.dart';
import 'package:superapp_c4c/views/pages/thank_you_good_grade_page.dart';
import 'package:superapp_c4c/views/pages/thank_you_page.dart';
import 'package:superapp_c4c/views/pages/user_information_page.dart';
import 'package:superapp_c4c/views/pages/waiting_page.dart';
import 'package:superapp_c4c/views/pages/ndid_pending_page.dart';

final RouteName mainInitialRoute = RouteName.waiting;

RouteFactory generateRouteDelegate() {
  return (RouteSettings settings) {
    BaseRouteBuilder routeBuilder = routeBuilders[settings.name];
    if (routeBuilder == null) return null;
    return routeBuilder.build(settings: settings);
  };
}

Map<String, BaseRouteBuilder> routeBuilders = {
  RouteName.waiting.name: StandardRouteBuilder(page: WaitingPage()),
  RouteName.emptyPage.name: StandardRouteBuilder(page: EmptyPage()),
  RouteName.productHighlightGuest.name: StandardRouteBuilder(page: ProductHighlightGuestPage()),
  RouteName.selectUserType.name: StandardRouteBuilder(page: SelectUserTypePage()),
  RouteName.productDetail.name: SlideUpRouteBuilder(page: ProductDetailPage()),
  RouteName.productDetailGoodGrade.name: SlideUpRouteBuilder(page: ProductDetailGoodGradePage()),
  RouteName.productHighlightNormalGrade.name: StandardRouteBuilder(page: ProductHighlightPage()),
  RouteName.productHighlightGoodGrade.name: StandardRouteBuilder(page: ProductHighlightGoodGradePage()),
  RouteName.selectVehicle.name: StandardRouteBuilder(page: SelectVehiclePage()),
  RouteName.loanEligible.name: StandardRouteBuilder(page: LoanEligiblePage()),
  RouteName.selectProduct.name: StandardRouteBuilder(page: SelectProductPage()),
  RouteName.userInformation.name: StandardRouteBuilder(page: UserInformationPage()),
  RouteName.vehicleVerification.name: StandardRouteBuilder(page: VehicleVerificationPage()),
  RouteName.thankYou.name: StandardRouteBuilder(page: ThankYouPage(), allowAndroidBackButton: false),
  RouteName.leadForm.name: StandardRouteBuilder(page: LeadFormPage()),
  RouteName.productSaleSheetGoodGrade.name: StandardRouteBuilder(page: ProductSaleSheetGoodGradePage()),
  RouteName.dealDetail.name: StandardRouteBuilder(page: DealDetailPage()),
  RouteName.thankYouGoodGrade.name: StandardRouteBuilder(page: ThankYouGoodGradePage(), allowAndroidBackButton: false),
  RouteName.otp.name: StandardRouteBuilder(page: OtpPage(), allowAndroidBackButton: false),
  RouteName.selectVehicleGoodGrade.name: StandardRouteBuilder(page: SelectVehicleGoodGradePage()),
  RouteName.rejectedPage.name: StandardRouteBuilder(page: RejectedPage()),
  RouteName.guidelinePage.name: StandardRouteBuilder(page: GuidelinePage()),
  RouteName.cidCameraPage.name: SlideUpRouteBuilder(page: CIDCameraPage(), allowAndroidBackButton: false),
  RouteName.ndidConsentPage.name: StandardRouteBuilder(page: NdidConsentPage(), allowAndroidBackButton: false),
  RouteName.uploadLoanDocumentPage.name: StandardRouteBuilder(page: UploadLoanDocumentPage()),
  RouteName.personalInformationPage.name: StandardRouteBuilder(page: PersonalInformationPage()),
  RouteName.ncbConsentPage.name: StandardRouteBuilder(page: NCBConsentPage()),
  RouteName.ndidBankSelectionPage.name: StandardRouteBuilder(page: NdidBankSelectionPage(), allowAndroidBackButton: false),
  RouteName.ndidPendingPage.name: StandardRouteBuilder(page: NdidPendingPage(), allowAndroidBackButton: false),
};

enum RouteName {
  waiting,
  selectUserType,
  productDetail,
  productDetailGoodGrade,
  productHighlightNormalGrade,
  productHighlightGuest,
  productHighlightGoodGrade,
  productSaleSheetGoodGrade,
  selectVehicle,
  loanEligible,
  selectProduct,
  userInformation,
  vehicleVerification,
  leadForm,
  thankYou,
  emptyPage,
  dealDetail,
  thankYouGoodGrade,
  otp,
  selectVehicleGoodGrade,
  rejectedPage,
  guidelinePage,
  cidCameraPage,
  ndidConsentPage,
  uploadLoanDocumentPage,
  personalInformationPage,
  ncbConsentPage,
  ndidBankSelectionPage,
  ndidPendingPage,
}

extension RouteNameExtensions on RouteName {
  String get name {
    switch (this) {
      case RouteName.waiting:
        return "waiting";
      case RouteName.emptyPage:
        return "empty type";
      case RouteName.selectUserType:
        return "verify user type";
      case RouteName.productDetail:
        return "product detail";
      case RouteName.productDetailGoodGrade:
        return "product detail good grade";
      case RouteName.productHighlightNormalGrade:
        return "product highlight normal grade";
      case RouteName.productHighlightGuest:
        return "guest product highlight";
      case RouteName.productHighlightGoodGrade:
        return "product highlight good grade";
      case RouteName.productSaleSheetGoodGrade:
        return "sale sheet good grade";
      case RouteName.selectVehicle:
        return "vehicle search";
      case RouteName.loanEligible:
        return "LTV";
      case RouteName.selectProduct:
        return "product comparison";
      case RouteName.userInformation:
        return "personal information";
      case RouteName.vehicleVerification:
        return "vehicle information";
      case RouteName.leadForm:
        return "summary";
      case RouteName.thankYou:
        return "thank you";
      case RouteName.dealDetail:
        return "deal detail";
      case RouteName.thankYouGoodGrade:
        return "thank you good grade";
      case RouteName.otp:
        return "otp";
      case RouteName.selectVehicleGoodGrade:
        return "loan journey vehicle selection";
      case RouteName.rejectedPage:
        return "rejected page";
      case RouteName.guidelinePage:
        return "guideline page";
      case RouteName.cidCameraPage:
        return "cid camera page";
      case RouteName.ndidConsentPage:
        return "ndid consent page";
      case RouteName.uploadLoanDocumentPage:
        return "upload loan document page";
      case RouteName.personalInformationPage:
        return "personal information page";
      case RouteName.ncbConsentPage:
        return "ncb consent page";
      case RouteName.ndidBankSelectionPage:
        return "Ndid bank selection";
      case RouteName.ndidPendingPage:
        return "ndid pending page";
    }
    return null;
  }
}
