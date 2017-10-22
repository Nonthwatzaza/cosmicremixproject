.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1147
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v1, :cond_0

    .line 1148
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/BaseStatusBar;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1150
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1151
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3802(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z

    .line 1152
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v2

    # invokes: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateModeButtonsState(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)V

    .line 1154
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->ACTION_ARRANGE_WINDOWS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1155
    .local v0, "arrangeIntent":Landroid/content/Intent;
    sget-object v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_ARRANGE_MODE:Ljava/lang/String;

    sget v2, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1156
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1158
    .end local v0    # "arrangeIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
