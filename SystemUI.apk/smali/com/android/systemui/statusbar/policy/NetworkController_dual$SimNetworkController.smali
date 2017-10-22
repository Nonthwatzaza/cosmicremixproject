.class Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;
.super Ljava/lang/Object;
.source "NetworkController_dual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController_dual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimNetworkController"
.end annotation


# static fields
.field private static final RSSI_AIRPLANE_STATE:I = 0x0

.field private static final RSSI_IN_SVC_STATE:I = 0x2

.field private static final RSSI_NO_SVC_STATE:I = 0x1


# instance fields
.field LTE_ON_CDMA_FALSE:I

.field LTE_ON_CDMA_TRUE:I

.field LTE_ON_CDMA_UNKNOWN:I

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mDataActive:Z

.field mDataActivity:I

.field mDataConnected:Z

.field mDataDirectionIconId:I

.field mDataIconList:[I

.field mDataNetType:I

.field private mDataServiceState:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeIconId:I

.field private mHasMobileDataFeature:Z

.field private mLastCB:Ljava/lang/String;

.field mLastDataDirectionIconId:I

.field mLastDataState:I

.field mLastDataTypeIconId:I

.field mLastPhoneSignalIconId:I

.field private mLastPlmn:Ljava/lang/String;

.field mLastRoamingIconId:I

.field private mLastShowPlmn:Z

.field private mLastShowSpn:Z

.field mLastSignalLevel:I

.field private mLastSpn:Ljava/lang/String;

.field mMobileActivityIconId:I

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field mPhoneSignalIconId:I

.field mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mRoamingIconId:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimFocus:Z

.field mSimIndex:I

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController_dual;Landroid/content/Context;I)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "simSlot"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 349
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 298
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneState:I

    .line 299
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataNetType:I

    .line 300
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataState:I

    .line 301
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataActivity:I

    .line 304
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 316
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataTypeIconId:I

    .line 319
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataState:I

    .line 320
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPhoneSignalIconId:I

    .line 321
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastDataDirectionIconId:I

    .line 332
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastRoamingIconId:I

    .line 335
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    .line 336
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataServiceState:I

    .line 339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastCB:Ljava/lang/String;

    .line 572
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->LTE_ON_CDMA_UNKNOWN:I

    .line 573
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->LTE_ON_CDMA_FALSE:I

    .line 574
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->LTE_ON_CDMA_TRUE:I

    .line 350
    iput-object p2, p1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    .line 351
    iput p3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    .line 353
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 358
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez p3, :cond_1

    .line 359
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z

    .line 360
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimNetworkController mHasMobileDataFeature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 368
    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$000(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 369
    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$000(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x1e1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 377
    :cond_0
    const-string v1, " "

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 378
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v2, 0x1040453

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 380
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    .line 381
    return-void

    .line 363
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mHasMobileDataFeature:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataServiceState:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;
    .param p1, "x1"    # I

    .prologue
    .line 295
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataServiceState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPlmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastShowSpn:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastShowPlmn:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getCdmaEriIcon()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getDataServiceState()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getUpdateDataNetType()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateDataNetType()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z

    move-result v0

    return v0
.end method

.method private final getCdmaEriIcon()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1334
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_0

    .line 1335
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 1336
    .local v0, "iconIndex":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 1338
    .local v1, "iconMode":I
    const-string v3, "NetworkController_dual"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iconMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1356
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_0
    :goto_0
    return v2

    .line 1345
    .restart local v0    # "iconIndex":I
    .restart local v1    # "iconMode":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBluetoothTethered:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1346
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1348
    :pswitch_0
    const v2, 0x7f020293

    goto :goto_0

    .line 1350
    :pswitch_1
    const v2, 0x7f0202a4

    goto :goto_0

    .line 1346
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDataConnectionDescriptionIconId(I)I
    .locals 4
    .param p1, "iconLevel"    # I

    .prologue
    .line 815
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataConnectionDescriptionIconId : mMaxLevelOfSignalStrengthIndicator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMaxLevelOfSignalStrengthIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iconLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 831
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    aget v0, v1, p1

    .line 833
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 822
    .end local v0    # "iconId":I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    aget v0, v1, p1

    .line 823
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 825
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_5_LEVEL_CONNECTION_STRENGTH:[I

    aget v0, v1, p1

    .line 826
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 828
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_6_LEVEL_CONNECTION_STRENGTH:[I

    aget v0, v1, p1

    .line 829
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 820
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDataServiceState()I
    .locals 7

    .prologue
    .line 471
    const/4 v0, 0x1

    .line 473
    .local v0, "dataServiceState":I
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDataState"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 474
    .local v3, "getDataState":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 475
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 477
    :cond_0
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataServiceState: dataServiceState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simslot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move v1, v0

    .line 487
    .end local v0    # "dataServiceState":I
    .end local v3    # "getDataState":Ljava/lang/reflect/Method;
    .local v1, "dataServiceState":I
    :goto_0
    return v1

    .line 479
    .end local v1    # "dataServiceState":I
    .restart local v0    # "dataServiceState":I
    :catch_0
    move-exception v2

    .line 480
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "NetworkController_dual"

    const-string v5, "getDataServiceState: NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 481
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0

    .line 482
    .end local v1    # "dataServiceState":I
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "dataServiceState":I
    :catch_1
    move-exception v2

    .line 483
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "NetworkController_dual"

    const-string v5, "getDataServiceState: IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 484
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0

    .line 485
    .end local v1    # "dataServiceState":I
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "dataServiceState":I
    :catch_2
    move-exception v2

    .line 486
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "NetworkController_dual"

    const-string v5, "getDataServiceState: InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 487
    .end local v0    # "dataServiceState":I
    .restart local v1    # "dataServiceState":I
    goto :goto_0
.end method

.method private getDataSignalIconId(II)I
    .locals 4
    .param p1, "inetCondition"    # I
    .param p2, "iconLevel"    # I

    .prologue
    .line 760
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataSignalIconId : mMaxLevelOfSignalStrengthIndicator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMaxLevelOfSignalStrengthIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inetCondition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iconLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 781
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    if-eqz v1, :cond_1

    .line 782
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_FOCUS:[I

    aget v0, v1, p2

    .line 787
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 768
    .end local v0    # "iconId":I
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    if-eqz v1, :cond_0

    .line 769
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH_FOCUS:[I

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 771
    .end local v0    # "iconId":I
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 773
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 775
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 776
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 778
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 779
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 784
    .end local v0    # "iconId":I
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .restart local v0    # "iconId":I
    goto :goto_0

    .line 766
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneSignalDescriptionIconId(I)I
    .locals 4
    .param p1, "iconLevel"    # I

    .prologue
    .line 792
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneSignalDescriptionIconId : mMaxLevelOfSignalStrengthIndicator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMaxLevelOfSignalStrengthIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iconLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 808
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 810
    .local v0, "iconId":I
    :goto_0
    return v0

    .line 799
    .end local v0    # "iconId":I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 800
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 802
    .end local v0    # "iconId":I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 803
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 805
    .end local v0    # "iconId":I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 806
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 797
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneSignalIconList(I)[I
    .locals 4
    .param p1, "inetCondition"    # I

    .prologue
    .line 729
    const-string v1, "NetworkController_dual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneSignalIconList : mMaxLevelOfSignalStrengthIndicator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMaxLevelOfSignalStrengthIndicator:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inetCondition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 749
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    if-eqz v1, :cond_1

    .line 750
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    .line 755
    .local v0, "iconList":[I
    :goto_0
    return-object v0

    .line 736
    .end local v0    # "iconList":[I
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    if-eqz v1, :cond_0

    .line 737
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_FOCUS:[I

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 739
    .end local v0    # "iconList":[I
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 741
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 743
    .end local v0    # "iconList":[I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 744
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 746
    .end local v0    # "iconList":[I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 747
    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 752
    .end local v0    # "iconList":[I
    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .restart local v0    # "iconList":[I
    goto :goto_0

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 384
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;I)V

    .line 465
    .local v0, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private getUpdateDataNetType()V
    .locals 3

    .prologue
    .line 839
    const-string v0, "NetworkController_dual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateDataNetType: mOperator :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "ORANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateORGDataNetType()V

    .line 857
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OLB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateOLBDataNetType()V

    goto :goto_0

    .line 850
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$1;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkController_dual$Operator:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController_dual$Operator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 855
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateDataNetType()V

    goto :goto_0

    .line 852
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->updateDataNetType()V

    goto :goto_0

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdmaLTE()Z
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Landroid/plugin/dsds/PlugInDsdsService;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v0, v1}, Landroid/plugin/dsds/PlugInDsdsService;->getLteOnCdmaMode(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->LTE_ON_CDMA_TRUE:I

    if-ne v0, v1, :cond_0

    .line 578
    const/4 v0, 0x1

    .line 580
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1563
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastShowSpn:Z

    .line 1564
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastSpn:Ljava/lang/String;

    .line 1565
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastShowPlmn:Z

    .line 1566
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastPlmn:Ljava/lang/String;

    .line 1567
    return-void
.end method

.method private simHasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 586
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 592
    :pswitch_0
    const/4 v0, 0x1

    .line 595
    :cond_0
    :pswitch_1
    return v0

    .line 587
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final updateDataIcon()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1362
    const/4 v3, 0x1

    .line 1364
    .local v3, "visible":Z
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_5

    .line 1366
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdmaLTE()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1369
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_2

    .line 1370
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataState:I

    if-ne v4, v6, :cond_1

    .line 1371
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataActivity:I

    packed-switch v4, :pswitch_data_0

    .line 1382
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v7

    .line 1385
    .local v0, "iconId":I
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataDirectionIconId:I

    .line 1395
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->updateNoSIMNotification()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)V

    .line 1474
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1476
    .local v1, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Landroid/plugin/dsds/PlugInDsdsService;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Landroid/plugin/dsds/PlugInDsdsService;->getNetworkType(I)I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1479
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1482
    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataDirectionIconId:I

    .line 1483
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataConnected:Z

    .line 1484
    return-void

    .line 1373
    .end local v0    # "iconId":I
    .end local v1    # "ident":J
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v8

    .line 1374
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 1376
    .end local v0    # "iconId":I
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v6

    .line 1377
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 1379
    .end local v0    # "iconId":I
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v9

    .line 1380
    .restart local v0    # "iconId":I
    goto :goto_0

    .line 1387
    .end local v0    # "iconId":I
    :cond_1
    const/4 v0, 0x0

    .line 1388
    .restart local v0    # "iconId":I
    const/4 v3, 0x0

    goto :goto_1

    .line 1391
    .end local v0    # "iconId":I
    :cond_2
    const v0, 0x7f02011f

    .line 1392
    .restart local v0    # "iconId":I
    const/4 v3, 0x0

    goto :goto_1

    .line 1399
    .end local v0    # "iconId":I
    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataState:I

    if-ne v4, v6, :cond_4

    .line 1400
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataActivity:I

    packed-switch v4, :pswitch_data_1

    .line 1412
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v7

    .line 1413
    .restart local v0    # "iconId":I
    goto :goto_2

    .line 1402
    .end local v0    # "iconId":I
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v8

    .line 1403
    .restart local v0    # "iconId":I
    goto :goto_2

    .line 1405
    .end local v0    # "iconId":I
    :pswitch_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v6

    .line 1406
    .restart local v0    # "iconId":I
    goto :goto_2

    .line 1408
    .end local v0    # "iconId":I
    :pswitch_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v9

    .line 1409
    .restart local v0    # "iconId":I
    goto :goto_2

    .line 1416
    .end local v0    # "iconId":I
    :cond_4
    const/4 v0, 0x0

    .line 1417
    .restart local v0    # "iconId":I
    const/4 v3, 0x0

    goto :goto_2

    .line 1421
    .end local v0    # "iconId":I
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1423
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_8

    .line 1424
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataState:I

    if-ne v4, v6, :cond_7

    .line 1425
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataActivity:I

    packed-switch v4, :pswitch_data_2

    .line 1436
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v7

    .line 1439
    .restart local v0    # "iconId":I
    :goto_4
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataDirectionIconId:I

    goto :goto_2

    .line 1427
    .end local v0    # "iconId":I
    :pswitch_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v8

    .line 1428
    .restart local v0    # "iconId":I
    goto :goto_4

    .line 1430
    .end local v0    # "iconId":I
    :pswitch_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v6

    .line 1431
    .restart local v0    # "iconId":I
    goto :goto_4

    .line 1433
    .end local v0    # "iconId":I
    :pswitch_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v9

    .line 1434
    .restart local v0    # "iconId":I
    goto :goto_4

    .line 1441
    .end local v0    # "iconId":I
    :cond_7
    const/4 v0, 0x0

    .line 1442
    .restart local v0    # "iconId":I
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1445
    .end local v0    # "iconId":I
    :cond_8
    const v0, 0x7f02011f

    .line 1446
    .restart local v0    # "iconId":I
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1450
    .end local v0    # "iconId":I
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataState:I

    if-ne v4, v6, :cond_a

    .line 1451
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataActivity:I

    packed-switch v4, :pswitch_data_3

    .line 1463
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v7

    .line 1464
    .restart local v0    # "iconId":I
    goto/16 :goto_2

    .line 1453
    .end local v0    # "iconId":I
    :pswitch_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v8

    .line 1454
    .restart local v0    # "iconId":I
    goto/16 :goto_2

    .line 1456
    .end local v0    # "iconId":I
    :pswitch_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v6

    .line 1457
    .restart local v0    # "iconId":I
    goto/16 :goto_2

    .line 1459
    .end local v0    # "iconId":I
    :pswitch_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    aget v0, v4, v9

    .line 1460
    .restart local v0    # "iconId":I
    goto/16 :goto_2

    .line 1467
    .end local v0    # "iconId":I
    :cond_a
    const/4 v0, 0x0

    .line 1468
    .restart local v0    # "iconId":I
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1477
    .restart local v1    # "ident":J
    :catch_0
    move-exception v4

    .line 1479
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1400
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1425
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1451
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0200e2

    const v5, 0x7f0200df

    const/4 v4, 0x0

    const v3, 0x7f0a00c0

    const v2, 0x7f0200e0

    .line 861
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mIsWimaxEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxConnected:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 863
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 864
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 865
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 981
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_f

    .line 982
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_a

    .line 983
    :cond_0
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    .line 1011
    :cond_1
    :goto_1
    return-void

    .line 868
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 965
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_9

    .line 966
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 967
    const v0, 0x7f0200e8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 968
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 870
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_3

    .line 871
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 872
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 873
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 880
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_4

    .line 881
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 882
    const v0, 0x7f0200e7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 883
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 890
    :cond_4
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 891
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 898
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_5

    .line 899
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 900
    const v0, 0x7f0200e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 901
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 904
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 905
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 913
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_6

    .line 914
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 915
    const v0, 0x7f0200ea

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 916
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 919
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 920
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 921
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 930
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_7

    .line 931
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 932
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 940
    :cond_7
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_8

    .line 941
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 942
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 943
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 953
    :cond_8
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 954
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 955
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 959
    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 960
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 961
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 971
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 972
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 973
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 984
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 985
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 986
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getCdmaEriIcon()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 988
    :cond_b
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 990
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Landroid/plugin/dsds/PlugInDsdsService;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v0, v1}, Landroid/plugin/dsds/PlugInDsdsService;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 995
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    if-eqz v0, :cond_d

    .line 996
    const v0, 0x7f0200ee

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 998
    :cond_d
    const v0, 0x7f0200ed

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 1001
    :cond_e
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 1003
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdmaEri()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Landroid/plugin/dsds/PlugInDsdsService;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v0, v1}, Landroid/plugin/dsds/PlugInDsdsService;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1004
    :cond_11
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    if-eqz v0, :cond_12

    .line 1005
    const v0, 0x7f0200ee

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 1007
    :cond_12
    const v0, 0x7f0200ed

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 868
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private final updateOLBDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0200df

    const v5, 0x7f0a00c1

    const v4, 0x7f0a00c0

    const v3, 0x7f0200e0

    const/4 v2, 0x0

    .line 1179
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mIsWimaxEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxConnected:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1181
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1182
    const v0, 0x7f0200e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1287
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_e

    .line 1288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_9

    .line 1289
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    .line 1315
    :cond_1
    :goto_1
    return-void

    .line 1186
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 1271
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_8

    .line 1272
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1273
    const v0, 0x7f0200e8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1188
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_3

    .line 1189
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1190
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1191
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1198
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_4

    .line 1199
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1200
    const v0, 0x7f0200e7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1208
    :cond_4
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1209
    const v0, 0x7f0200ea

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1210
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1215
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_5

    .line 1216
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1217
    const v0, 0x7f0200e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1221
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1222
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1223
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1229
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1230
    const v0, 0x7f0200ea

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1236
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_6

    .line 1237
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1238
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1246
    :cond_6
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_7

    .line 1247
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1248
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1249
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1259
    :cond_7
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1260
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1261
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1265
    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1266
    const v0, 0x7f0200e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1267
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1277
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1278
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1290
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1292
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getCdmaEriIcon()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 1294
    :cond_a
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 1296
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Landroid/plugin/dsds/PlugInDsdsService;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v0, v1}, Landroid/plugin/dsds/PlugInDsdsService;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1301
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    if-eqz v0, :cond_c

    .line 1302
    const v0, 0x7f0200ee

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 1304
    :cond_c
    const v0, 0x7f0200ed

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 1307
    :cond_d
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 1310
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdmaEri()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Landroid/plugin/dsds/PlugInDsdsService;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v0, v1}, Landroid/plugin/dsds/PlugInDsdsService;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1311
    :cond_10
    const v0, 0x7f0200ed

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    goto/16 :goto_1

    .line 1186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private final updateORGDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0200df

    const v5, 0x7f0a00c1

    const/4 v4, 0x0

    const v3, 0x7f0a00c0

    const v2, 0x7f0200e0

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mIsWimaxEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mWimaxConnected:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1017
    const v0, 0x7f0200e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1018
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1147
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_13

    .line 1148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_e

    .line 1149
    :cond_0
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    .line 1176
    :cond_1
    :goto_1
    return-void

    .line 1021
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 1131
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_d

    .line 1132
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1133
    const v0, 0x7f0200e8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1134
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1023
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_3

    .line 1024
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1025
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1033
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_4

    .line 1034
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1035
    const v0, 0x7f0200e7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1043
    :cond_4
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1044
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1045
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1051
    :pswitch_4
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1053
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_6

    .line 1054
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1055
    const v0, 0x7f0200e9

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1059
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1060
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1065
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1066
    const v0, 0x7f0200e1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1074
    :pswitch_5
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1076
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_9

    .line 1077
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1078
    const v0, 0x7f0200ea

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1082
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1083
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1088
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1089
    const v0, 0x7f0200ea

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1096
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_b

    .line 1097
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1098
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1099
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1106
    :cond_b
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_c

    .line 1107
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1108
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1119
    :cond_c
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1120
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1125
    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1126
    const v0, 0x7f0200e2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1137
    :cond_d
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataIconList:[I

    .line 1138
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1150
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getCdmaEriIcon()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 1154
    :cond_f
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 1156
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Landroid/plugin/dsds/PlugInDsdsService;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v0, v1}, Landroid/plugin/dsds/PlugInDsdsService;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    if-eqz v0, :cond_11

    .line 1162
    const v0, 0x7f0200ee

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 1164
    :cond_11
    const v0, 0x7f0200ed

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 1167
    :cond_12
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mRoamingIconId:I

    goto/16 :goto_1

    .line 1170
    :cond_13
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdmaEri()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Landroid/plugin/dsds/PlugInDsdsService;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v0, v1}, Landroid/plugin/dsds/PlugInDsdsService;->isNetworkRoaming(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1171
    :cond_15
    const v0, 0x7f0200ed

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataTypeIconId:I

    goto/16 :goto_1

    .line 1021
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 493
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "stateExtra":Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 497
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "absentReason":Ljava/lang/String;
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_1

    .line 500
    const-string v4, "PERM_DISABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 502
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 503
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState: PERM_DISABLE simslot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v0    # "absentReason":Ljava/lang/String;
    :goto_0
    return-void

    .line 505
    .restart local v0    # "absentReason":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 506
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState: ABSENT simslot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 511
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState: ABSENT simslot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 514
    .end local v0    # "absentReason":Ljava/lang/String;
    :cond_2
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 515
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 516
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState: READY simslot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 518
    :cond_3
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 519
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, "lockedReason":Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 521
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 522
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState:PIN_REQUIRED simslot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 524
    :cond_4
    const-string v4, "PUK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 525
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 526
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState:PUK_REQUIRED simslot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 536
    :cond_5
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/IccCard$State;

    const-string v5, "NETWORK_LOCKED"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccCard$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_1
    :try_start_1
    const-class v4, Lcom/android/internal/telephony/IccCard$State;

    const-string v5, "PERSO_LOCKED"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccCard$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 547
    :goto_2
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState: NETWORK_LOCKED simslot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 537
    :catch_0
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState: NETWORK_LOCKED is not a constant in State simslot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 542
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 543
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState: PERSO_LOCKED is not a constant in State simslot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 551
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "lockedReason":Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 552
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState: UNKNOWN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simslot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private final updateTelephonySignalStrength()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const v9, 0x7f0202a6

    const v8, 0x7f02013e

    const/4 v7, 0x0

    .line 600
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimActive(I)I
    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkController_dual;I)I

    move-result v3

    .line 601
    .local v3, "simActive":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getNumberOfSim()I

    move-result v2

    .line 602
    .local v2, "numberOfSim":I
    if-nez v3, :cond_1

    if-ne v2, v11, :cond_1

    .line 603
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTelephonySignalStrength() : mSimIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ICON_SIGNAL invisible"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    .line 605
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    .line 606
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    .line 724
    :goto_1
    return-void

    .line 600
    .end local v2    # "numberOfSim":I
    .end local v3    # "simActive":I
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimActive(I)I
    invoke-static {v4, v10}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkController_dual;I)I

    move-result v3

    goto :goto_0

    .line 610
    .restart local v2    # "numberOfSim":I
    .restart local v3    # "simActive":I
    :cond_1
    if-ge v2, v11, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    if-eqz v4, :cond_2

    .line 611
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTelephonySignalStrength() : SIM for updating siginal is different mSimIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    .line 613
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    goto :goto_1

    .line 617
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataServiceState:I

    if-eqz v4, :cond_5

    .line 619
    const-string v4, "NetworkController_dual"

    const-string v5, " No service"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_4

    .line 622
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v4, :cond_3

    .line 623
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    .line 624
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    .line 634
    :goto_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    goto :goto_1

    .line 626
    :cond_3
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    .line 627
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    goto :goto_2

    .line 631
    :cond_4
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    .line 632
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    goto :goto_2

    .line 636
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v4, :cond_9

    .line 638
    :cond_6
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Null object, mSignalStrength= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mServiceState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v4, "NetworkController_dual"

    const-string v5, "updateTelephonySignalStrength: mSignalStrength == null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_8

    .line 645
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v4, :cond_7

    .line 646
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    .line 647
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    .line 662
    :goto_3
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    goto/16 :goto_1

    .line 649
    :cond_7
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    .line 650
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    .line 651
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_3

    .line 656
    :cond_8
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    .line 657
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    .line 658
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_3

    .line 666
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAlwaysShowCdmaRssi:Z

    if-eqz v4, :cond_b

    .line 667
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, "iconLevel":I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastSignalLevel:I

    .line 668
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAlwaysShowCdmaRssi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " set to cdmaLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " instead of level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_4
    if-ne v2, v11, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getCurrentSimSlot()I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    if-ne v4, v5, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimActive(I)I
    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkController_dual;I)I

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->getSimActive(I)I
    invoke-static {v4, v10}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkController_dual;I)I

    move-result v4

    if-eqz v4, :cond_c

    .line 676
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    .line 682
    :goto_5
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_e

    .line 683
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v4, :cond_d

    .line 684
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTelephonySignalStrength: iconLevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is too high"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget v0, v4, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastSignalLevel:I

    .line 692
    :cond_a
    :goto_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getPhoneSignalIconList(I)[I

    move-result-object v1

    .line 710
    .local v1, "iconList":[I
    :goto_7
    aget v4, v1, v0

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mPhoneSignalIconId:I

    .line 712
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_12

    .line 713
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 715
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v4

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->getDataSignalIconId(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    goto/16 :goto_1

    .line 672
    .end local v0    # "iconLevel":I
    .end local v1    # "iconList":[I
    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0    # "iconLevel":I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastSignalLevel:I

    goto/16 :goto_4

    .line 678
    :cond_c
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimFocus:Z

    goto :goto_5

    .line 687
    :cond_d
    if-gez v0, :cond_a

    .line 688
    const-string v4, "NetworkController_dual"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTelephonySignalStrength: iconLevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is too small"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastSignalLevel:I

    goto :goto_6

    .line 694
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdma()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 695
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->isCdmaEri()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 696
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v5

    aget-object v1, v4, v5

    .restart local v1    # "iconList":[I
    goto :goto_7

    .line 698
    .end local v1    # "iconList":[I
    :cond_f
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v5

    aget-object v1, v4, v5

    .restart local v1    # "iconList":[I
    goto :goto_7

    .line 702
    .end local v1    # "iconList":[I
    :cond_10
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)Landroid/plugin/dsds/PlugInDsdsService;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v4, v5}, Landroid/plugin/dsds/PlugInDsdsService;->isNetworkRoaming(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 703
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v5

    aget-object v1, v4, v5

    .restart local v1    # "iconList":[I
    goto/16 :goto_7

    .line 705
    .end local v1    # "iconList":[I
    :cond_11
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v5

    aget-object v1, v4, v5

    .restart local v1    # "iconList":[I
    goto/16 :goto_7

    .line 717
    :cond_12
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 719
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController_dual;

    # getter for: Lcom/android/systemui/statusbar/policy/NetworkController_dual;->mInetCondition:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController_dual;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController_dual;)I

    move-result v5

    aget-object v4, v4, v5

    aget v4, v4, v0

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataSignalIconId:I

    goto/16 :goto_1
.end method


# virtual methods
.method isCdmaEri()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1318
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->simHasService()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mDataServiceState:I

    if-nez v3, :cond_2

    .line 1320
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 1321
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 1322
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 1323
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 1329
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1487
    const-string v2, "NetworkController_dual"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mSimIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1490
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1492
    .local v0, "something":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1493
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v5, :cond_0

    if-ne p3, v5, :cond_0

    .line 1494
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1495
    const/4 p1, 0x0

    .line 1500
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1501
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    const/4 v0, 0x1

    .line 1504
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1505
    if-eqz v0, :cond_2

    .line 1506
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    const/4 v0, 0x1

    .line 1511
    :cond_3
    if-eqz v0, :cond_4

    .line 1512
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    .line 1516
    :goto_0
    return-void

    .line 1514
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "showCB"    # Z
    .param p6, "CBmsg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1525
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1526
    .local v0, "something":Z
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mLastCB:Ljava/lang/String;

    .line 1528
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1529
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v4, :cond_0

    if-ne p3, v4, :cond_0

    .line 1530
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1531
    const/4 p1, 0x0

    .line 1535
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1536
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    const/4 v0, 0x1

    .line 1539
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1540
    if-eqz v0, :cond_2

    .line 1541
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    const/4 v0, 0x1

    .line 1546
    :cond_3
    if-eqz p5, :cond_5

    if-eqz p6, :cond_5

    .line 1547
    if-eqz v0, :cond_4

    .line 1548
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    :cond_4
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    const/4 v0, 0x1

    .line 1554
    :cond_5
    if-eqz v0, :cond_6

    .line 1555
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    .line 1559
    :goto_0
    return-void

    .line 1557
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController_dual$SimNetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method
