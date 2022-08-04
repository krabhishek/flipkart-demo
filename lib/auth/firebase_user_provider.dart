import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FlipkartDemoFirebaseUser {
  FlipkartDemoFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FlipkartDemoFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FlipkartDemoFirebaseUser> flipkartDemoFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FlipkartDemoFirebaseUser>(
            (user) => currentUser = FlipkartDemoFirebaseUser(user));
