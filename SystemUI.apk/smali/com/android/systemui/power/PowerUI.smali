.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# static fields
.field static final ABNORMAL_CHARGE_SHARED_PREFS:Ljava/lang/String; = "com.android.systemui.power_abnormal_charge"

.field static final ACTION_FAIL_TO_DETECT_FACE_BEFORE_DIM:Ljava/lang/String; = "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

.field static final ACTION_FTA_OFF:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_OFF"

.field static final ACTION_FTA_ON:Ljava/lang/String; = "com.sec.factory.app.factorytest.FTA_ON"

.field static final ACTION_LOW_BATTERY_WARNING:Ljava/lang/String; = "com.android.systemui.power.action.LOW_BATTERY_WARNING"

.field static final BATTERY_CHARGETYPE_SLOW:I = 0x2

.field static final BATTERY_ONLINE_INCOMPATIBLE_CHARGER:I = 0x0

.field static final BATTERY_ONLINE_NONE:I = 0x1

.field static final BATTERY_ONLINE_TA:I = 0x3

.field static final BATTERY_ONLINE_USB:I = 0x4

.field static final BATTERY_ONLINE_WIRELESS_CHARGER:I = 0xa

.field static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final DEBUG:Z = false

.field static final DEVICE_TYPE_PHONE:I = 0x1

.field static final DEVICE_TYPE_TABLET:I = 0x2

.field private static final EXTRA_CHARGE_TYPE:Ljava/lang/String; = "charge_type"

.field private static final EXTRA_CURRENT_AVG:Ljava/lang/String; = "current_avg"

.field private static final EXTRA_ONLINE:Ljava/lang/String; = "online"

.field static final FACE_DETECTION_FAILURE_DURATION:I = 0xbb8

.field static final FULLBATTERY_SCREEN_TIMEOUT:I = 0x4e20

.field static final INCOMPATIBLE_CHARGER_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowIncompatibleChargerWarning"

.field static final LOWBATTERY_SCREEN_TIMEOUT:I = 0x3a98

.field static final NOT_CHARGE_PERIOD:I = 0xea60

.field static final OVER_CURRENT_THRESHOLD:I = 0x0

.field static final SLOW_CHARGE_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowSlowChargeWarning"

.field static final SOUND_PATH_BATTERY_CAUTION:Ljava/lang/String; = "system/media/audio/ui/TW_Battery_caution.ogg"

.field static final SOUND_PATH_CHARGER_CONNECTION:Ljava/lang/String; = "system/media/audio/ui/Charger_Connection.ogg"

.field static final SOUND_TYPE_BATTERY_CAUTION:I = 0x3

.field static final SOUND_TYPE_CHARGER_CONNECTION:I = 0x1

.field static final SOUND_TYPE_LOW_BATTERY:I = 0x2

.field static final TAG:Ljava/lang/String; = "PowerUI"

.field static final WIRELESS_CHARGE_DURATION:I = 0xfa0


# instance fields
.field mAbnormalChargeDialog:Landroid/app/AlertDialog;

.field mAbnormalChargeNotification:Landroid/app/Notification;

.field mAbnormalChargeTextView:Landroid/widget/TextView;

.field mBatteryChargetype:I

.field mBatteryCurrentavg:I

.field mBatteryHealth:I

.field mBatteryLevel:I

.field mBatteryLevelTextView:Landroid/widget/TextView;

.field mBatteryOnline:I

.field mBatteryStatus:I

.field mBatteryTemperature:I

.field private mDeboundCount:I

.field mDeviceType:I

.field mFTAMode:Z

.field mFaceDetectionFailureNotification:Landroid/app/Notification;

.field mFaceDetectionFailureTask:Ljava/lang/Runnable;

.field mForceConsume:Z

.field mForceConsumeCurrnetLock:Landroid/os/PowerManager$WakeLock;

.field mForceConsumeStartDialog:Landroid/app/AlertDialog;

.field mFullBatteryNotification:Landroid/app/Notification;

