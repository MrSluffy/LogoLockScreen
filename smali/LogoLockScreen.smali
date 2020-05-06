.class public Lcom/customlogo/lockscreen/LogoLockScreen;
.super Landroid/widget/ImageView;
.source "LogoLockScreen.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "By: Mr.Sluffy"


# instance fields
.field private ANIMATION_HIDE:Ljava/lang/String;

.field private CROP_KEY:Ljava/lang/String;

.field private URI_KEY:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageUri:Landroid/net/Uri;

.field private mOldUri:Landroid/net/Uri;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mYColorLogo:I

.field private mYLogoType:I

.field private sfLogo_Type:Ljava/lang/String;

.field private rnLogo_Type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string v0, "logo_image_uri"

    iput-object v0, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->URI_KEY:Ljava/lang/String;

    .line 29
    const-string v0, "logo_crop_type"

    iput-object v0, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->CROP_KEY:Ljava/lang/String;

    .line 30
    const-string v0, "anim_visibility"

    iput-object v0, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->ANIMATION_HIDE:Ljava/lang/String;

    .line 31
    const-string v0, "logo_Color"

    iput-object v0, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->sfLogo_Type:Ljava/lang/String;

    .line 32
    const-string v0, "logo_type"

    iput-object v0, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->rnLogo_Type:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContentResolver:Landroid/content/ContentResolver;

    .line 46
    return-void
.end method

.method private getMyDrawable()Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 72
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 73
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYLogoType:I

    packed-switch v5, :pswitch_data_0

    .line 193
    :goto_0
    return-object v1

    .line 75
    :pswitch_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 76
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 78
    :pswitch_1
    const-string v5, "By: Mr.Sluffy"

    const-string v6, "getMyDrawable image is selected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mImageUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mImageUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mOldUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 81
    :try_start_0
    const-string v5, "By: Mr.Sluffy"

    const-string v6, "getMyDrawable getting image"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 83
    .local v4, "inputStream":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_1
    iput-object v2, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 89
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 86
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_1
    const-string v5, "By: Mr.Sluffy"

    const-string v6, "getMyDrawable exception: file not found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    iget-object v1, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_1"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 97
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 101
    :pswitch_3
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_2"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 102
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 106
    :pswitch_4
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_3"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 107
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 111
    :pswitch_5
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_4"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 112
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 116
    :pswitch_6
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_5"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 121
    :pswitch_7
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_6"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 122
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 126
    :pswitch_8
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_7"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 127
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 131
    :pswitch_9
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_8"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 132
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 136
    :pswitch_a
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_9"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 138
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 142
    :pswitch_b
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_10"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 144
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 148
    :pswitch_c
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_11"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 150
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 153
    :pswitch_d
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_12"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 155
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 159
    :pswitch_e
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_13"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 161
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 165
    :pswitch_f
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_14"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 166
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 170
    :pswitch_10
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_15"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 172
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 176
    :pswitch_11
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_16"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 178
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 182
    :pswitch_12
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_17"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 184
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 188
    :pswitch_13
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_18"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 86
    :pswitch_14
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_19"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 86
    :pswitch_15
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_20"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 86
    :pswitch_16
    iget-object v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "LockScreenLogo_1"

    const-string v8, "drawable"

    iget-object v9, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 97
    iget v5, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 101    
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16        
    .end packed-switch
.end method

.method private getMyScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->CROP_KEY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, "scaleType":I
    packed-switch v0, :pswitch_data_0

    .line 67
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_0
    return-object v1

    .line 61
    :pswitch_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 63
    :pswitch_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 65
    :pswitch_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initValues()V
    .locals 4

    .prologue
    .line 49
    iget-object v1, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mImageUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mOldUri:Landroid/net/Uri;

    .line 50
    iget-object v1, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->URI_KEY:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "uriString":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mImageUri:Landroid/net/Uri;

    .line 52
    invoke-direct {p0}, Lcom/customlogo/lockscreen/LogoLockScreen;->getMyScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iput-object v1, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 53
    iget-object v1, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->rnLogo_Type:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYLogoType:I

    .line 54
    iget-object v1, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->sfLogo_Type:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mYColorLogo:I

    .line 55
    return-void

    .line 51
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/customlogo/lockscreen/LogoLockScreen;->getMyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 207
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/customlogo/lockscreen/LogoLockScreen;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v1, p0, Lcom/customlogo/lockscreen/LogoLockScreen;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/customlogo/lockscreen/LogoLockScreen;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 209
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowFocusChanged(Z)V

    .line 199
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/customlogo/lockscreen/LogoLockScreen;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/customlogo/lockscreen/LogoLockScreen;->initValues()V

    .line 201
    invoke-direct {p0}, Lcom/customlogo/lockscreen/LogoLockScreen;->initView()V

    .line 203
    :cond_0
    return-void
.end method
