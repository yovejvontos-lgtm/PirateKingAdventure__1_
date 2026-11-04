# Pirate King Adventure — مشروع أندرويد (يعمل بدون إنترنت)

## سبب الخطأ `Expected to find project root in current working directory`
هذا خطأ Flutter ويعني أنك شغّلت الأمر في مجلد لا يحتوي `pubspec.yaml`
(غالباً المجلد الأب بعد فك الضغط). الحل: `cd` إلى المجلد الذي فيه `pubspec.yaml` ثم شغّل الأمر.
هذا المشروع **لا يستخدم Flutter**: هو مشروع أندرويد أصلي (WebView + Three.js)، فلا يحتاج pubspec أصلاً.

## طريقة الحصول على APK (بدون تثبيت أي شيء على جهازك)
1. أنشئ مستودعاً جديداً على GitHub وارفع **محتويات** هذا المجلد (يظهر build.gradle في الجذر).
2. افتح تبويب **Actions** ← **Build APK** ← **Run workflow**.
3. بعد دقائق حمّل `app-debug.apk` من Artifacts وثبّته على هاتفك (اسمح بالتثبيت من مصدر غير معروف).

## البناء على جهازك
```
sh download_three.sh      # مرة واحدة (يحتاج إنترنت)
gradle assembleDebug      # Gradle 8.5 و JDK 17 و Android SDK 34
```
الناتج: `app/build/outputs/apk/debug/app-debug.apk`

## ملاحظات
- التطبيق بلا إذن INTERNET، وكل الملفات (بما فيها Three.js) داخل الـ APK.
- الميزات كلها محفوظة: التحكم باللمس، القفز، الهجوم، شريطا الصحة، المهام، زورو والمهارة.
- لم يُبنَ هذا المشروع في بيئتي لعدم توفر أدوات أندرويد؛ أرسل سجل البناء إن ظهر خطأ.

## إصلاح فشل Get dependencies / GitHub Cache
هذا المشروع **ليس Flutter**؛ لا تُشغّل فيه `flutter pub get`. إن كان في المستودع workflow قديم
(من Klencod IDE) يثبّت Flutter أو يستخدم Cache، **احذفه** من `.github/workflows/` وأبقِ `build.yml` فقط.
