.class final Lcom/android/settings/guide/BtSettingsGuider;
.super Lcom/android/settings/guide/GuiderBase;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/android/settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/BtSettingsGuider$7;,
        Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;,
        Lcom/android/settings/guide/BtSettingsGuider$GuideStates;
    }
.end annotation


# instance fields
.field private mBTEnabled:Z

.field private mBTReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mInitialBondedCount:I

.field private mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field private mShowedLayout:I

.field private onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 115
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 118
    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 120
    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 121
    iput-boolean v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 123
    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 531
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$6;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/BtSettingsGuider$6;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    invoke-static {v1, p1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 133
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 135
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->sFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/guide/BtSettingsGuider;)Lcom/android/settings/guide/BtSettingsGuider$GuideStates;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/guide/BtSettingsGuider;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/guide/BtSettingsGuider;)Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/guide/BtSettingsGuider;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/guide/BtSettingsGuider;Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/guide/BtSettingsGuider;
    .param p1, "x1"    # Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/BtSettingsGuider;->onReceive(Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V

    return-void
.end method

.method private handleDialogChange()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 323
    :cond_0
    return-void
.end method

.method private initHelpDialogContent(I)V
    .locals 3
    .param p1, "resID"    # I

    .prologue
    .line 429
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/samsung/helphub/dialog/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, "bubbleView":Landroid/view/View;
    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 434
    .local v1, "summary":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 437
    :cond_0
    return-void
.end method

.method private initHelpDialogContent(II)V
    .locals 5
    .param p1, "resID"    # I
    .param p2, "layout"    # I

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 404
    .local v1, "bubbleView":Landroid/view/View;
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 407
    .local v2, "summary":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 409
    iget-object v3, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {v3, v1}, Lcom/samsung/helphub/dialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 411
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 414
    .local v0, "btnClose":Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 415
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 416
    new-instance v3, Lcom/android/settings/guide/BtSettingsGuider$3;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/BtSettingsGuider$3;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    :cond_0
    return-void
.end method

.method private invalidateHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 6
    .param p1, "type"    # Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 348
    const/4 v1, -0x1

    .line 350
    .local v1, "resID":I
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    if-nez v2, :cond_0

    .line 399
    :goto_0
    return-void

    .line 354
    :cond_0
    const v0, 0x7f040071

    .line 356
    .local v0, "layout":I
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 358
    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 398
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_0

    .line 360
    :pswitch_0
    const v1, 0x7f090dc5

    .line 361
    goto :goto_1

    .line 363
    :pswitch_1
    const v1, 0x7f090dc3

    .line 364
    goto :goto_1

    .line 366
    :pswitch_2
    const v1, 0x7f090dc2

    .line 367
    goto :goto_1

    .line 369
    :pswitch_3
    const v1, 0x7f090db7

    .line 370
    const v0, 0x7f04006d

    .line 374
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 378
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/guide/BtSettingsGuider$2;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/BtSettingsGuider$2;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onBluetoothStateChanged()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 601
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 609
    :cond_0
    return-void
.end method

.method private onDeviceBondStateChanged(II)V
    .locals 3
    .param p1, "bondState"    # I
    .param p2, "prevBondState"    # I

    .prologue
    const/4 v1, 0x0

    .line 618
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 620
    .local v0, "bShowDialog":Z
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 652
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .end local v0    # "bShowDialog":Z
    :cond_1
    move v0, v1

    .line 618
    goto :goto_0

    .line 622
    .restart local v0    # "bShowDialog":Z
    :pswitch_1
    if-eqz v0, :cond_2

    .line 623
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 625
    :cond_2
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_1

    .line 629
    :pswitch_2
    const/16 v2, 0xa

    if-eq p2, v2, :cond_3

    .line 631
    iget v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-lez v2, :cond_4

    .line 632
    iget v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 634
    if-nez v0, :cond_3

    .line 636
    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 643
    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_1

    .line 639
    :cond_4
    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    goto :goto_2

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onReceive(Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;Landroid/content/Intent;)V
    .locals 3
    .param p1, "action"    # Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v2, -0x80000000

    .line 551
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$BluetoothBroadcastActions:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$BluetoothBroadcastActions;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 571
    :goto_0
    return-void

    .line 553
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/guide/BtSettingsGuider;->onBluetoothStateChanged()V

    goto :goto_0

    .line 557
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 561
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 565
    :pswitch_3
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->onDeviceBondStateChanged(II)V

    goto :goto_0

    .line 551
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 587
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    .line 589
    :cond_1
    return-void
