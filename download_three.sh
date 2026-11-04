#!/bin/sh
# يحمّل Three.js r128 داخل المشروع ليعمل التطبيق بدون إنترنت
curl -fL -o app/src/main/assets/three.min.js \
  https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js
test -s app/src/main/assets/three.min.js && echo "تم التحميل"
