.class public Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "PenOnlyQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;
    }
.end annotation


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PenOnlyModeSettingButton"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mPenOnlyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 24
    const/4 v2, 0x0

    const v3, 0x7f0a0101

    const v4, 0x7f020234

    const v5, 0x7f020233

    const v6, 0x7f020232

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mContext:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mPenOnlyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;

    .line 34
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_only_mode"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_only_mode"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_1

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mState:Z

    .line 39
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v9, v7

    .line 37
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private getMode()I
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_only_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "pen_only_mode"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->getMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mState:Z

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.PEN_ONLY_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mPenOnlyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 49
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "pen_only_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mPenOnlyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 52
    const-string v0, "STATUSBAR-PenOnlyModeSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PenOnly Mode Setting onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 55
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 56
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->setMode(I)V

    .line 58
    :cond_0
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$PenSettingsMenuActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
