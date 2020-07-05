package com.customlogo.lockscreen;

import android.content.*;
import android.net.*;
import android.widget.*;
import android.util.*;
import android.graphics.drawable.*;
import java.io.*;
import android.graphics.*;
import android.provider.*;

public class LogoLockScreen extends ImageView
{
    private static final String LOG_TAG = "By: Mr.Sluffy";
    private String ANIMATION_HIDE;
    private String CROP_KEY;
    private String URI_KEY;
    private ContentResolver mContentResolver;
    private Context mContext;
    private Drawable mDrawable;
    private Uri mImageUri;
    private Uri mOldUri;
    private ImageView$ScaleType mScaleType;
    private int mYColorLogo;
    private int mYLogoType;
    private String sfColor_Key;
    private String sfLogo_Type;
    
    public LogoLockScreen(final Context mContext, final AttributeSet set) {
        super(mContext, set);
        this. = "logo_image_uri";
        this.CROP_KEY = "logo_crop_type";
        this.ANIMATION_HIDE = "anim_visibility";
        this.sfColor_Key = "logo_Color";
        this.sfLogo_Type = "logo_type";
        this.mContext = mContext;
        this.mContentResolver = mContext.getContentResolver();
    }
    
    private Drawable getMyDrawable() {
        Object o = new ColorDrawable(0);
    Label_0342_Outer:
        while (true) {
        Label_0819_Outer:
            while (true) {
            Label_1296_Outer:
                while (true) {
                Label_0501_Outer:
                    while (true) {
                    Label_0395_Outer:
                        while (true) {
                        Label_0660_Outer:
                            while (true) {
                            Label_0766_Outer:
                                while (true) {
                                Label_0978_Outer:
                                    while (true) {
                                    Label_1031_Outer:
                                        while (true) {
                                        Label_0925_Outer:
                                            while (true) {
                                            Label_0289_Outer:
                                                while (true) {
                                                Label_1137_Outer:
                                                    while (true) {
                                                    Label_1243_Outer:
                                                        while (true) {
                                                        Label_1190_Outer:
                                                            while (true) {
                                                            Label_0713_Outer:
                                                                while (true) {
                                                                Label_0554_Outer:
                                                                    while (true) {
                                                                    Label_0872_Outer:
                                                                        while (true) {
                                                                        Label_0448_Outer:
                                                                            while (true) {
                                                                            Label_1084_Outer:
                                                                                while (true) {
                                                                                    while (true) {
                                                                                        switch (this.mYLogoType) {
                                                                                            case 0: {
                                                                                                o = new ColorDrawable(0);
                                                                                                break;
                                                                                            }
                                                                                            case 1: {
                                                                                                Log.d("By: MrSluffy", "getMyDrawable image is selected");
                                                                                                if (this.mImageUri != null && !this.mImageUri.equals((Object)this.mOldUri)) {
                                                                                                    break Label_0342_Outer;
                                                                                                }
                                                                                                break Label_0342_Outer;
                                                                                            }
                                                                                            case 2: {
                                                                                                Label_0236: {
                                                                                                    break Label_0236;
                                                                                                    BitmapDrawable bitmapDrawable = null;
                                                                                                    try {
                                                                                                        Log.d("By: Sluffy", "getMyDrawable getting image");
                                                                                                        final Bitmap decodeStream = BitmapFactory.decodeStream(this.mContentResolver.openInputStream(this.mImageUri));
                                                                                                        bitmapDrawable = new BitmapDrawable(this.mContext.getResources(), decodeStream);
                                                                                                        final LogoLockScreen LogoLockScreen = this;
                                                                                                        final BitmapDrawable bitmapDrawable2 = bitmapDrawable;
                                                                                                        LogoLockScreen.mDrawable = (Drawable)bitmapDrawable2;
                                                                                                        o = bitmapDrawable;
                                                                                                        break;
                                                                                                    }
                                                                                                    catch (FileNotFoundException ex) {}
                                                                                                    while (true) {
                                                                                                        try {
                                                                                                            final LogoLockScreen LogoLockScreen = this;
                                                                                                            final BitmapDrawable bitmapDrawable2 = bitmapDrawable;
                                                                                                            LogoLockScreen.mDrawable = (Drawable)bitmapDrawable2;
                                                                                                            o = bitmapDrawable;
                                                                                                            break;
                                                                                                            Log.d("By: MrSluffy", "getMyDrawable exception: file not found");
                                                                                                            final Bitmap decodeStream;
                                                                                                            ((Throwable)decodeStream).printStackTrace();
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_8", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_3", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_12", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_1", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_6", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_4", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_9", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_11", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_15", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mDrawable;
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_16", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_14", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_2", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_18", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                           o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_20", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_19", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_10", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_7", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_1", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_13", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_5", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                            o = this.mContext.getResources().getDrawable(this.mContext.getResources().getIdentifier("LockScreenLogo_17", "drawable", this.mContext.getPackageName()), this.mContext.getTheme());
                                                                                                            ((Drawable)o).setColorFilter(this.mYColorLogo, PorterDuff$Mode.MULTIPLY);
                                                                                                            break;
                                                                                                        }
                                                                                                        catch (FileNotFoundException decodeStream) {
                                                                                                            o = bitmapDrawable;
                                                                                                            continue Label_0342_Outer;
                                                                                                        }
                                                                                                        break;
                                                                                                    }
                                                                                                }
                                                                                                break;
                                                                                            }
                                                                                            case 3: {
                                                                                                continue Label_1137_Outer;
                                                                                            }
                                                                                            case 4: {
                                                                                                continue Label_0819_Outer;
                                                                                            }
                                                                                            case 5: {
                                                                                                continue Label_0660_Outer;
                                                                                            }
                                                                                            case 6: {
                                                                                                continue Label_1084_Outer;
                                                                                            }
                                                                                            case 7: {
                                                                                                continue Label_0395_Outer;
                                                                                            }
                                                                                            case 8: {
                                                                                                continue Label_0872_Outer;
                                                                                            }
                                                                                            case 9: {
                                                                                                continue Label_0342_Outer;
                                                                                            }
                                                                                            case 10: {
                                                                                                continue Label_0766_Outer;
                                                                                            }
                                                                                            case 11: {
                                                                                                continue Label_0554_Outer;
                                                                                            }
                                                                                            case 12: {
                                                                                                continue Label_0978_Outer;
                                                                                            }
                                                                                            case 13: {
                                                                                                continue Label_1296_Outer;
                                                                                            }
                                                                                            case 14: {
                                                                                                continue Label_0448_Outer;
                                                                                            }
                                                                                            case 15: {
                                                                                                continue Label_0289_Outer;
                                                                                            }
                                                                                            case 16: {
                                                                                                continue Label_1031_Outer;
                                                                                            }
                                                                                            case 17: {
                                                                                                continue Label_0925_Outer;
                                                                                            }
                                                                                            case 18: {
                                                                                                continue;
                                                                                            }
                                                                                            case 19: {
                                                                                                continue Label_1243_Outer;
                                                                                            }
                                                                                            case 20: {
                                                                                                continue Label_0713_Outer;
                                                                                            }
                                                                                            case 21: {
                                                                                                continue Label_1190_Outer;
                                                                                            }
                                                                                            case 22: {
                                                                                                continue Label_0501_Outer;
                                                                                            }
                                                                                        }
                                                                                        break;
                                                                                    }
                                                                                    break;
                                                                                }
                                                                                break;
                                                                            }
                                                                            break;
                                                                        }
                                                                        break;
                                                                    }
                                                                    break;
                                                                }
                                                                break;
                                                            }
                                                            break;
                                                        }
                                                        break;
                                                    }
                                                    break;
                                                }
                                                break;
                                            }
                                            break;
                                        }
                                        break;
                                    }
                                    break;
                                }
                                break;
                            }
                            break;
                        }
                        break;
                    }
                    break;
                }
                break;
            }
            break;
        }
        return (Drawable)o;
    }
    
