
# react-native-filestack

## Getting started

`$ npm install react-native-filestack --save`

### Mostly automatic installation

`$ react-native link react-native-filestack`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-filestack` and add `RNFilestack.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNFilestack.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.myagi.rnfilestack.RNFilestackPackage;` to the imports at the top of the file
  - Add `new RNFilestackPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-filestack'
  	project(':react-native-filestack').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-filestack/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-filestack')
  	```


## Usage
```javascript
import RNFilestack from 'react-native-filestack';

// TODO: What to do with the module?
RNFilestack;
```
  