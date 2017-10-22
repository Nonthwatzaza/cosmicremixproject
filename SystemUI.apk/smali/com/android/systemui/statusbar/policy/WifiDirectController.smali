.class public Lcom/android/systemui/statusbar/policy/WifiDirectController;
.super Landroid/content/BroadcastReceiver;
.source "WifiDirectController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.WifiDirectController"


# instance fields
.field private mConnectedDevicesCnt:I

.field private mContentDescriptionId:I

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mIconId:I

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mconnected:Z

.field private state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mIconViews:Ljava/util/ArrayList;

    .line 38
    const v1, 0x7f020152

    iput v1, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mIconId:I

    .line 39
    iput v2, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mContentDescriptionId:I

    .line 40
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mEnabled:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mconnected:Z

    .line 43
    iput v2, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mConnectedDevicesCnt:I

    .line 44
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->state:I

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiDirectController;->refreshViews()V

    .line 54
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    const-string v2, "wifi_p2p_state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->state:I

    .line 67
    iget v2, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->state:I

    packed-switch v2, :pswitch_data_0

    .line 75
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mEnabled:Z

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiDirectController;->refreshViews()V

    .line 88
    return-void

    .line 69
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mEnabled:Z

    goto :goto_0

    .line 72
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mEnabled:Z

    goto :goto_0

    .line 78
    :cond_1
    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 80
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    .line 81
    const-string v2, "connectedDevCount"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mConnectedDevicesCnt:I

    goto :goto_0

    .line 83
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    const-string v2, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    const-string v2, "connectedDevCount"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mConnectedDevicesCnt:I

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshViews()V
    .locals 4

    .prologue
    .line 91
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 92
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 93
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 94
    .local v2, "v":Landroid/widget/ImageView;
    iget v3, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mIconId:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mEnabled:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mConnectedDevicesCnt:I

    if-lez v3, :cond_1

    .line 97
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mEnabled:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/WifiDirectController;->mConnectedDevicesCnt:I

    if-gtz v3, :cond_0

    .line 100
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 103
    .end local v2    # "v":Landroid/widget/ImageView;
    :cond_3
    return-void
.end method
