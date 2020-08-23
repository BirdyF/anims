# anims

A very small demo of interactive advertising

## Explanations

Based on 
- [Original furniture_app demo](https://github.com/abuanwar072/furniture_app_flutter)

## How to use
Click on the screen to see the button on the right

When you see the grey button 
Arrow down to show the list of products 

In the list of products
Type T to get detailes info on the first product
Type U to get detailes info on the second product
Arrow up to remove this list and show again the buy button

When you see only one product in the center
Arrow left to get back to button page
Arrow right to get back to the list of products 


## Support of enter key
When testing on Chrome MacOs I can see sometimes 
flutter : ---logicalKey <optimized out>#70077
But I can not catch enter key in the app
Probably coming from Flutter

## Useful commands
flutter build apk --target-platform android-arm --release
adb -s 127.0.0.1:5581 -d logcat
How to filter only flutter log?


ssh -N adb@n2i-server-1 -L5559:127.0.0.1:5559 -L5581:127.0.0.1:5581
adb connect 127.0.0.1:5581
adb -s 127.0.0.1:5581  install animv28.apk






