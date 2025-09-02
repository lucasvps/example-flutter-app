class AuthController {
  Future login({required String username, required password}) async {
    await Future.delayed(const Duration(seconds: 2));

    if(username == 'flutter' && password == 'dev'){
      return true;
    }

    throw Exception();
  }
}