.field mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mInvalidCharger:I

.field mInvalidChargerDialog:Landroid/app/AlertDialog;

.field mLowBatteryAlertCloseLevel:I

.field mLowBatteryDialog:Landroid/app/AlertDialog;

.field mLowBatteryReminderLevels:[I

.field mNotChargeDialog:Landroid/app/AlertDialog;

.field mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

.field mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

.field mNotChargeTask:Ljava/lang/Runnable;

.field mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field mPlugType:I

.field mVZW:Z

.field mWirelessChargeDialog:Landroid/app/AlertDialog;

.field mWirelessChargeTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 119
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 120
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 121
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 122
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 123
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 124
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 125
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 126
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    .line 127
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryTemperature:I

    .line 128
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 130
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mForceConsume:Z

    .line 131
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mDeboundCount:I

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 160
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 161
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    .line 235
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 802
    new-instance v0, Lcom/android/systemui/power/PowerUI$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeTask:Ljava/lang/Runnable;

    .line 857
    new-instance v0, Lcom/android/systemui/power/PowerUI$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$9;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeTask:Ljava/lang/Runnable;

    .line 1062
    new-instance v0, Lcom/android/systemui/power/PowerUI$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$12;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mDeboundCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mDeboundCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/systemui/power/PowerUI;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mDeboundCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mDeboundCount:I

    return v0
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 220
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v3, :cond_1

    .line 221
    const/4 v2, 0x1

    .line 229
    :cond_0
    :goto_0
    return v2

    .line 223
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v2

    if-gt p1, v3, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 227
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 228
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 229
    rsub-int/lit8 v2, v1, -0x1

    goto :goto_0

    .line 227
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 232
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method cancelAbnormalChargeNotification()V
    .locals 3

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1118
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1121
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    .line 1125
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method cancelFaceDetectionFailureNotification()V
    .locals 3

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1056
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0x7f0a012a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1058
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 1060
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method cancelFullBatteryNotification()V
    .locals 3

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1012
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1014
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 1016
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method dismissAbnormalChargeWarning()V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 867
    :cond_0
    return-void
.end method

.method dismissForceConsumeStartDialog()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mForceConsumeStartDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mForceConsumeStartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 652
    const-string v0, "PowerUI"

    const-string v1, "dismissForceConsumeStartDialog : dismiss now"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    return-void
.end method

.method dismissInvalidChargerDialog()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 711
    :cond_0
    return-void
.end method

.method dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 479
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 482
    :cond_0
    return-void
.end method

.method dismissNotChargeDialog()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 743
    :cond_0
    return-void
.end method

.method dismissWirelessChargeDialog()V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 812
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1235
    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1236
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1237
    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    const-string v0, "mInvalidChargerDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1241
    const-string v0, "mLowBatteryDialog="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1243
    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1244
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1245
    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1246
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1248
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1249
    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1250
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1252
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    return-void

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1242
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method isOverCurrent()Z
    .locals 2

    .prologue
    .line 1225
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    if-ltz v0, :cond_0

    .line 1226
    const-string v0, "PowerUI"

    const-string v1, "isOverCurrent : not overcurrent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const/4 v0, 0x0

    .line 1230
    :goto_0
    return v0

    .line 1229
    :cond_0
    const-string v0, "PowerUI"

    const-string v1, "isOverCurrent : overcurrent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const/4 v0, 0x1

    goto :goto_0
.end method

.method notifyAbnormalChargeNotification(I)V
    .locals 10
    .param p1, "messageId"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const v7, 0x7f0a0131

    .line 1072
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1074
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-nez v1, :cond_0

    .line 1075
    const-string v5, "PowerUI"

    const-string v6, "notifyAbnormalChargeNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :goto_0
    return-void

    .line 1081
    :cond_0
    if-ne v7, p1, :cond_2

    .line 1082
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a012e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1083
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1089
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    if-nez v5, :cond_1

    .line 1090
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    .line 1091
    if-ne v7, p1, :cond_4

    .line 1092
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v9, v5, :cond_3

    .line 1093
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    const v6, 0x7f020292

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 1094
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iput v6, v5, Landroid/app/Notification;->iconLevel:I

    .line 1102
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    const/4 v6, -0x2

    iput v6, v5, Landroid/app/Notification;->priority:I

    .line 1103
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 1104
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iput v9, v5, Landroid/app/Notification;->flags:I

    .line 1105
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1108
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1109
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1111
    .local v2, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1113
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    invoke-virtual {v1, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1085
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a012b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1086
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a012d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1096
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    const v6, 0x7f0200bf

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 1097
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iput v6, v5, Landroid/app/Notification;->iconLevel:I

    goto :goto_2

    .line 1100
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeNotification:Landroid/app/Notification;

    const v6, 0x7f0200c9

    iput v6, v5, Landroid/app/Notification;->icon:I

    goto :goto_2
.end method

.method notifyFaceDetectionFailureNotification()V
    .locals 10

    .prologue
    const v9, 0x7f0a012a

    const/4 v8, 0x0

    .line 1019
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-eqz v5, :cond_0

    .line 1020
    const-string v5, "PowerUI"

    const-string v6, "Face detection is already failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :goto_0
    return-void

    .line 1024
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1026
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-nez v1, :cond_1

    .line 1027
    const-string v5, "PowerUI"

    const-string v6, "notifyFaceDetectionFailureNotification : fail to get NotificationManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1031
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0118

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1032
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1034
    .local v3, "text":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    if-nez v5, :cond_2

    .line 1035
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    .line 1036
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const v6, 0x7f0201e2

    iput v6, v5, Landroid/app/Notification;->icon:I

    .line 1037
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 1038
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iput-object v3, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1041
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1042
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1044
    .local v2, "pi":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v4, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1046
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureNotification:Landroid/app/Notification;

    invoke-virtual {v1, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1048
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mFaceDetectionFailureTask:Ljava/lang/Runnable;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method notifyFullBatteryNotification()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 972
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 974
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-nez v2, :cond_0

    .line 975
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get NotificationManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :goto_0
    return-void

    .line 979
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0118

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 980
    .local v6, "title":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0119

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 982
    .local v5, "text":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    if-nez v7, :cond_1

    .line 983
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    .line 984
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const v8, 0x7f0200c8

    iput v8, v7, Landroid/app/Notification;->icon:I

    .line 985
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 986
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 987
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 990
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 991
    .local v1, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 993
    .local v3, "pi":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 995
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mFullBatteryNotification:Landroid/app/Notification;

    invoke-virtual {v2, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 997
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 998
    .local v4, "powerManager":Landroid/os/PowerManager;
    if-nez v4, :cond_2

    .line 999
    const-string v7, "PowerUI"

    const-string v8, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1002
    :cond_2
    const v7, 0x10000006

    const-string v8, "PowerUI"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 1004
    .local v0, "fullBatteryScreenDimLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v7, 0x4e20

    invoke-virtual {v0, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0
.end method

.method playSound(I)V
    .locals 11
    .param p1, "soundType"    # I

    .prologue
    .line 1128
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1131
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 1133
    .local v1, "audioMode":I
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    if-eq v7, v1, :cond_0

    .line 1134
    const-string v7, "PowerUI"

    const-string v8, "recording so doesn\'t play sound"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    .end local v1    # "audioMode":I
    :goto_0
    return-void

    .line 1139
    :cond_0
    const-string v7, "PowerUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playSound : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v7, :cond_1

    .line 1142
    const-string v7, "PowerUI"

    const-string v8, "playSound : NotificationPlayer is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    new-instance v7, Lcom/android/systemui/media/NotificationPlayer;

    const-string v8, "PowerUI"

    invoke-direct {v7, v8}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 1145
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v7, :cond_1

    .line 1146
    const-string v7, "PowerUI"

    const-string v8, "playSound : fail to new NotificationPlayer"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1152
    :cond_1
    if-eqz v0, :cond_2

    .line 1153
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 1159
    .local v4, "ringerMode":I
    :goto_1
    const/4 v7, 0x2

    if-ne v7, v4, :cond_3

    .line 1161
    packed-switch p1, :pswitch_data_0

    .line 1172
    :try_start_0
    const-string v7, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1176
    .local v5, "soundUri":Landroid/net/Uri;
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v7, v8, v5, v9, v10}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 1177
    const-string v7, "PowerUI"

    const-string v8, "RINGER_MODE_NORMAL"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1205
    .end local v5    # "soundUri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1206
    .local v2, "exception":Ljava/lang/Exception;
    const-string v7, "PowerUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "playSound : Exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1155
    .end local v2    # "exception":Ljava/lang/Exception;
    .end local v4    # "ringerMode":I
    :cond_2
    const/4 v4, 0x2

    .restart local v4    # "ringerMode":I
    goto :goto_1

    .line 1163
    :pswitch_0
    :try_start_1
    const-string v7, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1164
    .restart local v5    # "soundUri":Landroid/net/Uri;
    goto :goto_2

    .line 1166
    .end local v5    # "soundUri":Landroid/net/Uri;
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "low_battery_sound"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1167
    .restart local v5    # "soundUri":Landroid/net/Uri;
    goto :goto_2

    .line 1169
    .end local v5    # "soundUri":Landroid/net/Uri;
    :pswitch_2
    const-string v7, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1170
    .restart local v5    # "soundUri":Landroid/net/Uri;
    goto :goto_2

    .line 1178
    .end local v5    # "soundUri":Landroid/net/Uri;
    :cond_3
    const/4 v7, 0x1

    if-ne v7, v4, :cond_5

    .line 1180
    packed-switch p1, :pswitch_data_1

    .line 1189
    const/16 v3, 0xb

    .line 1193
    .local v3, "hapticFeedback":I
    :goto_3
    new-instance v6, Landroid/os/SystemVibrator;

    invoke-direct {v6}, Landroid/os/SystemVibrator;-><init>()V

    .line 1194
    .local v6, "systemVibrator":Landroid/os/SystemVibrator;
    if-eqz v6, :cond_4

    .line 1195
    invoke-virtual {v6, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe(I)V

    .line 1199
    :goto_4
    const-string v7, "PowerUI"

    const-string v8, "RINGER_MODE_VIBRATE"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1182
    .end local v3    # "hapticFeedback":I
    .end local v6    # "systemVibrator":Landroid/os/SystemVibrator;
    :pswitch_3
    const/16 v3, 0xa

    .line 1183
    .restart local v3    # "hapticFeedback":I
    goto :goto_3

    .line 1186
    .end local v3    # "hapticFeedback":I
    :pswitch_4
    const/16 v3, 0xb

    .line 1187
    .restart local v3    # "hapticFeedback":I
    goto :goto_3

    .line 1197
    .restart local v6    # "systemVibrator":Landroid/os/SystemVibrator;
    :cond_4
    const-string v7, "PowerUI"

    const-string v8, "playSound : fail to new SystemVibrator"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1200
    .end local v3    # "hapticFeedback":I
    .end local v6    # "systemVibrator":Landroid/os/SystemVibrator;
    :cond_5
    if-nez v4, :cond_6

    .line 1201
    const-string v7, "PowerUI"

    const-string v8, "RINGER_MODE_SILENT"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1203
    :cond_6
    const-string v7, "PowerUI"

    const-string v8, "unknown RINGER_MODE"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1180
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method releaseWakelockForForceConsume()V
    .locals 2

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mForceConsume:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mForceConsume:Z

    .line 642
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mForceConsumeCurrnetLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 647
    :goto_0
    return-void

    .line 645
    :cond_0
    const-string v0, "PowerUI"

    const-string v1, "releaseWakelockForForceConsume : Already released, no action"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method showAbnormalChargeWarning(I)V
    .locals 14
    .param p1, "messageId"    # I

    .prologue
    const v13, 0x7f0a012f

    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 870
    iget-object v10, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "SHOULD_SHUT_DOWN"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v10, :cond_0

    move v5, v9

    .line 872
    .local v5, "isFactoryMode":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 873
    const-string v8, "PowerUI"

    const-string v9, "don\'t show Abnormal charging warning in Factory mode"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :goto_1
    return-void

    .end local v5    # "isFactoryMode":Z
    :cond_0
    move v5, v8

    .line 870
    goto :goto_0

    .line 877
    .restart local v5    # "isFactoryMode":Z
    :cond_1
    iget-boolean v10, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v10, :cond_2

    .line 878
    const-string v8, "PowerUI"

    const-string v9, "FTA Mode is ON so don\'t show Abnormal charging warning"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 882
    :cond_2
    const-string v10, "PowerUI"

    const-string v11, "showAbnormalChargeWarning()"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 888
    iget-object v10, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v11, "com.android.systemui.power_abnormal_charge"

    invoke-virtual {v10, v11, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 889
    .local v0, "abnormalChargeSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_5

    .line 890
    if-ne v13, p1, :cond_4

    .line 891
    const-string v10, "DoNotShowSlowChargeWarning"

    invoke-interface {v0, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 892
    const-string v8, "PowerUI"

    const-string v9, "Slow charging warning doesn\'t show again"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 894
    :cond_3
    const/4 v8, 0x3

    iget v10, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v8, v10, :cond_5

    const/4 v8, 0x4

    iget v10, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v8, v10, :cond_5

    const/16 v8, 0xa

    iget v10, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v8, v10, :cond_5

    .line 895
    const-string v8, "PowerUI"

    const-string v9, "Slow charging warning doesn\'t show while Dock connects"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 899
    :cond_4
    const-string v10, "DoNotShowIncompatibleChargerWarning"

    invoke-interface {v0, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 900
    const-string v8, "PowerUI"

    const-string v9, "Incompatible charger warning doesn\'t show again"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 906
    :cond_5
    if-ne v13, p1, :cond_7

    .line 907
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v10, 0x7f0a012e

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 909
    .local v6, "title":Ljava/lang/CharSequence;
    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v12, v8, :cond_6

    .line 910
    const p1, 0x7f0a0130

    .line 916
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeTextView:Landroid/widget/TextView;

    if-eqz v8, :cond_8

    .line 917
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, v6}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 913
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v10, 0x7f0a012b

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    .line 922
    :cond_8
    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v9, v8, :cond_9

    .line 923
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 930
    .local v2, "context":Landroid/content/Context;
    :goto_3
    const/high16 v8, 0x7f030000

    const/4 v10, 0x0

    invoke-static {v2, v8, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 931
    .local v7, "v":Landroid/view/View;
    const v8, 0x7f0d0005

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeTextView:Landroid/widget/TextView;

    .line 933
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeTextView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v10, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    move v4, p1

    .line 938
    .local v4, "finalMessageId":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 939
    .local v1, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 940
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 941
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 942
    const v8, 0x1010355

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 943
    const v8, 0x104000a

    new-instance v9, Lcom/android/systemui/power/PowerUI$10;

    invoke-direct {v9, p0, v7, v0, v4}, Lcom/android/systemui/power/PowerUI$10;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/view/View;Landroid/content/SharedPreferences;I)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 958
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 959
    .local v3, "d":Landroid/app/AlertDialog;
    new-instance v8, Lcom/android/systemui/power/PowerUI$11;

    invoke-direct {v8, p0}, Lcom/android/systemui/power/PowerUI$11;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 965
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 966
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 967
    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mAbnormalChargeDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 924
    .end local v1    # "b":Landroid/app/AlertDialog$Builder;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "d":Landroid/app/AlertDialog;
    .end local v4    # "finalMessageId":I
    .end local v7    # "v":Landroid/view/View;
    :cond_9
    iget v8, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v12, v8, :cond_a

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "GT-P6800"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 925
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v10, 0x103012b

    invoke-direct {v2, v8, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v2    # "context":Landroid/content/Context;
    goto :goto_3

    .line 927
    .end local v2    # "context":Landroid/content/Context;
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .restart local v2    # "context":Landroid/content/Context;
    goto :goto_3
.end method

.method showForceConsumeStartDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 661
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mForceConsumeStartDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 666
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 667
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 668
    const v4, 0x7f0a0122

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 669
    const v4, 0x7f0a0123

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 670
    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 672
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 673
    .local v2, "d":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerUI$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 680
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 681
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 683
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mForceConsumeStartDialog:Landroid/app/AlertDialog;

    .line 686
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v2    # "d":Landroid/app/AlertDialog;
    :cond_0
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 688
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 689
    .local v3, "powerManager":Landroid/os/PowerManager;
    if-nez v3, :cond_1

    .line 690
    const-string v4, "PowerUI"

    const-string v5, "showForceConsumeStartDialog : fail to get PowerManager reference, cannot get wakelock..."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mForceConsume:Z

    if-nez v4, :cond_2

    .line 695
    const v4, 0x3000001a

    const-string v5, "PowerUI_Drop"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mForceConsumeCurrnetLock:Landroid/os/PowerManager$WakeLock;

    .line 696
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mForceConsumeCurrnetLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 697
    iput-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mForceConsume:Z

    goto :goto_0

    .line 700
    :cond_2
    const v4, 0x10000006

    const-string v5, "PowerUI"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 701
    .local v1, "consumeCurrentScreenDimLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 702
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method showInvalidChargerDialog()V
    .locals 4

    .prologue
    .line 714
    const-string v2, "PowerUI"

    const-string v3, "showing invalid charger dialog"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    .line 718
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 719
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 720
    const v2, 0x7f0a0070

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 721
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 722
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 724
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 725
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 732
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 733
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 734
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    .line 735
    return-void
.end method

.method showLowBatteryWarning()V
    .locals 21

    .prologue
    .line 485
    const-string v18, "PowerUI"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    const-string v17, "showing"

    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " low battery warning: level="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " ["

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "]"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "SHOULD_SHUT_DOWN"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/4 v9, 0x1

    .line 494
    .local v9, "isFactoryMode":Z
    :goto_1
    if-eqz v9, :cond_2

    .line 495
    const-string v17, "PowerUI"

    const-string v18, "don\'t show Low battery warning in Factory mode"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :goto_2
    return-void

    .line 485
    .end local v9    # "isFactoryMode":Z
    :cond_0
    const-string v17, "updating"

    goto :goto_0

    .line 492
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 499
    .restart local v9    # "isFactoryMode":Z
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v3

    .line 503
    .local v3, "bucket":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v17, -0x2

    move/from16 v0, v17

    if-eq v0, v3, :cond_3

    .line 504
    const-string v17, "PowerUI"

    const-string v18, "FTA Mode is ON and Not critical Low battery"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 508
    :cond_3
    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v0, v3, :cond_6

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0a011d

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 511
    .local v15, "title":Ljava/lang/CharSequence;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "LOW_BATTERY_DUMP"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/4 v10, 0x1

    .line 512
    .local v10, "isLowBatteryDumpOn":Z
    :goto_3
    if-eqz v10, :cond_4

    .line 513
    const-string v17, "PowerUI"

    const-string v18, "Dump for Low battery"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/Intent;

    const-string v19, "com.android.systemui.power.action.LOW_BATTERY_WARNING"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 520
    .end local v10    # "isLowBatteryDumpOn":Z
    :cond_4
    :goto_4
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0a011f

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 542
    .local v11, "levelText":Ljava/lang/CharSequence;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 602
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 603
    .local v5, "cr":Landroid/content/ContentResolver;
    const-string v17, "low_battery_sound"

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 604
    .local v14, "soundPath":Ljava/lang/String;
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "power"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 607
    .local v13, "powerManager":Landroid/os/PowerManager;
    if-nez v13, :cond_c

    .line 608
    const-string v17, "PowerUI"

    const-string v18, "showLowBatteryWarning : fail to get PowerManager reference"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 511
    .end local v5    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "levelText":Ljava/lang/CharSequence;
    .end local v13    # "powerManager":Landroid/os/PowerManager;
    .end local v14    # "soundPath":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 517
    .end local v15    # "title":Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0a011c

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "title":Ljava/lang/CharSequence;
    goto :goto_4

    .line 523
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0a011e

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "levelText":Ljava/lang/CharSequence;
    goto :goto_5

    .line 549
    :cond_8
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 550
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 551
    .local v4, "context":Landroid/content/Context;
    const v7, 0x7f020003

    .line 560
    .local v7, "imageId":I
    :goto_7
    const v17, 0x7f030001

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v4, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 561
    .local v16, "v":Landroid/view/View;
    const v17, 0x7f0d0007

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    const v17, 0x7f0d0008

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 567
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 568
    .local v2, "b":Landroid/app/AlertDialog$Builder;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 570
    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 571
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 572
    const v17, 0x1010355

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 573
    const v17, 0x104000a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 575
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.intent.action.POWER_USAGE_SUMMARY"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v17, 0x58800000    # 1.12589991E15f

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 581
    const v17, 0x7f0a0071

    new-instance v18, Lcom/android/systemui/power/PowerUI$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 590
    :cond_9
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 591
    .local v6, "d":Landroid/app/AlertDialog;
    new-instance v17, Lcom/android/systemui/power/PowerUI$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 597
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7d9

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 598
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 599
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/power/PowerUI;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_6

    .line 552
    .end local v2    # "b":Landroid/app/AlertDialog$Builder;
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "d":Landroid/app/AlertDialog;
    .end local v7    # "imageId":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v16    # "v":Landroid/view/View;
    :cond_a
    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v18, "GT-P6800"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 553
    new-instance v4, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x103012b

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 554
    .restart local v4    # "context":Landroid/content/Context;
    const v7, 0x7f020004

    .restart local v7    # "imageId":I
    goto/16 :goto_7

    .line 556
    .end local v4    # "context":Landroid/content/Context;
    .end local v7    # "imageId":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 557
    .restart local v4    # "context":Landroid/content/Context;
    const v7, 0x7f020003

    .restart local v7    # "imageId":I
    goto/16 :goto_7

    .line 611
    .end local v4    # "context":Landroid/content/Context;
    .end local v7    # "imageId":I
    .restart local v5    # "cr":Landroid/content/ContentResolver;
    .restart local v13    # "powerManager":Landroid/os/PowerManager;
    .restart local v14    # "soundPath":Ljava/lang/String;
    :cond_c
    const v17, 0x10000006

    const-string v18, "PowerUI"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v12

    .line 613
    .local v12, "lowBatteryScreenDimLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v17, 0x3a98

    move-wide/from16 v0, v17

    invoke-virtual {v12, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_2
.end method

.method showNotChargeDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 746
    const-string v5, "PowerUI"

    const-string v6, "showNotChargeDialog()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v8, v5, :cond_0

    .line 750
    const v2, 0x7f0a0116

    .line 761
    .local v2, "messageId":I
    :goto_0
    const/4 v5, 0x1

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v5, v6, :cond_3

    .line 762
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 768
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 769
    const v5, 0x7f0a0114

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 770
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 771
    const v5, 0x1010355

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 772
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 774
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 775
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 785
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 786
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 787
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeDialog:Landroid/app/AlertDialog;

    .line 789
    invoke-virtual {p0, v8}, Lcom/android/systemui/power/PowerUI;->playSound(I)V

    .line 791
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 792
    .local v4, "powerManager":Landroid/os/PowerManager;
    if-nez v4, :cond_5

    .line 793
    const-string v5, "PowerUI"

    const-string v6, "showNotChargeDialog : fail to get PowerManager reference"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    .end local v2    # "messageId":I
    .end local v4    # "powerManager":Landroid/os/PowerManager;
    :goto_2
    return-void

    .line 751
    :cond_0
    const/4 v5, 0x7

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v5, v6, :cond_1

    .line 752
    const v2, 0x7f0a0117

    .restart local v2    # "messageId":I
    goto :goto_0

    .line 753
    .end local v2    # "messageId":I
    :cond_1
    const/4 v5, 0x6

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v5, v6, :cond_2

    .line 754
    const v2, 0x7f0a0115

    .restart local v2    # "messageId":I
    goto :goto_0

    .line 756
    .end local v2    # "messageId":I
    :cond_2
    const-string v5, "PowerUI"

    const-string v6, "status is NotCharging but health is wrong value"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 763
    .restart local v2    # "messageId":I
    :cond_3
    const/4 v5, 0x2

    iget v6, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v5, v6, :cond_4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "GT-P6800"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 764
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v7, 0x103012b

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0    # "b":Landroid/app/AlertDialog$Builder;
    goto/16 :goto_1

    .line 766
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0    # "b":Landroid/app/AlertDialog$Builder;
    goto/16 :goto_1

    .line 796
    .restart local v1    # "d":Landroid/app/AlertDialog;
    .restart local v4    # "powerManager":Landroid/os/PowerManager;
    :cond_5
    const v5, 0x10000006

    const-string v6, "PowerUI"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 798
    .local v3, "notChargeScreenDimLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 799
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2
.end method

.method showWirelessChargeDialog(I)V
    .locals 6
    .param p1, "messageId"    # I

    .prologue
    .line 815
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 816
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 817
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 852
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 854
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->turnOnScreen()V

    .line 855
    :goto_1
    return-void

    .line 819
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    if-eqz v2, :cond_1

    .line 820
    const-string v2, "PowerUI"

    const-string v3, "FTA Mode is ON and don\'t show wireless charging popup"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 825
    :cond_1
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v2, v3, :cond_2

    .line 826
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 832
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 833
    const v2, 0x7f0a0126

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 834
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 835
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 836
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 838
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 839
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/systemui/power/PowerUI$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/PowerUI$8;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 847
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 848
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 849
    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWirelessChargeDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 827
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_2
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v2, v3, :cond_3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "GT-P6800"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 828
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0    # "b":Landroid/app/AlertDialog$Builder;
    goto :goto_2

    .line 830
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0    # "b":Landroid/app/AlertDialog$Builder;
    goto :goto_2
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 165
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 167
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v3, v7

    .line 169
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aput v4, v3, v6

    .line 172
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 173
    .local v2, "powerManager":Landroid/os/PowerManager;
    if-nez v2, :cond_0

    .line 174
    const-string v3, "PowerUI"

    const-string v4, "start : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "characteristics":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "tablet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    .line 186
    :goto_1
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start : Device type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v3, "VZW"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    iput-boolean v6, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    .line 193
    :goto_2
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start : VZW customer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v3, Lcom/android/systemui/media/NotificationPlayer;

    const-string v4, "PowerUI"

    invoke-direct {v3, v4}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 196
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/media/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    .line 199
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v3, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v3, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v3, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 207
    return-void

    .line 176
    .end local v0    # "characteristics":Ljava/lang/String;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v3, 0x6

    const-string v4, "PowerUI"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mNotChargeScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 177
    const-string v3, "PowerUI"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mNotChargePartialLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    .line 184
    .restart local v0    # "characteristics":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    goto/16 :goto_1

    .line 191
    :cond_2
    iput-boolean v7, p0, Lcom/android/systemui/power/PowerUI;->mVZW:Z

    goto :goto_2
.end method

.method turnOnScreen()V
    .locals 6

    .prologue
    .line 1211
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1212
    .local v1, "powerManager":Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    .line 1213
    const-string v2, "PowerUI"

    const-string v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :goto_0
    return-void

    .line 1218
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v2, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
