.class Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pDevicePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "action":Ljava/lang/String;
    const-string v6, "WifiP2pDevicePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v6, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 209
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 210
    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v12, :cond_3

    .line 213
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z
    invoke-static {v6, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$102(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    .line 215
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 216
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 217
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 218
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 219
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    .line 221
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pManager;->isInactiveState()Z

    move-result v6

    if-nez v6, :cond_1

    .line 222
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 224
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v10, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    goto :goto_0

    .line 226
    :cond_2
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v6, v12}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    .line 227
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 229
    :cond_3
    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_5

    .line 232
    const-string v6, "WifiP2pDevicePicker"

    const-string v7, "WIFI_P2P_STATE_DISABLED by certain reason"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v9, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 234
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$900()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 235
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$900()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 236
    :cond_4
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    .line 238
    :cond_5
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6, v11}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1002(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 239
    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mInvited:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1102(Z)Z

    goto :goto_0

    .line 242
    :cond_6
    const-string v6, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 243
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 244
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v6, "wifiP2pGroupInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pGroup;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v7, v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1002(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 245
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 247
    :cond_7
    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 248
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 249
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$1;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 254
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v6, "wifiP2pInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pInfo;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    invoke-static {v7, v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1202(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 257
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 258
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_b

    .line 259
    const-string v6, "WifiP2pDevicePicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v8}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 261
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    :cond_8
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-ne v6, v10, :cond_0

    .line 267
    const-string v6, "WifiP2pDevicePicker"

    const-string v7, "AUTO GO is created for multiple connect"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v3, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v3}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    .line 270
    .local v3, "mSelectedConfig":Landroid/net/wifi/p2p/WifiP2pConfigList;
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 271
    .local v5, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v6, v5}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto :goto_1

    .line 273
    .end local v5    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_9
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 274
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v7

    new-instance v8, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$2;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;)V

    invoke-virtual {v6, v7, v3, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 285
    :cond_a
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z
    invoke-static {v6, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1302(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    .line 287
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 288
    .local v2, "in":Landroid/content/Intent;
    const-string v6, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1500(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 289
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 291
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    goto/16 :goto_0

    .line 295
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "in":Landroid/content/Intent;
    .end local v3    # "mSelectedConfig":Landroid/net/wifi/p2p/WifiP2pConfigList;
    :cond_b
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 296
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 297
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v6, v11}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1702(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 300
    :cond_c
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 301
    const-string v6, "WifiP2pDevicePicker"

    const-string v7, "disconnected"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v6, v11}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1002(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 304
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$1900(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 305
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const/4 v7, 0x5

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V
    invoke-static {v6, v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;I)V

    .line 308
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_e

    .line 309
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 310
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v10, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    .line 313
    :cond_e
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 314
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 315
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v7}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 316
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings/ProgressCategory;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 317
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    .line 319
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z
    invoke-static {v6, v10}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$102(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Z)Z

    .line 321
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 322
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V
    invoke-static {v6, v10, v9}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$700(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V

    goto/16 :goto_0

    .line 326
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_f
    const-string v6, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 327
    iget-object v7, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    const-string v6, "wifiP2pDevice"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v7, v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$2002(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 329
    iget-object v6, p0, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V
    invoke-static {v6}, Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pDevicePicker;)V

    goto/16 :goto_0
.end method