.end method

.method private setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 5
    .param p1, "state"    # Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 751
    .local v1, "activity":Landroid/app/Activity;
    sget-object v3, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 755
    :pswitch_0
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/app/ListActivity;

    if-eqz v3, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/app/ListActivity;

    invoke-virtual {v3}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0

    .line 761
    :pswitch_1
    if-eqz v1, :cond_0

    .line 762
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 764
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 767
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 768
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 751
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 3
    .param p1, "resID"    # I
    .param p2, "layout"    # I
    .param p3, "type"    # Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 287
    .local v0, "created":Z
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    if-nez v1, :cond_0

    .line 288
    new-instance v1, Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/helphub/dialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    .line 289
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/helphub/dialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 290
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/helphub/dialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 291
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 292
    const/4 v0, 0x1

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne p3, v1, :cond_2

    sget-object v1, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/samsung/helphub/dialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;)V

    .line 299
    invoke-direct {p0}, Lcom/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    .line 301
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    if-eq v1, p2, :cond_3

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V

    .line 307
    :goto_1
    if-eqz v0, :cond_1

    .line 308
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/samsung/helphub/dialog/TwHelpDialog;->show()V

    .line 311
    :cond_1
    iput-object p3, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 312
    iput p2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 313
    return-void

    .line 295
    :cond_2
    sget-object v1, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    goto :goto_0

    .line 304
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(I)V

    goto :goto_1
.end method


# virtual methods
.method protected changeHelpDialogState(Z)V
    .locals 3
    .param p1, "isScanning"    # Z

    .prologue
    .line 207
    iget-boolean v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    if-nez v1, :cond_0

    .line 208
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 228
    :goto_0
    return-void

    .line 210
    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    :cond_1
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 214
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v0

    .line 220
    .local v0, "cachedDevices":I
    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    if-le v0, v1, :cond_4

    .line 221
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 223
    :cond_4
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_0
.end method

