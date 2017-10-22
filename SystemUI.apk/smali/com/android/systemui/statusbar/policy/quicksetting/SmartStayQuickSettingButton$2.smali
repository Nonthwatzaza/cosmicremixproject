.class Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$2;
.super Ljava/lang/Object;
.source "SmartStayQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->onDisplayTalkbackDisableAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->removeEnabledScreenReaderValue()V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;

    const/4 v1, 0x1

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->setMode(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/SmartStayQuickSettingButton;I)V

    .line 140
    return-void
.end method
