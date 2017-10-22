.class Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8$QuickSettingButtonEditObserver;
.super Landroid/database/ContentObserver;
.source "QuickSettingPanel8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSettingButtonEditObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;)V
    .locals 1

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8$QuickSettingButtonEditObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 178
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8$QuickSettingButtonEditObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;->refreshView()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;)V

    .line 185
    return-void
.end method
