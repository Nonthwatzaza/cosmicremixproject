.class public Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SilentModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SilentModeQuickSettingButton"

.field private static mSoundProfile:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const v5, 0x7f020245

    .line 53
    const v3, 0x7f0a00ed

    const v4, 0x7f020244

    const/4 v6, 0x0

    const v7, 0x7f020243

    move-object v0, p0

    move-object v1, p1

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 36
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 62
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 30
    sput p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    return p0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->updateStatus()V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const-string v1, "STATUSBAR-SilentModeQuickSettingButton"

    const-string v2, "mAudioManager is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x1

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "soundProfile":I
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    if-ne v1, v3, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 101
    :goto_0
    const-string v1, "STATUSBAR-SilentModeQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SilentMode onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), setRingerMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 103
    return-void

    .line 87
    :cond_0
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    if-nez v1, :cond_1

    .line 88
    const/4 v0, 0x2

    goto :goto_0

    .line 89
    :cond_1
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 90
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 91
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->hasVibrator:Z

    if-eqz v1, :cond_2

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p0, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 98
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public updateStatus()V
    .locals 4

    .prologue
    .line 118
    const/4 v0, -0x1

    .line 119
    .local v0, "status":I
    const v1, 0x7f0a00ed

    .line 121
    .local v1, "textID":I
    sget v2, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 122
    const/4 v0, 0x4

    .line 123
    const v1, 0x7f0a00ef

    .line 136
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setTextId(I)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 139
    return-void

    .line 124
    :cond_0
    sget v2, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    if-nez v2, :cond_1

    .line 125
    const/4 v0, 0x5

    .line 126
    const v1, 0x7f0a00f0

    goto :goto_0

    .line 127
    :cond_1
    sget v2, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 128
    const/4 v0, 0x1

    .line 129
    const v1, 0x7f0a00ee

    goto :goto_0

    .line 131
    :cond_2
    const/4 v0, 0x1

    .line 132
    const v1, 0x7f0a00ee

    goto :goto_0
.end method
