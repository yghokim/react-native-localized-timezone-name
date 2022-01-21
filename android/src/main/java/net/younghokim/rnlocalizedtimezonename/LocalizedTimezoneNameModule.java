package net.younghokim.rnlocalizedtimezonename;

import androidx.annotation.NonNull;

import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

@ReactModule(name = LocalizedTimezoneNameModule.NAME)
public class LocalizedTimezoneNameModule extends ReactContextBaseJavaModule {
    public static final String NAME = "LocalizedTimezoneName";

    private static Date _data = null;

    private static @NonNull Date getDate(){
      if(_data == null){
        _data = Calendar.getInstance().getTime();
      }
      return _data;
    }

    public LocalizedTimezoneNameModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    @NonNull
    public String getName() {
        return NAME;
    }

    @ReactMethod(isBlockingSynchronousMethod = true)
    public String getLocalizedTimeZoneName(@NonNull String timeZone, @NonNull String locale) {
      SimpleDateFormat format = new SimpleDateFormat("z", Locale.forLanguageTag(locale));

      return format.format(getDate());
    }
}
