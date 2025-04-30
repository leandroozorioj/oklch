# Canary OKLCH

A Flutter package that provides a color library with support for converting OKLCH P3 color space to Flutter colors, plus a UI library similar to TailwindCSS and TailwindUI.

## Features

- Conversion between OKLCH color space and Flutter Color
- Complete color palette inspired by TailwindCSS
- Style system based on TailwindCSS
- Styled UI components like TailwindUI
- Complete theme for Flutter based on TailwindCSS

## Installation

Add `canary_oklch` to your `pubspec.yaml`:

```yaml
dependencies:
  canary_oklch: ^0.1.0
```

## Usage

### Import

```dart
import 'package:canary_oklch/canary_oklch.dart';
```

### OKLCH Colors

You can create OKLCH colors and convert them to Flutter:

```dart
// Create an OKLCH color
final oklchColor = OklchColor(0.7, 0.2, 240);

// Convert to Flutter Color
final flutterColor = oklchColor.toColor();

// Convert from Flutter Color to OKLCH
final backToOklch = OklchColor.fromColor(flutterColor);
```

### Color Palette

The package includes a complete color palette inspired by TailwindCSS:

```dart
// Access palette colors
final blueColor = OklchPalette.blue[500];
final redColor = OklchPalette.red[600];
```

### TailwindCSS Theme

Apply the TailwindCSS theme to your application:

```dart
MaterialApp(
  theme: TailwindTheme.lightTheme(),
  darkTheme: TailwindTheme.darkTheme(),
  themeMode: ThemeMode.system,
  // ...
)
```

### UI Components

#### Buttons

```dart
TwButton(
  label: 'Primary Button',
  onPressed: () {
    // Do something
  },
)

TwButton(
  label: 'With Icon',
  icon: Icons.check,
  variant: 'success',
  onPressed: () {},
)
```

Available variants: `primary`, `secondary`, `outline`, `ghost`, `danger`, `success`.

Available sizes: `xs`, `sm`, `md`, `lg`, `xl`.

#### Cards

```dart
TwCard(
  padding: '4',
  shadow: 'md',
  child: Column(
    children: [
      Text('Card Title'),
      Text('Card content here...'),
    ],
  ),
)
```

#### Badges

```dart
TwBadge(
  text: 'New',
  variant: 'green',
  rounded: true,
)
```

Available variants: `gray`, `red`, `yellow`, `green`, `blue`, `indigo`, `purple`, `pink`.

#### Input Fields

```dart
TwInput(
  label: 'Name',
  placeholder: 'Enter your name',
  helperText: 'This field is required',
  controller: _textController,
)

TwInput(
  label: 'Password',
  obscureText: true,
  suffixIcon: Icons.visibility,
  onSuffixIconTap: () {
    // Toggle password visibility
  },
)
```

### Style System

The package also provides a complete style system inspired by TailwindCSS:

```dart
// Access spacing values
final padding = TailwindStyles.spacing['4']; // 16.0

// Create text styles
final textStyle = TailwindStyles.getTextStyle(
  size: 'lg',
  weight: 'bold',
  color: OklchPalette.blue[600],
);

// Create box decorations
final boxDecoration = TailwindStyles.getBoxDecoration(
  backgroundColor: OklchPalette.gray[100],
  borderRadius: 'lg',
  shadow: 'md',
);
```

## Examples

See the examples folder for a complete demo application showing all components and features.

## Contributions

Contributions are welcome! Feel free to open issues or submit pull requests.

## License

This package is licensed under the MIT license.