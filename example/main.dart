/*
 * Copyright 2020 nghiatc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

///
/// @author nghiatc
/// @since Mar 16, 2020
///
/// @author alexandrim0@gmail.com
/// @since Aug 16, 2022
///

import '../lib/sss256.dart';

main() {
  const secret = 'Very secret "foo bar"';

  print('Secret before encoding: $secret');
  final shares = splitSecret(
    secret: secret,
    treshold: 3,
    shares: 6,
  );

  print('Secret splited shares:');
  print(shares);
  final restoredSecret = restoreSecret(shares: shares.sublist(0, 3));
  print('\nRestored secret: $restoredSecret');
}
