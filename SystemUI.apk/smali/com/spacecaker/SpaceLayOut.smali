.class public Lcom/spacecaker/SpaceLayOut;
.super Landroid/widget/LinearLayout;
.source "SpaceLayOut.java"


# instance fields
.field private LAYOUT:Z

.field private UPDATE:Ljava/lang/String;

.field draw:Landroid/graphics/drawable/Drawable;

.field iv:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdating:Z

.field res:Landroid/content/res/Resources;

.field t:Landroid/widget/TextView;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-boolean v0, p0, Lcom/spacecaker/SpaceLayOut;->LAYOUT:Z

    .line 14
    iput-boolean v0, p0, Lcom/spacecaker/SpaceLayOut;->mUpdating:Z

    .line 15
    const-string v0, "com.androidminang.UPDATE"

    iput-object v0, p0, Lcom/spacecaker/SpaceLayOut;->UPDATE:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/spacecaker/SpaceLayOut$1;

    invoke-direct {v0, p0}, Lcom/spacecaker/SpaceLayOut$1;-><init>(Lcom/spacecaker/SpaceLayOut;)V

    iput-object v0, p0, Lcom/spacecaker/SpaceLayOut;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    iput-object p1, p0, Lcom/spacecaker/SpaceLayOut;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {p0}, Lcom/spacecaker/SpaceLayOut;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/spacecaker/SpaceLayOut;->res:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$0(Lcom/spacecaker/SpaceLayOut;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/spacecaker/SpaceLayOut;->UPDATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/spacecaker/SpaceLayOut;Z)V
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/spacecaker/SpaceLayOut;->LAYOUT:Z

    return-void
.end method

