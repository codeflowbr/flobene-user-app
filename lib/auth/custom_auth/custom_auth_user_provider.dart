import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class PilaBeneficiosAuthUser {
  PilaBeneficiosAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<PilaBeneficiosAuthUser> pilaBeneficiosAuthUserSubject =
    BehaviorSubject.seeded(PilaBeneficiosAuthUser(loggedIn: false));
Stream<PilaBeneficiosAuthUser> pilaBeneficiosAuthUserStream() =>
    pilaBeneficiosAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
