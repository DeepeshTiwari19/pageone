import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pageone/user_repository.dart';

class AuthController extends GetxController {
  final UserRepository _userRepository;
  Rx<User?> user = Rx<User?>(null);

  AuthController(this._userRepository);

  Future<void> signIn(String email, String password) async {
    try {
      final userCredential = await _userRepository.signIn(email, password);
      user.value = userCredential.user;
    } catch (e) {
      // Handle error
    }
  }
}