.method static synthetic access$2(Lcom/spacecaker/SpaceLayOut;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/spacecaker/SpaceLayOut;->LAYOUT:Z

    return v0
.end method

.method static synthetic access$3(Lcom/spacecaker/SpaceLayOut;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/spacecaker/SpaceLayOut;->update(Z)V

    return-void
.end method

.method private hide(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    return-void
.end method

.method private show(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void
.end method

.method private update(Z)V
    .locals 3
    .param p1, "bool"    # Z

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/spacecaker/SpaceLayOut;->getBatteryState()V

    .line 256
    invoke-virtual {p0}, Lcom/spacecaker/SpaceLayOut;->getWifiInfo()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/spacecaker/SpaceLayOut;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "v1":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/spacecaker/SpaceLayOut;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "v2":Landroid/view/View;
    if-eqz p1, :cond_0

    .line 49
    invoke-direct {p0, v0}, Lcom/spacecaker/SpaceLayOut;->show(Landroid/view/View;)V

    .line 50
    invoke-direct {p0, v1}, Lcom/spacecaker/SpaceLayOut;->hide(Landroid/view/View;)V

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-direct {p0, v1}, Lcom/spacecaker/SpaceLayOut;->show(Landroid/view/View;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/spacecaker/SpaceLayOut;->hide(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public getBatteryState()V
    .locals 13

    .prologue
    .line 31
    const v10, 0x7f0d0145

    invoke-virtual {p0, v10}, Lcom/spacecaker/SpaceLayOut;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/spacecaker/SpaceLayOut;->t:Landroid/widget/TextView;

    .line 32
    const v10, 0x7f0d0147

    invoke-virtual {p0, v10}, Lcom/spacecaker/SpaceLayOut;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/spacecaker/SpaceLayOut;->iv:Landroid/widget/ImageView;

    .line 33
    new-instance v3, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 34
    .local v3, "ifilter":Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/spacecaker/SpaceLayOut;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 35
    .local v1, "batteryStatus":Landroid/content/Intent;
    const-string v10, "level"

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 36
    .local v5, "level":I
    const-string v10, "scale"

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 37
    .local v7, "scale":I
    const-string v10, "status"

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 38
    .local v8, "status":I
    const/4 v10, 0x2

    if-eq v8, v10, :cond_0

    const/4 v10, 0x5

    if-eq v8, v10, :cond_0

    const/4 v4, 0x0

    .line 39
    .local v4, "isCharging":Z
    :goto_0
    const-string v10, "plugged"

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 40
    .local v2, "chargePlug":I
    const/4 v10, 0x2

    if-ne v2, v10, :cond_1

    const/4 v9, 0x1

    .line 41
    .local v9, "usbCharge":Z
    :goto_1
    int-to-float v10, v5

    int-to-float v11, v7

    div-float v6, v10, v11

    .line 42
    .local v6, "net_battery":F
    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 43
    .local v0, "batteryPct":I
    if-eqz v4, :cond_3

    .line 44
    if-eqz v9, :cond_2

    .line 45
    iget-object v10, p0, Lcom/spacecaker/SpaceLayOut;->t:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (USB)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_2
    :try_start_0
    iget-object v10, p0, Lcom/spacecaker/SpaceLayOut;->res:Landroid/content/res/Resources;

    iget-object v11, p0, Lcom/spacecaker/SpaceLayOut;->res:Landroid/content/res/Resources;

    const v12, 0x7f020351

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, p0, Lcom/spacecaker/SpaceLayOut;->draw:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_3
    iget-object v10, p0, Lcom/spacecaker/SpaceLayOut;->draw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 56
    iget-object v10, p0, Lcom/spacecaker/SpaceLayOut;->iv:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/spacecaker/SpaceLayOut;->draw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void

    .line 38
    .end local v0    # "batteryPct":I
    .end local v2    # "chargePlug":I
    .end local v4    # "isCharging":Z
    .end local v6    # "net_battery":F
    .end local v9    # "usbCharge":Z
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 40
    .restart local v2    # "chargePlug":I
    .restart local v4    # "isCharging":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 47
    .restart local v0    # "batteryPct":I
    .restart local v6    # "net_battery":F
    .restart local v9    # "usbCharge":Z
    :cond_2
    iget-object v10, p0, Lcom/spacecaker/SpaceLayOut;->t:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (AC)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 49
    :cond_3
    iget-object v10, p0, Lcom/spacecaker/SpaceLayOut;->t:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 53
    :catch_0
    move-exception v10

    goto :goto_3
.end method

.method public getWifiInfo()V
    .locals 7

    .prologue
    .line 59
    const v4, 0x7f0d0146

    invoke-virtual {p0, v4}, Lcom/spacecaker/SpaceLayOut;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/spacecaker/SpaceLayOut;->t:Landroid/widget/TextView;

    .line 60
    const v4, 0x7f0d0148

    invoke-virtual {p0, v4}, Lcom/spacecaker/SpaceLayOut;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/spacecaker/SpaceLayOut;->iv:Landroid/widget/ImageView;

    .line 61
    iget-object v4, p0, Lcom/spacecaker/SpaceLayOut;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 62
    .local v3, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 63
    .local v2, "wifiState":I
    packed-switch v2, :pswitch_data_0

    .line 86
    iget-object v4, p0, Lcom/spacecaker/SpaceLayOut;->t:Landroid/widget/TextView;

    const-string v5, "Error"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v4, p0, Lcom/spacecaker/SpaceLayOut;->t:Landroid/widget/TextView;

    const-string v5, "Wi-Fi"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :try_start_0
    iget-object v4, p0, Lcom/spacecaker/SpaceLayOut;->res:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/spacecaker/SpaceLayOut;->res:Landroid/content/res/Resources;

    const v6, 0x7f020358

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/spacecaker/SpaceLayOut;->draw:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :goto_1
    iget-object v4, p0, Lcom/spacecaker/SpaceLayOut;->iv:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/spacecaker/SpaceLayOut;->draw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 75
    :pswitch_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 76
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v4, p0, Lcom/spacecaker/SpaceLayOut;->t:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 79
    .local v0, "signalLevel":I
    :try_start_1
    iget-object v4, p0, Lcom/spacecaker/SpaceLayOut;->res:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/spacecaker/SpaceLayOut;->res:Landroid/content/res/Resources;

    const v6, 0x7f020352

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/spacecaker/SpaceLayOut;->draw:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    :goto_2
    iget-object v4, p0, Lcom/spacecaker/SpaceLayOut;->draw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 83
    iget-object v4, p0, Lcom/spacecaker/SpaceLayOut;->iv:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/spacecaker/SpaceLayOut;->draw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 80
    :catch_0
    move-exception v4

    goto :goto_2

    .line 70
    .end local v0    # "signalLevel":I
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/spacecaker/SpaceLayOut;->setUpdates(Z)V

    .line 37
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/spacecaker/SpaceLayOut;->setUpdates(Z)V

    .line 43
    return-void
.end method

.method setUpdates(Z)V
    .locals 4
    .param p1, "update"    # Z

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-boolean v1, p0, Lcom/spacecaker/SpaceLayOut;->mUpdating:Z

    if-eq p1, v1, :cond_0

    .line 67
    iput-boolean p1, p0, Lcom/spacecaker/SpaceLayOut;->mUpdating:Z

    .line 68
    if-eqz p1, :cond_1

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/spacecaker/SpaceLayOut;->UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/spacecaker/SpaceLayOut;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/spacecaker/SpaceLayOut;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 73
    iget-boolean v1, p0, Lcom/spacecaker/SpaceLayOut;->LAYOUT:Z

    invoke-direct {p0, v1}, Lcom/spacecaker/SpaceLayOut;->update(Z)V

    .line 78
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/spacecaker/SpaceLayOut;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/spacecaker/SpaceLayOut;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
