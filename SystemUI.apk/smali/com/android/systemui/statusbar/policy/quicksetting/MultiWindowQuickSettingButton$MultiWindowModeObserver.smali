.class Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;
.super Landroid/database/ContentObserver;
.source "MultiWindowQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    .line 103
    const-string v0, "STATUSBAR-MultiWindowSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MultiWindowModeObserver.onChange() - DB_MULTI_WINDOW_MODE_ON = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_window_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 109
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->getMode()I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;Z)Z

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 111
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method
