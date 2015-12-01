# RNICloudUserToken
Get the unique iCloud token for a user

# Install
1. `npm install react-native-icloud-user-token --save`
2. Go to `node_modules` ➜ `react-native-icloud-user-token` and add `RNICloudUserToken.m` to yout project
3. Run your project (`Cmd+R`)


##Usage##
```
//Require the module
var ICloudUserToken = require('react-native-icloud-user-token');

ICloudUserToken.getToken(function (err, token) {
  console.log('Error:', err, '\niCloud Token:', token);
});
