class Strings {
  static const emailRegEx =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static const phoneRedEx = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  static const oneLowerCase = r'[a-z]';
  static const oneUppercase = r'[A-Z]';
  static const oneDigit = r'[0-9]';
  static const nonWordChar = r'[!@#$%^&*(),.?":{}|<>]';
  static const wrongEmailIdMessage = 'Enter a valid email address';
  static const someThingWrong = 'Something is wrong';
  static const logInSuccess = 'Login successfull';
  static const otpsent = 'OTP has been sent !!';
  static const otp = 'OTP';
  static const ok = 'OK';
  static const forgetpass = 'Forget password?';

  static const welcome = 'Welcome';
  static const access = 'Login to access your account';
  static const imagefile = 'assets/image/MainImage.png';
  static const enterpassword = 'Enter Password';
  static const forgot = 'Forgot ?';
  static const signin = 'Sign In';
  static const or = 'Or';
  static const withgoogle = 'Sign In with Google';
  static const account = 'Don\'t have an account?';
  static const signup1 = 'Sign Up';
  static const enterusername = 'Enter Username';
  static const register = 'Register';
  static const createnew = 'Create a new account!!';
  static const enterfull = 'Enter full name';
  static const enteremail = 'Enter email id';
  static const enterpass = 'Enter password';
  static const enterconfpass = 'Confirm password';
  static const already = 'Already have account?';

  static const passwordIsNotBig = 'Password is too short';
  static const passwordUpperCase = 'At least one UpperCase is required';
  static const passwordLowerCase = 'At least one Lowercase is required';
  static const passwordDigits = 'At least one digit is required';
  static const passwordSymbol = 'At least one symbol is required';

  static const wrongName = 'Enter a valid Name';
  static const passwordSameError = "Password not match";
  static const forgetbuttononpress = "OTP has been sent to your Email-id";
}
