import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class FlowbeneAuthUser {
  FlowbeneAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<FlowbeneAuthUser> flowbeneAuthUserSubject =
    BehaviorSubject.seeded(FlowbeneAuthUser(loggedIn: false));
Stream<FlowbeneAuthUser> flowbeneAuthUserStream() => flowbeneAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
