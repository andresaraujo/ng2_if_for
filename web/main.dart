// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';

// These imports will go away soon:
import 'package:angular2/src/reflection/reflection.dart' show reflector;
import 'package:angular2/src/reflection/reflection_capabilities.dart'
show ReflectionCapabilities;

void main() {
  // Temporarily needed.
  reflector.reflectionCapabilities = new ReflectionCapabilities();
  bootstrap(App);
}

@Component(selector: 'app')
@View(template: '<p *if="show">test</p>', directives: const [If])
class App {
  bool show = true;
}