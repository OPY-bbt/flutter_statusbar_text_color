# flutter_statusbar_text_color

If your App doesn't support Dark mode, the text in the status bar may not be visible when the user turns on Dark mode.
This plugin will help you to change status bar text color.

## Usage

`FlutterStatusbarTextColor.setTextColor(FlutterStatusbarTextColor.dark)`


## Styles

- light    (Light content, for use on dark backgrounds)
- dark     (Dark content, for use on light backgrounds, available in iOS 13)
- default  (Automatically chooses light or dark content based on the user interface style)


## Caution

- Dark style is available in iOS 13 or higher, if you use it in another version, it will become default.
