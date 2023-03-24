// Created by RitsukiShuto on 2023/03/24.
//
// このファイルは、チュートリアル画面を作成するためのファイルです。
//
import 'dart:convert';
import 'dart:io';

void main() {
  // 数列の長さを入力
  int? len = int.parse(stdin.readLineSync()!);

  // 配列を初期化
  var values = []..length = len;

  // 配列を埋めていく
  for (var i = 0; i < len; i++) {
    if (i < 2) {
      values[i] = 1;
    } else {
      values[i] = values[i - 1] + values[i - 2];
    }
  }

  print(values);
  print(values.length);
  print(len);
}
