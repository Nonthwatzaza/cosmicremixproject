.class Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSim2ButtonLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    const-string v4, "simId"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 41
    .local v3, "simCardId":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->access$000(Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 43
    .local v2, "simActive":I
    const-string v4, "QuickSim2Button"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadcastReceiver- ACTION_DEFAULT_CS_SIM_CHANGED ,simActive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-nez v2, :cond_1

    .line 46
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    .line 57
    .end local v2    # "simActive":I
    .end local v3    # "simCardId":I
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v2    # "simActive":I
    .restart local v3    # "simCardId":I
    :cond_1
    const-string v4, "persist.radio.calldefault.simid"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 50
    .local v1, "currSimId":I
    if-ne v1, v7, :cond_2

    .line 51
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setSelectedSimUI()V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout$1;->this$0:Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/QuickSim2ButtonLayout;->setDeselectedSimUI()V

    goto :goto_0
.end method
