.class Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;
.super Landroid/database/ContentObserver;
.source "PenOnlyQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenOnlyModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;)V
    .locals 1

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 79
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    .line 83
    const-string v0, "STATUSBAR-PenOnlyModeSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PenOnlyModeObserver.onChange() - DB_PEN_ONLY_MODE_ON = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_only_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->getMode()I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mState:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;Z)Z

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton$PenOnlyModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->mState:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/PenOnlyQuickSettingButton;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 91
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method
