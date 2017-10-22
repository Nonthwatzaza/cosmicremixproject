.class public Lcom/android/settings/SimCardManagerService;
.super Landroid/app/Service;
.source "SimCardManagerService.java"


# static fields
.field private static mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

.field private static mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

.field private static mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

.field private static mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;


# instance fields
.field private final MAX_SUBSCRIPTIONS:I

.field mBinder:Lcom/android/settings/ISimCardManagerService$Stub;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhone1:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/SimCardManagerService;->MAX_SUBSCRIPTIONS:I

    .line 34
    iput-object v1, p0, Lcom/android/settings/SimCardManagerService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 35
    iput-object v1, p0, Lcom/android/settings/SimCardManagerService;->mPhone1:Lcom/android/internal/telephony/Phone;

    .line 58
    new-instance v0, Lcom/android/settings/SimCardManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SimCardManagerService$1;-><init>(Lcom/android/settings/SimCardManagerService;)V

    iput-object v0, p0, Lcom/android/settings/SimCardManagerService;->mBinder:Lcom/android/settings/ISimCardManagerService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SimCardManagerService;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SimCardManagerService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/SimCardManagerService;->mPhone1:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SimCardManagerService;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SimCardManagerService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/SimCardManagerService;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/internal/telephony/msim/SubscriptionManager;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/settings/SimCardManagerService;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/msim/SubscriptionManager;)Lcom/android/internal/telephony/msim/SubscriptionManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/msim/SubscriptionManager;

    .prologue
    .line 25
    sput-object p0, Lcom/android/settings/SimCardManagerService;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    return-object p0
.end method

.method static synthetic access$300()Lcom/android/internal/telephony/msim/SubscriptionData;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/settings/SimCardManagerService;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/msim/SubscriptionData;)Lcom/android/internal/telephony/msim/SubscriptionData;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/msim/SubscriptionData;

    .prologue
    .line 25
    sput-object p0, Lcom/android/settings/SimCardManagerService;->mUserSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    return-object p0
.end method

.method static synthetic access$400()Lcom/android/internal/telephony/msim/SubscriptionData;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/settings/SimCardManagerService;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/msim/SubscriptionData;)Lcom/android/internal/telephony/msim/SubscriptionData;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/msim/SubscriptionData;

    .prologue
    .line 25
    sput-object p0, Lcom/android/settings/SimCardManagerService;->mCurrentSelSub:Lcom/android/internal/telephony/msim/SubscriptionData;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/SimCardManagerService;->mBinder:Lcom/android/settings/ISimCardManagerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    const-string v0, "SimCardManagerService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "DSDS"

    invoke-static {v0}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    sput-object v0, Lcom/android/settings/SimCardManagerService;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    .line 44
    sget-object v0, Lcom/android/settings/SimCardManagerService;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/plugin/dsds/PlugInDsdsService;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimCardManagerService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 45
    sget-object v0, Lcom/android/settings/SimCardManagerService;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/plugin/dsds/PlugInDsdsService;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimCardManagerService;->mPhone1:Lcom/android/internal/telephony/Phone;

    .line 46
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "SimCardManagerService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 52
    return-void
.end method
