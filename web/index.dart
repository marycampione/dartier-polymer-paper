import 'dart:html';
import 'package:polymer/polymer.dart';

main() => initPolymer().run(() {
  Polymer.onReady.then((_) {
    var list = document.querySelector('post-list');
    var tabs = document.querySelector('paper-tabs');

    tabs.addEventListener('core-select', (e) {
      list.show = tabs.selected;
    });
  });
});
