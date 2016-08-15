// Copyright 2016 Google Inc. Use of this source code is governed by an
// MIT-style license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import '../../visitor/interface/selector.dart';
import '../selector.dart';

class ClassSelector extends SimpleSelector {
  final String name;

  ClassSelector(this.name);

  bool operator==(other) => other is ClassSelector && other.name == name;

  /*=T*/ accept/*<T>*/(SelectorVisitor/*<T>*/ visitor) =>
      visitor.visitClassSelector(this);

  int get hashCode => name.hashCode;
}
