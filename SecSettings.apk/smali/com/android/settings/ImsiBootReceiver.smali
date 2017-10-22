.class public Lcom/android/settings/ImsiBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsiBootReceiver.java"


# static fields
.field public static imsiSim1:Ljava/lang/String;

.field public static imsiSim2:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "nothing1"

    sput-object v0, Lcom/android/settings/ImsiBootReceiver;->imsiSim1:Ljava/lang/String;

    .line 33
    const-string v0, "nothing2"

    sput-object v0, Lcom/android/settings/ImsiBootReceiver;->imsiSim2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/ImsiBootReceiver;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/ImsiBootReceiver;->startSetOjkey()V

    .line 102
    return-void
.end method

.method public startSetOjkey()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OJEKEY_SET_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "ojkey":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/ImsiBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    return-void
.end method
