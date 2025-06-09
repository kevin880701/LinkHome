
class ApiEndPoint {
  // 開發環境
  static const String domain = serverUrl + apiEndpoint;

  // 正式環境
  static const String serverUrl = "https://cipw.cwoiot.com";
  // 開發環境
  // static const String serverUrl = "http://192.168.11.92:8180";
  static const String apiEndpoint = "/cipw/v1/";

  // User
  static const String user = "user";
  static const String userLogin = "user/login";
  static const String userLoginGoogle = "user/login/google";
  static const String userLoginApple = "user/login/apple";
  static const String userExist = "user/exist";
  static const String userForgetPassword = "user/forget/password";
  static const String userAdd = "user/add";
  static const String userLongtime = "user/token/longtime";
  static const String userUpd = "user/upd";
  static const String userUpdPassword = "user/upd/password";
  static const String userUpdHeadshot = "user/upd/headshot";
  static const String userResendActiveMail = "user/resendActiveMail";
  static const String userFirebase = "user/firebase";

  // place
  static const String place = "place";
  static const String placeDtls = "place/dtls";
  static const String placeAreas = "place/areas";
  static const String placeArea = "place/area";

  // device
  static const String device  = "device";
  static String deviceValueUrl(String deviceId) {
    return "device/$deviceId/value";
  }
  static String changeIceWaterTemperature
      (String deviceId) {
    return "device/$deviceId/value/changeIceWaterTemperature";
  }
  static String changeHotWaterTemperature
      (String deviceId) {
    return "device/$deviceId/value/changeHotWaterTemperature";
  }
  static String changeEco
      (String deviceId) {
    return "device/$deviceId/value/changeECO";
  }
  static String reheatSettings
      (String deviceId) {
    return "device/$deviceId/value/reheatSettings";
  }
  static const String deviceUserPlaceArea  = "device/user/place/area";
  static const String deviceName  = "device/name";
  static const String devicePlace  = "device/place";
  static const String deviceScan  = "device/scan";
  static const String deviceRegisterUser  = "device/register/user";
  static const String deviceShares  = "device/shares";
  static const String deviceShare  = "device/share";
  static const String devicePlaceUsers  = "device/place/users";
  static const String deviceSharePlace  = "device/share/place";
  static const String devicePlaceDevices  = "device/place/devices";
  static const String deviceUserPlace  = "device/user/place";
  static const String deviceFilter  = "device/filter";
  static const String deviceEngineer  = "device/engineer";
  static const String deviceDroplistIces  = "device/droplist/ices";
  static const String deviceDroplistHots  = "device/droplist/hots";
  static const String deviceWarranty  = "device/warranty";
  static const String deviceMacExist  = "device/mac/exist";

  // v (經銷商)
  static const String vendor  = "v";
  static const String vendorQuery  = "v/query";

  // m (保修)
  static const String maintenance  = "m";
  static const String maintenanceForm  = "m/form";
  static const String maintenanceEngineer  = "m/engineer";
  static const String maintenanceDone  = "m/done";
  static const String maintenanceEngineerPeriod  = "m/engineer/period";
  static const String maintenanceUserImage  = "m/user/image";
  static const String maintenanceEngineerImage  = "m/engineer/image";
  static const String maintenanceSignImage  = "m/sign/image";
  static const String maintenanceTypes  = "m/types";

  // zipCode (郵遞區號)
  static const String zipcodeCities  = "zipcode/cities";
  static const String zipcodeRegions  = "zipcode/regions";

  // msg (訊息中心)
  static const String msg  = "msg";
  static const String msgRead  = "msg/read";

  // dm (機型)
  static const String deviceModelQuery  = "dm/query";

}
