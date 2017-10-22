.class public Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;
.super Lcom/android/systemui/statusbar/policy/KeyButtonView;
.source "QuickLaunchKeyButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$2;,
        Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;,
        Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;
    }
.end annotation


# static fields
.field public static final ACTION_TOUCH_CAPTURE_BTN:Ljava/lang/String; = "android.intent.action.TOUCH_CAPTURE_BTN"

.field public static final DEBUG:Z = true

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

.field public static final TAG:Ljava/lang/String; = "StatusBar.QuickLaunchKeyButtonView"


# instance fields
.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDoNotUseDiotekScreenshot:Z

.field private mQuickLaunchMode:I

.field private mQuickLaunchObserver:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

.field private mResources:Landroid/content/res/Resources;

.field mScreenCaptureOn:Z

.field private mUseChinaQuickLaunch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mScreenCaptureOn:Z

    .line 311
    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    .line 115
    new-instance v2, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;-><init>(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchObserver:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mContentResolver:Landroid/content/ContentResolver;

    .line 118
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, "captureFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v2, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    .end local v0    # "captureFilter":Landroid/content/IntentFilter;
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mUseChinaQuickLaunch:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mDoNotUseDiotekScreenshot:Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :goto_1
    return-void

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mUseChinaQuickLaunch:Z

    goto :goto_0

    .line 137
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 138
    .restart local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mDoNotUseDiotekScreenshot:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->updateQuickLaunchKeyButton(I)V

    return-void
.end method

.method private onClickApplicationButton()V
    .locals 4

    .prologue
    .line 268
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickApplicationButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    const-string v2, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v3, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private onClickCameraButton()V
    .locals 5

    .prologue
    .line 299
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickCameraButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private onClickQuickLauncherButton()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "StatusBar.QuickLaunchKeyButtonView"

    const-string v1, "onClickQuickLauncherButton"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$2;->$SwitchMap$com$android$systemui$statusbar$policy$QuickLaunchKeyButtonView$QuickLaunchMode:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 213
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickScreenCaptureButton()V

    goto :goto_0

    .line 216
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickApplicationButton()V

    goto :goto_0

    .line 219
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickSearchButton()V

    goto :goto_0

    .line 222
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickCameraButton()V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onClickScreenCaptureButton()V
    .locals 3

    .prologue
    .line 241
    const-string v1, "StatusBar.QuickLaunchKeyButtonView"

    const-string v2, "onClickScreenCaptureButton"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mScreenCaptureOn:Z

    if-nez v1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TOUCH_CAPTURE_BTN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "mIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onClickSearchButton()V
    .locals 5

    .prologue
    .line 281
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickSearchButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 286
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mUseChinaQuickLaunch:Z

    if-eqz v2, :cond_0

    .line 287
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.baidu.searchbox_samsung"

    const-string v4, "com.baidu.searchbox.SearchActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 292
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 296
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 289
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v4, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private onLongClickQuickLauncherButton()Z
    .locals 2

    .prologue
    .line 230
    const-string v0, "StatusBar.QuickLaunchKeyButtonView"

    const-string v1, "onLongClickQuickLauncherButton"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$2;->$SwitchMap$com$android$systemui$statusbar$policy$QuickLaunchKeyButtonView$QuickLaunchMode:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 236
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 233
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onLongClickScreenCaptureButton()V

    .line 234
    const/4 v0, 0x1

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private onLongClickScreenCaptureButton()V
    .locals 4

    .prologue
    .line 249
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onLongClickScreenCaptureButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mScreenCaptureOn:Z

    if-nez v2, :cond_0

    .line 265
    :goto_0
    return-void

    .line 253
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 255
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mDoNotUseDiotekScreenshot:Z

    if-eqz v2, :cond_1

    .line 256
    const-string v2, "com.sec.spen.flashannotatesvc"

    const-string v3, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    :goto_1
    const-string v2, "longpress"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 262
    .end local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v2, "com.diotek.screen_capture"

    const-string v3, "com.diotek.screen_capture.CaptureService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateQuickLaunchKeyButton(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    const-string v0, "StatusBar.QuickLaunchKeyButtonView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateQuickLaunchKeyButton : mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$2;->$SwitchMap$com$android$systemui$statusbar$policy$QuickLaunchKeyButtonView$QuickLaunchMode:[I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 204
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :goto_0
    return-void

    .line 181
    :pswitch_0
    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 184
    :pswitch_1
    invoke-virtual {p0, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0201c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 189
    :pswitch_2
    invoke-virtual {p0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 194
    :pswitch_3
    invoke-virtual {p0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0201d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 199
    :pswitch_4
    invoke-virtual {p0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0201c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getQuickLaunchMode()I
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "quick_launch_app"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isQuickLaunchNoneMode()Z
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->NONE:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenCaptureQuickLaunchMode()Z
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->SCREENCAPTURE:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickQuickLauncherButton()V

    .line 158
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 145
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "quick_launch_app"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchObserver:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getQuickLaunchMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    .line 150
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->updateQuickLaunchKeyButton(I)V

    .line 151
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onLongClickQuickLauncherButton()Z

    move-result v0

    return v0
.end method
