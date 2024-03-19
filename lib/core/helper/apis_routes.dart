class ApiRoutes {
  /// XD-URL
  // https://xd.adobe.com/view/b128a8b0-22b0-4b51-a057-b996208305b4-e47b/grid

  ///====ApiRoutes=====================
  static const baseUrl = 'https://api.refine-care.com/'; //baseURL-Live
  // static const baseUrl = 'https://dev.refine-care.com/'; //baseURL-Test

  static const cities = '${baseUrl}api/v1/cities'; //get
  static const areas= '${baseUrl}api/v1/areas'; //get
  static const homeSlider = '${baseUrl}api/v1/slider'; //get
  static const policy = '${baseUrl}api/v1/settings/page/'; //get
  static const social = '${baseUrl}api/v1/settings/social'; //get
  static const contacts = '${baseUrl}api/v1/settings/contact'; //get
  static const topLabs = '${baseUrl}api/v1/top_rated_labs'; //get
  static const homeServices = '${baseUrl}api/v1/services'; //get
  static const nearestLabs = '${baseUrl}api/v1/labs'; //get
  static const serviceItems = '${baseUrl}api/v1/lab_items'; //get
  static const labDetails = '${baseUrl}api/v1/lab/'; //get
  static const sendOtp = '${baseUrl}api/v1/auth/customer_phone?v2=1'; //post
  static const login = '${baseUrl}api/v1/auth/customer_login'; //post
  static const userUpdate = '${baseUrl}api/v1/auth/customer_update'; //put
  static const logout = '${baseUrl}api/v1/auth/customer_logout'; //get
  static const deleteAccount = '${baseUrl}api/v1/auth/customer_delete_account'; //get
  static const basket = '${baseUrl}api/v1/basket'; //get - post - delete
  static const basketLabs = '${baseUrl}api/v1/basket_labs'; //get
  static const labBranches = '${baseUrl}api/v1/basket_labs/:labId/branches'; //get
  static const createOrder = '${baseUrl}api/v1/order'; //post
  static const checkout = '${baseUrl}api/v1/checkout'; //post
  static const ordersList = '${baseUrl}api/v1/orders'; //get
  static const orderDetails = '${baseUrl}api/v1/order/'; //get
  static const walletData = '${baseUrl}api/v1/wallet_details'; //get
  static const questions = '${baseUrl}api/v1/fqs'; //get
  static const notification = '${baseUrl}api/v1/notifications'; //get
  static const notificationSeen = '${baseUrl}api/v1/notification/seen/'; //get
  static const rateOrder = '${baseUrl}api/v2/order_rate'; //post
  static const paymentMethods = '${baseUrl}api/v1/gateways-methods'; //get
  static const summary = '${baseUrl}api/v1/order-summary'; //get
  static const changeLang = '${baseUrl}api/v1/change_language'; //post
  static const myProfile = '${baseUrl}api/v1/me'; //post

  static const otpType = '${baseUrl}api/v1/sms_provider'; //get

}
