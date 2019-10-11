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

If you want set text color globally, you can call setTextColor when route changes, like this:
```dart
void main() {
    runApp(App());
}

class StatusBarTextRouteObserver extends NavigatorObserver {
    Timer _timer;

    _setStatusBarTextColor() {
        _timer?.cancel();

        _timer = Timer(Duration(milliseconds: 200), () async {
        try {
            await FlutterStatusbarTextColor.setTextColor(
                FlutterStatusbarTextColor.dark);
        } catch (_) {
            print('set status bar text color failed');
        }
        });
    }

    @override
    void didPush(Route route, Route previousRoute) {
        super.didPush(route, previousRoute);
        _setStatusBarTextColor();
    }

    @override
    void didPop(Route route, Route previousRoute) {
        super.didPop(route, previousRoute);
        _setStatusBarTextColor();
    }
}

class App extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'demo',
            home: widget.isSplash ? SplashPage() : AppPage(0),
            navigatorObservers: [StatusBarTextRouteObserver()],
            ...
        );
    }
}
```