import 'package:flutter/material.dart';
import 'package:toolbox/core/persistant_store.dart';

class SettingStore extends PersistentStore {
  StoreProperty<int> get primaryColor =>
      property('primaryColor', defaultValue: Colors.deepPurpleAccent.value);

  StoreProperty<int> get serverStatusUpdateInterval =>
      property('serverStatusUpdateInterval', defaultValue: 3);

  /// Lanch page idx
  StoreProperty<int> get launchPage => property('launchPage', defaultValue: 0);

  /// Version of store db
  StoreProperty<int> get storeVersion =>
      property('storeVersion', defaultValue: 0);

  /// Show logo on server detail page
  StoreProperty<bool> get showDistLogo =>
      property('showDistLogo', defaultValue: true);

  /// First time to use SSH term
  StoreProperty<bool> get firstTimeUseSshTerm =>
      property('firstTimeUseSshTerm', defaultValue: true);

  StoreProperty<int> get termColorIdx =>
      property('termColorIdx', defaultValue: 0);

  /// Max retry count when connect to server
  StoreProperty<int> get maxRetryCount =>
      property('maxRetryCount', defaultValue: 7);

  /// Night mode: 0 -> auto, 1 -> light, 2 -> dark
  StoreProperty<int> get themeMode => property('themeMode', defaultValue: 0);

  /// Font file path
  StoreProperty<String> get fontPath => property('fontPath');

  /// Backgroud running (Android)
  StoreProperty<bool> get bgRun => property('bgRun', defaultValue: true);
}
