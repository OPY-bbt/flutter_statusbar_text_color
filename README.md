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


## Tips

If you want set text color globally, you can call setTextColor every build in App class, like this:
```dart
void main() {
    runApp(App());
}

class App extends StatelessWidget {

    _setStatusBarTextColor() async {
        try {
            await FlutterStatusbarTextColor.setTextColor(FlutterStatusbarTextColor.dark);
        } catch (e) {
            print('set status bar text color failed');
        }
    }

    @override
    Widget build(BuildContext context) {
        _setStatusBarTextColor();

        return MaterialApp(
            title: 'demo',
            home: widget.isSplash ? SplashPage() : AppPage(0),
            ...
        );
    }
}
```