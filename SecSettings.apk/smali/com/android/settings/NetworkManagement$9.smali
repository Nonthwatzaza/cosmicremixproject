.class Lcom/android/settings/NetworkManagement$9;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NetworkManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetworkManagement;


# direct methods
.method constructor <init>(Lcom/android/settings/NetworkManagement;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 594
    const/4 v1, 0x0

    .line 595
    .local v1, "enable":I
    const-string v4, "NetworkManagement"

    const-string v5, "onReceive"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 599
    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, "newPhoneState":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    iget-object v5, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # invokes: Lcom/android/settings/NetworkManagement;->convertCallState(Ljava/lang/String;)I
    invoke-static {v5, v2}, Lcom/android/settings/NetworkManagement;->access$600(Lcom/android/settings/NetworkManagement;Ljava/lang/String;)I

    move-result v5

    # setter for: Lcom/android/settings/NetworkManagement;->currentPhoneState1:I
    invoke-static {v4, v5}, Lcom/android/settings/NetworkManagement;->access$502(Lcom/android/settings/NetworkManagement;I)I

    .line 603
    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    iget-object v5, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # invokes: Lcom/android/settings/NetworkManagement;->convertCallState(Ljava/lang/String;)I
    invoke-static {v5, v2}, Lcom/android/settings/NetworkManagement;->access$600(Lcom/android/settings/NetworkManagement;Ljava/lang/String;)I

    move-result v5

    # setter for: Lcom/android/settings/NetworkManagement;->currentPhoneState2:I
    invoke-static {v4, v5}, Lcom/android/settings/NetworkManagement;->access$702(Lcom/android/settings/NetworkManagement;I)I

    .line 604
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive currentPhoneState1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->currentPhoneState1:I
    invoke-static {v6}, Lcom/android/settings/NetworkManagement;->access$500(Lcom/android/settings/NetworkManagement;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currentPhoneState2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->currentPhoneState2:I
    invoke-static {v6}, Lcom/android/settings/NetworkManagement;->access$700(Lcom/android/settings/NetworkManagement;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    .end local v2    # "newPhoneState":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 617
    :goto_1
    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->dataNetworkState:Z
    invoke-static {v4}, Lcom/android/settings/NetworkManagement;->access$800(Lcom/android/settings/NetworkManagement;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->pagingState:Z
    invoke-static {v4}, Lcom/android/settings/NetworkManagement;->access$900(Lcom/android/settings/NetworkManagement;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 619
    if-eq v1, v7, :cond_1

    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->currentPhoneState1:I
    invoke-static {v4}, Lcom/android/settings/NetworkManagement;->access$500(Lcom/android/settings/NetworkManagement;)I

    move-result v4

    if-eq v4, v7, :cond_1

    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->currentPhoneState1:I
    invoke-static {v4}, Lcom/android/settings/NetworkManagement;->access$500(Lcom/android/settings/NetworkManagement;)I

    move-result v4

    if-eq v4, v8, :cond_1

    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->currentPhoneState2:I
    invoke-static {v4}, Lcom/android/settings/NetworkManagement;->access$700(Lcom/android/settings/NetworkManagement;)I

    move-result v4

    if-eq v4, v7, :cond_1

    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->currentPhoneState2:I
    invoke-static {v4}, Lcom/android/settings/NetworkManagement;->access$700(Lcom/android/settings/NetworkManagement;)I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 623
    :cond_1
    const/4 v0, 0x0

    .line 627
    .local v0, "bool":Z
    :goto_2
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Flight Mode or CallState is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;
    invoke-static {v4}, Lcom/android/settings/NetworkManagement;->access$1000(Lcom/android/settings/NetworkManagement;)Lcom/android/settings/SimStatePreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settings/SimStatePreference;->stateEnable(Z)V

    .line 630
    .end local v0    # "bool":Z
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.ACTION_DATA_CONNECTION_CHANGE_FAIL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 631
    const-string v4, "NetworkManagement"

    const-string v5, "ACTION_DATA_CONNECTION_CHANGE_FAIL"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/settings/NetworkManagement;->access$1100(Lcom/android/settings/NetworkManagement;)Landroid/preference/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v4}, Lcom/android/settings/NetworkManagement;->isAllSimOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 633
    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/settings/NetworkManagement;->access$1100(Lcom/android/settings/NetworkManagement;)Landroid/preference/ListPreference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SimListPreference;

    invoke-virtual {v4}, Lcom/android/settings/SimListPreference;->restoredDataPrefered()V

    .line 641
    :cond_3
    :goto_3
    return-void

    .line 599
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 613
    :catch_0
    move-exception v3

    .line 614
    .local v3, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 625
    .end local v3    # "se":Landroid/provider/Settings$SettingNotFoundException;
    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "bool":Z
    goto :goto_2

    .line 634
    .end local v0    # "bool":Z
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.ACTION_DATA_CONNECTION_CHANGE_SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 636
    const-string v4, "NetworkManagement"

    const-string v5, "ACTION_DATA_CONNECTION_CHANGE_SUCCESS"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/settings/NetworkManagement;->access$1100(Lcom/android/settings/NetworkManagement;)Landroid/preference/ListPreference;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v4}, Lcom/android/settings/NetworkManagement;->isAllSimOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 639
    iget-object v4, p0, Lcom/android/settings/NetworkManagement$9;->this$0:Lcom/android/settings/NetworkManagement;

    # getter for: Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/settings/NetworkManagement;->access$1100(Lcom/android/settings/NetworkManagement;)Landroid/preference/ListPreference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SimListPreference;

    invoke-virtual {v4}, Lcom/android/settings/SimListPreference;->dismissDialog()V

    goto :goto_3
.end method
