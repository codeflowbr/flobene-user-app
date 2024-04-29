import 'dart:async';

import '/backend/schema/structs/index.dart';
import 'custom_auth_user_provider.dart';

export 'custom_auth_manager.dart';

class CustomAuthManager {
  // Auth session attributes
  String? authenticationToken;
  String? refreshToken;
  DateTime? tokenExpiration;
  // User attributes
  String? uid;
  UserStruct? userData;

  Future signOut() async {
    authenticationToken = null;
    refreshToken = null;
    tokenExpiration = null;
    uid = null;
    userData = null;
    // Update the current user.
    pilaBeneficiosAuthUserSubject.add(
      PilaBeneficiosAuthUser(loggedIn: false),
    );
  }

  Future<PilaBeneficiosAuthUser?> signIn({
    String? authenticationToken,
    String? refreshToken,
    DateTime? tokenExpiration,
    String? authUid,
    UserStruct? userData,
  }) async =>
      _updateCurrentUser(
        authenticationToken: authenticationToken,
        refreshToken: refreshToken,
        tokenExpiration: tokenExpiration,
        authUid: authUid,
        userData: userData,
      );

  void updateAuthUserData({
    String? authenticationToken,
    String? refreshToken,
    DateTime? tokenExpiration,
    String? authUid,
    UserStruct? userData,
  }) {
    assert(
      currentUser?.loggedIn ?? false,
      'User must be logged in to update auth user data.',
    );

    _updateCurrentUser(
      authenticationToken: authenticationToken,
      refreshToken: refreshToken,
      tokenExpiration: tokenExpiration,
      authUid: authUid,
      userData: userData,
    );
  }

  PilaBeneficiosAuthUser? _updateCurrentUser({
    String? authenticationToken,
    String? refreshToken,
    DateTime? tokenExpiration,
    String? authUid,
    UserStruct? userData,
  }) {
    this.authenticationToken = authenticationToken;
    this.refreshToken = refreshToken;
    this.tokenExpiration = tokenExpiration;
    uid = authUid;
    this.userData = userData;
    // Update the current user stream.
    final updatedUser = PilaBeneficiosAuthUser(
      loggedIn: true,
      uid: authUid,
      userData: userData,
    );
    pilaBeneficiosAuthUserSubject.add(updatedUser);

    return updatedUser;
  }
}

PilaBeneficiosAuthUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
