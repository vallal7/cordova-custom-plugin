This is an Hybrid app build in cordova (Phonegap). This will support various platforms like ios, android, windows...
We are going to add a custom plugin which will communicate with the native OS (iOS) and present a native screen and return back to the hybrid screen

1. Install node.js
2. Install cordova - npm install -g cordova
3. Create your app - $ cordova create MyApp
4. Navigate into your app and add any platform:
  cd MyApp
  cordova platform add ios
5. Build your app and run in simulator or device:
  $ cordova build ios
  $ cordova emulate ios
  
  $ cordova run ios
6. Add tag to your config.xml - <feature....>
7. Create your native classes which will communicate with the plugin
8. create a plugin folder which would have these native files and a plugin.xml file which would have the native files declared in it
9. Add the plugin
10. Trigger the plugin from your index.js
