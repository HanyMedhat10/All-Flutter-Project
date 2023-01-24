import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  Future<void> LoginUser(
      {required String email, required String password}) async {
    emit(LoginLoading());
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      UserCredential user = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFailure(errMessage: 'user not found'));
      } else if (e.code == 'wrong-password') {
        emit(LoginFailure(errMessage: 'wrong passwoed'));
      }
    } catch (e) {
      emit(LoginFailure(errMessage: 'there was an error'));
    }
  }

  Future<void> registerUser({required email, required password}) async {
    emit(RegisterLoading());
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      UserCredential user = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      emit(RegisterSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(RegisterFailure(errMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterFailure(
            errMessage: 'The account already exists for that email.'));
      }
    } catch (e) {
      emit(RegisterFailure(errMessage: 'there was an error please try again'));
    }
  }

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
    print(change);
  }
}
