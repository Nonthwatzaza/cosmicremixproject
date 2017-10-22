.class public Lcom/android/systemui/statusbar/tablet/SettingsView;
.super Landroid/widget/LinearLayout;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "SettingsView"


# instance fields
.field mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

.field mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

.field mRotate:Lcom/android/systemui/statusbar/policy/AutoRotateController;

.field mRotationLockContainer:Landroid/view/View;

.field mRotationLockSeparator:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/SettingsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method private getStatusBarManager()Landroid/app/StatusBarManager;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private onClickNetwork()V
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 115
    return-void
.end method

.method private onClickSettings()V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getStatusBarManager()Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 123
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 97
    :sswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickNetwork()V

    goto :goto_0

    .line 100
    :sswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->onClickSettings()V

    goto :goto_0

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x7f0d00c1 -> :sswitch_0
        0x7f0d00ce -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;->release()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;->release()V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mRotate:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AutoRotateController;->release()V

    .line 92
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    const v1, 0x7f0d00c0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/AirplaneModeController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mAirplane:Lcom/android/systemui/statusbar/policy/AirplaneModeController;

    .line 65
    const v1, 0x7f0d00c1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f0d00c4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mRotationLockContainer:Landroid/view/View;

    .line 68
    const v1, 0x7f0d00c8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mRotationLockSeparator:Landroid/view/View;

    .line 69
    new-instance v2, Lcom/android/systemui/statusbar/policy/AutoRotateController;

    const v1, 0x7f0d00c7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v3, Lcom/android/systemui/statusbar/tablet/SettingsView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/tablet/SettingsView$1;-><init>(Lcom/android/systemui/statusbar/tablet/SettingsView;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/android/systemui/statusbar/policy/AutoRotateController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;Lcom/android/systemui/statusbar/policy/AutoRotateController$RotationLockCallbacks;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mRotate:Lcom/android/systemui/statusbar/policy/AutoRotateController;

    .line 79
    new-instance v2, Lcom/android/systemui/statusbar/policy/BrightnessController;

    const v1, 0x7f0d00ca

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 81
    new-instance v2, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    const v1, 0x7f0d00cd

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/policy/DoNotDisturbController;-><init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/SettingsView;->mDoNotDisturb:Lcom/android/systemui/statusbar/policy/DoNotDisturbController;

    .line 83
    const v1, 0x7f0d00ce

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method
