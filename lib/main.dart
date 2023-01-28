import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopifood/application/home/home_cubit.dart';
import 'package:kopifood/firebase_options.dart';
import 'package:kopifood/injection.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // FirebaseFirestore.instance.useFirestoreEmulator('http://127.0.0.1', 8080);
  // await FirebaseAuth.instance.useAuthEmulator('http://127.0.0.1', 9099);

  configureDependencies();
  runApp(BlocProvider(
    create: (context) => getIt<HomeCubit>(),
    child: MyApp(),
  ));
}
