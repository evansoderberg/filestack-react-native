# filestack-react-native

## Getting started

`$ npm install filestack-react-native --save`

### Mostly automatic installation iOS

`$ react-native link filestack-react-native`

1. Add FilestackSDK and its dependencies (CryptoSwift & Almofire) frameworks to embedded binaries. They are located at node_modules/filestack-react-native/ios/Libraries/.

### iOS

`$ react-native link filestack-react-native`

1.

### Manual installation

#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `filestack-react-native` and add `RNFilestack.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNFilestack.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`

- Add `import com.evansoderberg.rnfilestack.RNFilestackPackage;` to the imports at the top of the file
- Add `new RNFilestackPackage()` to the list returned by the `getPackages()` method

2. Append the following lines to `android/settings.gradle`:
   ```
   include ':filestack-react-native'
   project(':filestack-react-native').projectDir = new File(rootProject.projectDir, 	'../node_modules/filestack-react-native/android')
   ```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:

   ```
     compile project(':filestack-react-native')
   ```

4. `android/app/src/main/java/com/yourapp/MainApplication.java`

   ```
      public class MainApplication extends Application implements ReactApplication {

      private static Context context;

      public static Context getAppContext() {
        return MainApplication.context;
      }

      @Override
      public void onCreate() {
        super.onCreate();
        MainApplication.context = getApplicationContext();
      }
    }
   ```

## Usage

```javascript
import RNFilestack from "filestack-react-native";

const FILE_STACK_KEY = "YOUR-FILESTACK-KEY";

class App extends React.Component {
  componentWillUnmount() {
    RNFileStack.emitter.removeAllListeners("onProgress");
    RNFileStack.emitter.removeAllListeners("onFinish");
  }

  componentDidMount() {
    RNFileStack.emitter.addListener("onProgress", progress => {
      this.onAttachmentUploadProgress(progress);
    });
    RNFileStack.emitter.addListener("onFinish", data => {
      this.onAttachmentUploadFinished(data);
    });
  }

  onAttachmentUploadProgress = data => {
    if (data.error) {
      this.setState({
        progress: null
      });
      console.warn(data.error);
    }
    this.setState({
      progress: data.progress
    });
  };

  onAttachmentUploadFinished = data => {
    this.setState({
      progress: null,
      attachments: [
        {
          fileName: data.fileName,
          fileRef: data.fileRef
        }
      ]
    });
  };

  uploadFile = () => {
    RNFileStack.upload(FILE_STACK_KEY, this.state.fileURI);
  };

  render() {
    return <Button onPress={this.uploadFile}>Upload</Button>;
  }
}

// TODO: What to do with the module?
RNFilestack;
```
