.class Lcom/android/settings/SimCardManagerService$1;
.super Lcom/android/settings/ISimCardManagerService$Stub;
.source "SimCardManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimCardManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimCardManagerService;


# direct methods
.method constructor <init>(Lcom/android/settings/SimCardManagerService;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/SimCardManagerService$1;->this$0:Lcom/android/settings/SimCardManagerService;

    invoke-direct {p0}, Lcom/android/settings/ISimCardManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getLine1Number(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 69
    const-string v0, "SimCardManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLine1Number("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : mPhone1.getLine1Number() -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimCardManagerService$1;->this$0:Lcom/android/settings/SimCardManagerService;

    # getter for: Lcom/android/settings/SimCardManagerService;->mPhone1:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/settings/SimCardManagerService;->access$000(Lcom/android/settings/SimCardManagerService;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/android/settings/SimCardManagerService$1;->this$0:Lcom/android/settings/SimCardManagerService;

    # getter for: Lcom/android/settings/SimCardManagerService;->mPhone1:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/settings/SimCardManagerService;->access$000(Lcom/android/settings/SimCardManagerService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const-string v0, "SimCardManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLine1Number("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : mPhone.getLine1Number() -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimCardManagerService$1;->this$0:Lcom/android/settings/SimCardManagerService;

    # getter for: Lcom/android/settings/SimCardManagerService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/settings/SimCardManagerService;->access$100(Lcom/android/settings/SimCardManagerService;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/settings/SimCardManagerService$1;->this$0:Lcom/android/settings/SimCardManagerService;

    # getter for: Lcom/android/settings/SimCardManagerService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/settings/SimCardManagerService;->access$100(Lcom/android/settings/SimCardManagerService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;I)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/settings/SimCardManagerService$1;->this$0:Lcom/android/settings/SimCardManagerService;

    # getter for: Lcom/android/settings/SimCardManagerService;->mPhone1:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/settings/SimCardManagerService;->access$000(Lcom/android/settings/SimCardManagerService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimCardManagerService$1;->this$0:Lcom/android/settings/SimCardManagerService;

    # getter for: Lcom/android/settings/SimCardManagerService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/settings/SimCardManagerService;->access$100(Lcom/android/settings/SimCardManagerService;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    goto :goto_0
.end method

.method public simDeactivate(ZI)Z
    .locals 9
    .param p1, "enable"    # Z
    .param p2, "simId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 78
    move v3, p2

    .line 80
    .local v3, "simSlot":I
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v5

    # setter for: Lcom/android/settings/SimCardManagerService;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;
    invoke-static {v5}, Lcom/android/settings/SimCardManagerService;->access$202(Lcom/android/internal/telephony/msim/SubscriptionManager;)Lcom/android/internal/telephony/msim/SubscriptionManager;

    .line 81
    new-instance v5, Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-direct {v5, v8}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    # setter for: Lcom/android/settings/SimCardManagerService;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {v5}, Lcom/android/settings/SimCardManagerService;->access$302(Lcom/android/internal/telephony/msim/SubscriptionData;)Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 82
    new-instance v5, Lcom/android/internal/telephony/msim/SubscriptionData;

    invoke-direct {v5, v8}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    # setter for: Lcom/android/settings/SimCardManagerService;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {v5}, Lcom/android/settings/SimCardManagerService;->access$402(Lcom/android/internal/telephony/msim/SubscriptionData;)Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 87
    new-array v0, v8, [Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 89
    .local v0, "cardSubscrInfo":[Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    move-result-object v2

    .line 91
    .local v2, "mCardSubscriptionManager":Lcom/android/internal/telephony/msim/CardSubscriptionManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 92
    # getter for: Lcom/android/settings/SimCardManagerService;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;
    invoke-static {}, Lcom/android/settings/SimCardManagerService;->access$200()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v4

    .line 93
    .local v4, "sub":Lcom/android/internal/telephony/msim/Subscription;
    # getter for: Lcom/android/settings/SimCardManagerService;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/android/settings/SimCardManagerService;->access$400()Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 94
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v5

    aput-object v5, v0, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v4    # "sub":Lcom/android/internal/telephony/msim/Subscription;
    :cond_0
    # getter for: Lcom/android/settings/SimCardManagerService;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/android/settings/SimCardManagerService;->access$300()Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v5

    # getter for: Lcom/android/settings/SimCardManagerService;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/android/settings/SimCardManagerService;->access$400()Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/msim/SubscriptionData;->copyFrom(Lcom/android/internal/telephony/msim/SubscriptionData;)Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 98
    if-eqz p1, :cond_2

    .line 99
    const-string v5, "SimCardManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simDeactivate : mUserSelSub.subscription["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "].subStatus = Subscription.SubscriptionStatus.SUB_ACTIVATE;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    # getter for: Lcom/android/settings/SimCardManagerService;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/android/settings/SimCardManagerService;->access$300()Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v3

    aget-object v6, v0, v3

    iget-object v6, v6, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 101
    # getter for: Lcom/android/settings/SimCardManagerService;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/android/settings/SimCardManagerService;->access$300()Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v3

    iput v3, v5, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 102
    # getter for: Lcom/android/settings/SimCardManagerService;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/android/settings/SimCardManagerService;->access$300()Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v3

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v6, v5, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 113
    :cond_1
    # getter for: Lcom/android/settings/SimCardManagerService;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;
    invoke-static {}, Lcom/android/settings/SimCardManagerService;->access$200()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v5

    # getter for: Lcom/android/settings/SimCardManagerService;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/android/settings/SimCardManagerService;->access$300()Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)Z

    move-result v5

    return v5

    .line 104
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_1

    .line 105
    # getter for: Lcom/android/settings/SimCardManagerService;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/android/settings/SimCardManagerService;->access$300()Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ne v5, v3, :cond_3

    .line 106
    const-string v5, "SimCardManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simDeactivate : mUserSelSub.subscription["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "].subStatus = Subscription.SubscriptionStatus.SUB_DEACTIVATE;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    # getter for: Lcom/android/settings/SimCardManagerService;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    invoke-static {}, Lcom/android/settings/SimCardManagerService;->access$300()Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v5, v5, v1

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v6, v5, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 104
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
