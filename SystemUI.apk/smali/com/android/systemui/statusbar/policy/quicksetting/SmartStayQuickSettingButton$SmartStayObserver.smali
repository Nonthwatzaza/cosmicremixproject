.class Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;
.super Landroid/database/ContentObserver;
.source "SmartStayQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartStayObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;)V
    .locals 1

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 112
    const-string v0, "STATUSBAR-SmartStay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartStayObserverObserver.onChange() - DB_SMART_STAY_ON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "intelligent_sleep_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 118
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$SmartStayObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->getMode()I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->mState:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;Z)Z

    .line 121
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method
