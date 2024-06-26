# Apple Pay button

Provides a button that is used either to trigger payments through Apple Pay or to prompt the user to set up a card.

`ApplePayButton` uses native API provided by Apple. Due to this fact, button meets User Interface guidelines required by Apple in review process. Make sure you consult [Human Interface Guidelines](https://developer.apple.com/ios/human-interface-guidelines/technologies/apple-pay/) prior to submitting app to App Store.

## Styling

### Button type

Type dictates button's call to action word and a message. Each option
includes the Apple Pay logo alone and the call to action word (based on button type) with
message along with the logo. The API will provide a localization of the action word with
message based on the user’s language settings. Do
not create your own localized payment button.

![Apple pay button - types](https://github.com/appfolio/react-native-payments/assets/37466295/f6c7b0a0-0b4b-43e0-9add-49c9bc5e4a24)


### Button style

In addition to button's type, you can set button's visual appearance. For iOS and web, button artwork is provided in black, white, and white with an outline rule.

![Apple pay button - styles](https://user-images.githubusercontent.com/829963/40891711-daca8ff8-678a-11e8-89f2-26a0c3dcf9ed.png)

## Props
| Prop Name    | Required | Type        | Default Value |
|--------------|----------|-------------|---------------|
| type         | yes      | ButtonType  |               |
| style        | yes      | ButtonStyle |               |
| onPress      | yes      | Function    |               |
| width        | no       | number      |               |
| height       | no       | number      |               |
| cornerRadius | no       | number      | 4             |
| minWidth     | no       | number      | 100           |
| minHeight    | no       | number      | 30            |
| maxWidth     | no       | number      |               |
| maxHeight    | no       | number      |               |

## Types
```javascript
type ButtonType =
  // A button with the Apple Pay logo only.
  | 'plain'
  // A button with the text “Buy with” and the Apple Pay logo.
  | 'buy'
  // A button with the text “Set up” and the Apple Pay logo.
  | 'setUp'
  // A button with the text “Pay with” and the Apple Pay logo.
  | 'inStore'
  // A button with the text "Donate with" and the Apple Pay logo.
  | 'donate'
  // A button with the text "Continue with" and the Apple Pay logo.
  | 'continue';

type ButtonStyle =
  //   A white button with black lettering (shown here against a gray background to ensure visibility).
  | 'white'
  //   A white button with black lettering and a black outline.
  | 'whiteOutline'
  //   A black button with white lettering.
  | 'black';
```