.class public Lcom/android/systemui/statusbar/policy/FaceDetectionController;
.super Landroid/content/BroadcastReceiver;
.source "FaceDetectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;,
        Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;
    }
.end annotation


# static fields
.field private static final ACTION_FACE_DETECTION_FAILED:Ljava/lang/String; = "faceservice_failed"

.field private static final ACTION_FACE_DETECTION_SCR_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final ACTION_FACE_DETECTION_STARTED:Ljava/lang/String; = "faceservice_enabled"

.field private static final ACTION_FACE_DETECTION_STOPPED:Ljava/lang/String; = "faceservice_disabled"

.field private static final TAG:Ljava/lang/String; = "StatusBar.FaceDetectionController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-FaceDetectionController"

.field private static final URI_SMART_ROTATION:Ljava/lang/String; = "intelligent_rotation_mode"

.field private static final URI_SMART_STAY:Ljava/lang/String; = "intelligent_sleep_mode"


# instance fields
.field private isSmartRotationMode:I

.field private isSmartStayMode:I

.field private mContext:Landroid/content/Context;

.field private mEnableDetect:Z

.field private mFailIconId:I

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/app/StatusBarManager;

.field private mSmartRotationObserver:Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;

.field private mSmartStayObserver:Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;

.field private mStartIconId:I

.field private mStopIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mIconViews:Ljava/util/ArrayList;

    .line 52
    const v1, 0x7f0201e1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStartIconId:I

    .line 53
    const v1, 0x7f0201e3

    iput v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    .line 54
    const v1, 0x7f0201e2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mFailIconId:I

    .line 101
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mContext:Landroid/content/Context;

    .line 103
    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    const-string v2, "face"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    const-string v2, "face"

    invoke-virtual {v1, v2, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_sleep_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartStayMode:I

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_rotation_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartRotationMode:I

    .line 111
    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartStayMode:I

    if-eq v1, v6, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartRotationMode:I

    if-ne v1, v6, :cond_1

    .line 112
    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    .line 116
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    const-string v2, "face"

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 119
    new-instance v1, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;-><init>(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mSmartStayObserver:Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_sleep_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mSmartStayObserver:Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 123
    new-instance v1, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;-><init>(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mSmartRotationObserver:Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "intelligent_rotation_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mSmartRotationObserver:Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartRotationObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "faceservice_enabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "faceservice_disabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "faceservice_failed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void

    .line 114
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartStayMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/FaceDetectionController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FaceDetectionController;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartStayMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartRotationMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/FaceDetectionController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FaceDetectionController;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartRotationMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/FaceDetectionController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FaceDetectionController;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/FaceDetectionController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FaceDetectionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private final updateFaceIconVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    const-string v1, "face"

    invoke-virtual {v0, v1, p1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 150
    return-void
.end method

.method private updateIconView(IZ)V
    .locals 4
    .param p1, "iconId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 140
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 141
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 142
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 143
    .local v2, "v":Landroid/widget/ImageView;
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    .line 146
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "action":Ljava/lang/String;
    const-string v1, "StatusBar.FaceDetectionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mEnableDetect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    if-eqz v1, :cond_0

    .line 156
    const-string v1, "faceservice_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStartIconId:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    const-string v2, "face"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStartIconId:I

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v1, "faceservice_disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V

    .line 161
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    const-string v2, "face"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    const-string v1, "faceservice_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartRotationMode:I

    if-ne v1, v4, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->isSmartStayMode:I

    if-eq v1, v4, :cond_3

    .line 164
    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V

    .line 168
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    const-string v2, "face"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mFailIconId:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V

    goto :goto_1

    .line 169
    :cond_4
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    const-string v2, "face"

    iget v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method