    private ImageView$ScaleType getMyScaleType() {
        ImageView$ScaleType imageView$ScaleType = null;
        switch (Settings$System.getInt(this.mContentResolver, this.CROP_KEY, 0)) {
            default: {
                imageView$ScaleType = ImageView$ScaleType.CENTER_CROP;
                break;
            }
            case 0: {
                imageView$ScaleType = ImageView$ScaleType.CENTER_CROP;
                break;
            }
            case 1: {
                imageView$ScaleType = ImageView$ScaleType.CENTER_INSIDE;
                break;
            }
            case 2: {
                imageView$ScaleType = ImageView$ScaleType.FIT_XY;
                break;
            }
        }
        return imageView$ScaleType;
    }
    
    private void initValues() {
        this.mOldUri = this.mImageUri;
        final String string = Settings$System.getString(this.mContentResolver, this.);
        Uri parse;
        if (string != null && !string.equals("")) {
            parse = Uri.parse(string);
        }
        else {
            parse = null;
        }
        this.mImageUri = parse;
        this.mScaleType = this.getMyScaleType();
        this.mYLogoType = Settings$System.getInt(this.mContentResolver, this.sfLogo_Type, 0);
        this.mYColorLogo = Settings$System.getInt(this.mContentResolver, this.sfColor_Key, -1);
    }
    
    private void initView() {
        this.setImageDrawable(this.getMyDrawable());
        this.setScaleType(this.mScaleType);
    }
    
    public void onWindowFocusChanged(final boolean b) {
        super.onWindowFocusChanged(b);
        if (b && this.getVisibility() == 0) {
            this.initValues();
            this.initView();
        }
    }
}