.method public dismissHelpDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/helphub/dialog/TwHelpDialog;->dismiss()V

    .line 336
    iput-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    .line 338
    invoke-direct {p0}, Lcom/android/settings/guide/BtSettingsGuider;->handleDialogChange()V

    .line 340
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 341
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedLayout:I

    .line 342
    iput-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 344
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->invalidateHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 330
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    .line 145
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->finish()V

    .line 197
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x6f

    const/16 v5, 0x42

    .line 661
    const/4 v1, 0x0

    .line 662
    .local v1, "isHandled":Z
    const/4 v2, 0x1

    .line 666
    .local v2, "passToView":Z
    sget-object v3, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    iget-object v4, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 726
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 727
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 729
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 730
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 731
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 738
    .end local v0    # "focus":Landroid/view/View;
    :cond_1
    :goto_1
    return v1

    .line 669
    :pswitch_0
    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_2

    const/16 v3, 0x17

    if-eq p1, v3, :cond_2

    const/16 v3, 0x14

    if-eq p1, v3, :cond_2

    const/16 v3, 0x15

    if-eq p1, v3, :cond_2

    const/16 v3, 0x16

    if-eq p1, v3, :cond_2

    const/16 v3, 0x13

    if-eq p1, v3, :cond_2

    const/16 v3, 0x75

    if-eq p1, v3, :cond_2

    const/16 v3, 0x76

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3d

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5c

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7b

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7a

    if-eq p1, v3, :cond_2

    .line 684
    const/4 v1, 0x1

    goto :goto_0

    .line 685
    :cond_2
    if-ne p1, v5, :cond_0

    .line 686
    const/4 v2, 0x0

    .line 687
    const/4 v1, 0x1

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/samsung/helphub/dialog/TwHelpDialog;)V

    goto :goto_0

    .line 695
    :pswitch_1
    if-ne p1, v6, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 697
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    .line 698
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->showCompleteDialog()V

    .line 699
    const/4 v2, 0x0

    .line 700
    const/4 v1, 0x1

    goto :goto_0

    .line 702
    :cond_3
    if-ne p1, v5, :cond_0

    .line 703
    const/4 v2, 0x0

    .line 704
    const/4 v1, 0x1

    .line 706
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/samsung/helphub/dialog/TwHelpDialog;)V

    goto :goto_0

    .line 713
    :pswitch_2
    if-ne p1, v5, :cond_0

    .line 714
    const/4 v2, 0x0

    .line 715
    const/4 v1, 0x1

    .line 717
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/samsung/helphub/dialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 733
    .restart local v0    # "focus":Landroid/view/View;
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 666
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 657
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 502
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 507
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/guide/BtSettingsGuider$5;

    invoke-direct {v1, p0}, Lcom/android/settings/guide/BtSettingsGuider$5;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 518
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBTEnabled:Z

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mInitialBondedCount:I

    iget-object v2, p0, Lcom/android/settings/guide/BtSettingsGuider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 162
    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 170
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 171
    return-void

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-eq v1, v2, :cond_1

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/settings/guide/BtSettingsGuider;->changeHelpDialogState(Z)V

    goto :goto_0
.end method

.method public setEnabler(Lcom/android/settings/guide/GuideFragment$WrappedEnabler;)V
    .locals 0
    .param p1, "enabler"    # Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    .prologue
    .line 523
    return-void
.end method

.method protected setGuidedActionBarClickable(Z)V
    .locals 4
    .param p1, "clickable"    # Z

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 448
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 450
    .local v0, "ab":Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 454
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 455
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 456
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 457
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 461
    :cond_0
    if-eqz p1, :cond_1

    .line 462
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 466
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void

    .line 448
    .end local v0    # "ab":Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showCompleteDialog()V
    .locals 5

    .prologue
    .line 470
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    .local v0, "builderstart":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 473
    .local v1, "res":Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 475
    const v2, 0x7f090dbf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090dbe

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0902e3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/android/settings/guide/BtSettingsGuider$4;

    invoke-direct {v4, p0}, Lcom/android/settings/guide/BtSettingsGuider$4;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 493
    :cond_0
    return-void

    .line 471
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public showHelpDialog(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V
    .locals 5
    .param p1, "type"    # Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v4, 0x7f040071

    .line 231
    invoke-direct {p0, p1}, Lcom/android/settings/guide/BtSettingsGuider;->setFocus(Lcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 239
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$7;->$SwitchMap$com$android$settings$guide$BtSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 277
    :cond_1
    :goto_1
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_3

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/settings/guide/BtSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 241
    :pswitch_0
    const v0, 0x7f090dc5

    invoke-direct {p0, v0, v4, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 244
    :pswitch_1
    const v0, 0x7f090dc3

    invoke-direct {p0, v0, v4, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 248
    :pswitch_2
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/BtSettingsGuider$1;-><init>(Lcom/android/settings/guide/BtSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/BtSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    .line 253
    const v0, 0x7f090dc2

    invoke-direct {p0, v0, v4, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    goto :goto_1

    .line 257
    :pswitch_3
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 258
    const v0, 0x7f090db7

    const v3, 0x7f04006d

    invoke-direct {p0, v0, v3, p1}, Lcom/android/settings/guide/BtSettingsGuider;->showHelpDialog(IILcom/android/settings/guide/BtSettingsGuider$GuideStates;)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/BtSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/samsung/helphub/dialog/TwHelpDialog;Landroid/app/Activity;)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 257
    goto :goto_3

    :cond_3
    move v1, v2

    .line 277
    goto :goto_2

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
