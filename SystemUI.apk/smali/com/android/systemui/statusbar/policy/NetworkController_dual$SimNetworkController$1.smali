.class Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkController_dual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 430
    const-string v0, "NetworkController_dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simslot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    .line 436
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 459
    const-string v0, "NetworkController_dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simslot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataActivity:I

    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    .line 463
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 440
    const-string v0, "NetworkController_dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simslot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataState:I

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataNetType:I

    .line 447
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getUpdateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 453
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    .line 455
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 395
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simslot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iput-object p1, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 399
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_CbChannelNb4DisplayInStatusBar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged state= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sending.. com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.mms.CB_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "simId"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 406
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "ro.config.combined_signal"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getDataServiceState()I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$300(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)I

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataServiceState:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$202(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;I)I

    .line 413
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Combining data service state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataServiceState:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$200(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for signal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simslot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateTelephonySignalStrength()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 417
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_2

    .line 418
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getUpdateDataNetType()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$400(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 423
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateDataIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 424
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->setCurrentSimSlotIcon()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)V

    .line 425
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    .line 426
    return-void

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateDataNetType()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$500(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    goto :goto_0
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 387
    const-string v1, "NetworkController_dual"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " simslot="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateTelephonySignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->access$100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;->this$1:Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->refreshViews()V

    .line 391
    return-void

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
