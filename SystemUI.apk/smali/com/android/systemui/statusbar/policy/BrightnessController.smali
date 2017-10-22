.class public Lcom/android/systemui/statusbar/policy/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;,
        Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;,
        Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;
    }
.end annotation


# static fields
.field private static final ACTION_POWER_SIOP_DISABLE:Ljava/lang/String; = "android.intent.action.POWER_SIOP_DISABLE"

.field private static final ACTION_POWER_SIOP_ENABLE:Ljava/lang/String; = "android.intent.action.POWER_SIOP_ENABLE"

.field private static final LIMITED_BACKLIGHT:I = 0x9d

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static MINIMUM_BACKLIGHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StatusBar.BrightnessController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-BrightnessController"


# instance fields
.field private allowSettingsChanges:Z

.field private mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

.field private mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

.field private mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCheckboxArea:Landroid/view/View;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mPower:Landroid/os/IPowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSeekBar:Landroid/view/View;

.field private mSlider:Landroid/widget/SeekBar;

.field private mToggle:Landroid/widget/CompoundButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x14

    sput v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "control"    # Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .prologue
    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 105
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 108
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->allowSettingsChanges:Z

    .line 335
    new-instance v13, Lcom/android/systemui/statusbar/policy/BrightnessController$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$4;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    new-instance v13, Lcom/android/systemui/statusbar/policy/BrightnessController$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$5;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    .line 115
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .line 117
    const/4 v4, 0x0

    .line 119
    .local v4, "automaticAvailable":Z
    const-string v13, "sensor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager;

    .line 120
    .local v9, "sensorMgr":Landroid/hardware/SensorManager;
    const/4 v13, -0x1

    invoke-virtual {v9, v13}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v8

    .line 121
    .local v8, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_1

    .line 122
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/Sensor;

    invoke-virtual {v13}, Landroid/hardware/Sensor;->getType()I

    move-result v10

    .line 124
    .local v10, "sensorType":I
    const/4 v13, 0x5

    if-ne v10, v13, :cond_0

    .line 125
    const/4 v4, 0x1

    .line 121
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 131
    .end local v10    # "sensorType":I
    :cond_1
    sget-boolean v13, Lcom/android/systemui/statusbar/BaseStatusBar;->alwaysShowMenuKey:Z

    if-eqz v13, :cond_2

    .line 132
    const/4 v4, 0x0

    .line 136
    :cond_2
    const-string v13, "power"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 138
    if-eqz v4, :cond_6

    .line 141
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "screen_brightness_mode"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 147
    .local v3, "automatic":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    if-eqz v3, :cond_5

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v14, v13}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    .line 155
    .end local v3    # "automatic":I
    :goto_3
    const-string v13, "ro.lcd_min_brightness"

    sget v14, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    sput v13, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    .line 159
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "screen_brightness"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    .line 166
    .local v12, "value":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    sget v14, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    rsub-int v14, v14, 0xff

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    sget v14, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int v14, v12, v14

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    .line 173
    new-instance v13, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    .line 174
    new-instance v13, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    .line 176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "screen_brightness"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "screen_brightness_mode"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    sget-boolean v13, Lcom/android/systemui/statusbar/BaseStatusBar;->useAutoBrightnessDetail:Z

    if-eqz v13, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "auto_brightness_detail"

    const/16 v15, 0x64

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 185
    .local v2, "autoValue":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/16 v14, 0xa

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setSplitMax(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    div-int/lit8 v14, v2, 0x14

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setSplitValue(I)V

    .line 188
    new-instance v13, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v14, "auto_brightness_detail"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 195
    .end local v2    # "autoValue":I
    :cond_3
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v13, "android.intent.action.POWER_SIOP_ENABLE"

    invoke-virtual {v6, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v13, "android.intent.action.POWER_SIOP_DISABLE"

    invoke-virtual {v6, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    const v13, 0x7f0d008a

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/SeekBar;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSeekBar:Landroid/view/View;

    .line 203
    const v13, 0x7f0d0088

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CompoundButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggle:Landroid/widget/CompoundButton;

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v13}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mCheckboxArea:Landroid/view/View;

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    const-string v14, "enterprise_policy"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v13, :cond_4

    .line 207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v13, :cond_4

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    new-instance v14, Lcom/android/systemui/statusbar/policy/BrightnessController$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$1;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    invoke-virtual {v13, v14}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightnessEnabledState()V

    .line 220
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v15, Landroid/content/IntentFilter;

    const-string v16, "edm.intent.action.allow.settings"

    invoke-direct/range {v15 .. v16}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    return-void

    .line 143
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "value":I
    :catch_0
    move-exception v11

    .line 144
    .local v11, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "automatic":I
    goto/16 :goto_1

    .line 147
    .end local v11    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 149
    .end local v3    # "automatic":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    .line 150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->hideToggle()V

    goto/16 :goto_3

    .line 161
    :catch_1
    move-exception v5

    .line 162
    .local v5, "ex":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v12, 0xff

    .restart local v12    # "value":I
    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BrightnessController;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->allowSettingsChanges:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BrightnessController;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Lcom/android/systemui/statusbar/policy/ToggleSlider;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BrightnessController;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BrightnessController;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BrightnessController;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/app/enterprise/RestrictionPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BrightnessController;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/BrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BrightnessController;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightnessEnabledState()V

    return-void
.end method

.method private setBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 277
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 278
    const-string v0, "StatusBar.BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBacklightBrightness() - brightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBrightnessEnabledState()V
    .locals 3

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    .line 391
    .local v0, "isAllowed":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 393
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 394
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSeekBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 395
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mSeekBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 396
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setEnabled(Z)V

    .line 397
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mCheckboxArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 398
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->allowSettingsChanges:Z

    .line 400
    .end local v0    # "isAllowed":Z
    :cond_0
    return-void
.end method

.method private setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/policy/ToggleSlider;
    .param p2, "tracking"    # Z
    .param p3, "automatic"    # Z
    .param p4, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v2, v1}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    if-eqz p3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setMode(I)V

    .line 233
    if-nez p3, :cond_3

    .line 235
    sget v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    add-int v0, p4, v1

    .line 237
    .local v0, "val":I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightness(I)V

    .line 239
    if-nez p2, :cond_0

    .line 240
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessController$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$2;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 251
    .end local v0    # "val":I
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->useAutoBrightnessDetail:Z

    if-eqz v1, :cond_0

    .line 252
    mul-int/lit8 v0, p4, 0x14

    .line 253
    .restart local v0    # "val":I
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessController$3;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$3;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setMaxBrightness(I)V
    .locals 3
    .param p1, "maxLevel"    # I

    .prologue
    .line 350
    sget v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    if-lt p1, v0, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    sget v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    .line 353
    const-string v0, "STATUSBAR-BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S.M.B.:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    return-void
.end method
