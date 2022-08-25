class ApiRoutes {
  //base routes

  
  
  static const String base = 'https://test.igracademy.com';
  static const String apiRoute = '$base/api/accounts';
  static const String apiRouteRessourcess = '$base/api';

  ///Authentication
  static const String register = '$apiRoute/register';
  static const String login = '$apiRoute/login';

  // static const String logout = '$apiRoute/auth/logout';
  // static const String verifyOTP = '$apiRoute/auth/account/verify';

  //password reset
  static const String recoverPassword = '$apiRoute/recoverpassword';
  static const String resetPassword = '$apiRoute/forgotpassword';


  
  

 

}
