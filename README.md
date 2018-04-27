# qrcode

This is a flutter project that allows a user to scan barcodes.

## Current State

Has a homepage which routes to two different pages. One has a button that demonstrates a simple api call, which calls to express and successfully returns. The other button goes and demonstrates a barcode scanner API I found.

## Further Work

- This would need to call a node backend to get the IoT database up and running. On the other hand, it allows us to be cross platform + DART IS <3. Just my opinion YMMV.
- We need to push the QRcode to a database and allow the user to modify the database schema we are going to store.
- Need to get geolocation and push with the QRcode - probably use this package https://pub.dartlang.org/packages/geolocation.
- This looks like refried dogshit. So we would need to make perty. I think it would be cool if we put a Brinks truck on the front page. Trucks are fun.

## Running
For the front end - Two options
- `chmod 777 run.sh && ./run.sh` - provided that you have XCode 9 this will pop the simulator and run the app - it does not allow for barcode scanning as the camera is not accessible from the iOs simulator, however this is useful for development.
- plug in your phone to your computer via usb or usb-c and `flutter run` provided you have installed flutter and configured to your device (see `flutter.io/docs`). Make sure to double click the icon for the app if it does not immediately pop.
For the back end - `cd backend && npm install && npm run`
