import 'package:dio/dio.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';

class ApiService{

  SnackbarService snackbarService = locator<SnackbarService>();
  static BaseOptions options = BaseOptions(
    baseUrl: "http://api.duckduckgo.com/?q=simpsons+characters&format=json",
    connectTimeout: 30000,
    receiveTimeout: 10000,
  );

  Dio _dio = Dio(options);
  //-------------------------------------------------------
  // -------------- API GET --------------------------
  //-------------------------------------------------------



  Future get(url) async {
    var result;
    // if (showLoading) _utils.showLoadingDialog();
    // if (showLoading) Container();
    try {
      result = await _dio.get(
        url,
        // options: Options(headers: headers ?? {}),
      );
      //   if (showLoading) Center(child: CircularProgressIndicator(color: Colors.yellow,),);
      if (result.statusCode! >= 200 || result.statusCode! < 299) {

        print(result);
        return result;
      }
      snackbarService.showSnackbar(message: "Error message${result.data["message"].toString()}");
      return null;
    } catch (e, s) {
      print("Catch err -----> $e, $s");
      // if (showLoading) Center(child: CircularProgressIndicator(color: Colors.yellow,),);
      return null;
    }
  }
}