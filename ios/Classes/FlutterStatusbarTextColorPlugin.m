#import "FlutterStatusbarTextColorPlugin.h"

@implementation FlutterStatusbarTextColorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_statusbar_text_color"
            binaryMessenger:[registrar messenger]];
  FlutterStatusbarTextColorPlugin* instance = [[FlutterStatusbarTextColorPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"light" isEqualToString:call.method]) {
          [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
  } else if ([@"dark" isEqualToString:call.method]) {
      if (@available(iOS 13.0, *)) {
          [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDarkContent;
      } else {
          [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
      }
  } else if ([@"default" isEqualToString:call.method]) {
      [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
  } else {
      result(FlutterMethodNotImplemented);
  }
}

@end
