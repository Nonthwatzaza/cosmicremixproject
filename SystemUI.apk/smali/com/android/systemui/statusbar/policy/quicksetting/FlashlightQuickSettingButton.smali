.class public Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "FlashlightQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-FlashlightQuickSettingButton"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlashlight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "quickpanel_flashlight_text"

    const-string v3, "string"

    const-string v4, "com.android.systemui"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_quick_panel_icon_flashlight_on"

    const-string v4, "drawable"

    const-string v5, "com.android.systemui"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "tw_quick_panel_icon_flashlight_off"

    const-string v5, "drawable"

    const-string v7, "com.android.systemui"

    invoke-virtual {v0, v1, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v7, v6

    move v8, v6

    .line 23
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 26
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setActivateStatus(I)V

    .line 32
    return-void
.end method

.method public onClick(Z)V
    .locals 5
    .param p1, "paramBoolean"    # Z

    .prologue
    .line 35
    const/4 v2, 0x0

    .line 36
    .local v2, "localIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 38
    .local v1, "bc":Ljava/lang/String;
    const/4 v0, 0x2

    .line 40
    .local v0, "activateStatus":I
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    .line 42
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    rem-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    .line 44
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mFlashlight:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 45
    const-string v1, "com.sec.samsung.torchwidget.torch_on_3"

    .line 46
    const/4 v0, 0x1

    .line 51
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->setActivateStatus(I)V

    .line 53
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "localIntent":Landroid/content/Intent;
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .restart local v2    # "localIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashlightQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    return-void

    .line 48
    :cond_0
    const-string v1, "com.sec.samsung.torchwidget.torch_off"

    goto :goto_0
.end method

.method public onLongClick()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
