import { NativeModules, Platform } from 'react-native';

const LINKING_ERROR =
  `The package 'react-native-localized-timezone-name' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo managed workflow\n';

const LocalizedTimezoneName = NativeModules.LocalizedTimezoneName
  ? NativeModules.LocalizedTimezoneName
  : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

export function getLocalizedTimeZoneName(timeZone: string, locale: string): Promise<string> {
  return LocalizedTimezoneName.getLocalizedTimeZoneName(timeZone, locale)
}