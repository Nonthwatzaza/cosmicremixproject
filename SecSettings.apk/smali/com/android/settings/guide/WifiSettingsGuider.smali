.class final Lcom/android/settings/guide/WifiSettingsGuider;
.super Lcom/android/settings/guide/GuiderBase;
.source "WifiSettingsGuider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/android/settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/WifiSettingsGuider$7;,
        Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    }
.end annotation


# instance fields
.field private mClosed:Z

.field private mConnecting:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mEmptyScanResultAttempts:I

.field private mEnableScanMenuItem:Z

.field private mFirstStart:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mSecurityDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private final mWiFiIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 74
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 75
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 76
    iput-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 79
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 80
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 81
    iput v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 83
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 84
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 92
    iput-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 97
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 107
    invoke-static {v1, p1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 109
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$1;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    .line 118
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 125
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/guide/WifiSettingsGuider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/guide/WifiSettingsGuider;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/guide/WifiSettingsGuider;)Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/guide/WifiSettingsGuider;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/guide/WifiSettingsGuider;)Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/guide/WifiSettingsGuider;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method private initHelpDialogContent(II)V
    .locals 5
    .param p1, "resID"    # I
    .param p2, "layout"    # I

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 462
    .local v1, "bubbleView":Landroid/view/View;
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 464
    .local v2, "summary":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 466
    iget-object v3, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {v3, v1}, Lcom/samsung/helphub/dialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 468
    const v3, 0x7f0b0002

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 471
    .local v0, "btnClose":Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 472
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 473
    new-instance v3, Lcom/android/settings/guide/WifiSettingsGuider$5;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/WifiSettingsGuider$5;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    :cond_0
    return-void
.end method

.method private invalidateHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 6
    .param p1, "type"    # Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    .line 388
    const/4 v0, -0x1

    .line 389
    .local v0, "layout":I
    const/4 v1, -0x1

    .line 391
    .local v1, "resID":I
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    if-nez v2, :cond_0

    .line 451
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 397
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 450
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_0

    .line 399
    :pswitch_0
    const v1, 0x7f090db8

    .line 400
    const v0, 0x7f040074

    .line 401
    goto :goto_1

    .line 403
    :pswitch_1
    const v1, 0x7f090dbb

    .line 404
    const v0, 0x7f040078

    .line 405
    goto :goto_1

    .line 407
    :pswitch_2
    const v1, 0x7f090dba

    .line 408
    const v0, 0x7f040078

    .line 409
    goto :goto_1

    .line 411
    :pswitch_3
    const v1, 0x7f090db9

    .line 412
    const v0, 0x7f040078

    .line 413
    goto :goto_1

    .line 415
    :pswitch_4
    const v1, 0x7f090dbd

    .line 416
    const v0, 0x7f040075

    .line 417
    goto :goto_1

    .line 419
    :pswitch_5
    const v1, 0x7f090dbc

    .line 420
    const v0, 0x7f040078

    .line 421
    goto :goto_1

    .line 423
    :pswitch_6
    const v1, 0x7f090db7

    .line 424
    const v0, 0x7f040073

    .line 428
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 432
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/guide/WifiSettingsGuider$4;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/WifiSettingsGuider$4;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private restoreSecurityDialogFocus()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 756
    iget-object v8, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlertDialog;

    move-object v6, v8

    .line 758
    .local v6, "securityDialog":Landroid/app/AlertDialog;
    :goto_0
    if-eqz v6, :cond_4

    .line 759
    const v8, 0x7f0b03a0

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 760
    .local v0, "identity":Landroid/view/View;
    const v8, 0x7f0b03ba

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 761
    .local v1, "identityContainer":Landroid/view/View;
    move-object v7, v0

    .line 762
    .local v7, "viewToFocus":Landroid/view/View;
    const/4 v4, 0x0

    .line 764
    .local v4, "isSingleEdit":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_1

    .line 767
    :cond_0
    const v8, 0x7f0b0328

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 768
    const/4 v4, 0x1

    .line 771
    :cond_1
    if-eqz v7, :cond_3

    .line 773
    if-eqz v4, :cond_2

    instance-of v8, v7, Landroid/widget/EditText;

    if-eqz v8, :cond_2

    move-object v8, v7

    .line 774
    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getImeOptions()I

    move-result v2

    .local v2, "imeOptions":I
    move-object v8, v7

    .line 776
    check-cast v8, Landroid/widget/EditText;

    or-int/lit8 v10, v2, 0x6

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 779
    .end local v2    # "imeOptions":I
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 781
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v10, "input_method"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 784
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 789
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    const/4 v8, -0x2

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 791
    .local v5, "negativeButton":Landroid/widget/Button;
    if-eqz v5, :cond_4

    .line 792
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 796
    .end local v0    # "identity":Landroid/view/View;
    .end local v1    # "identityContainer":Landroid/view/View;
    .end local v4    # "isSingleEdit":Z
    .end local v5    # "negativeButton":Landroid/widget/Button;
    .end local v7    # "viewToFocus":Landroid/view/View;
    :cond_4
    iput-object v9, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 797
    return-void

    .end local v6    # "securityDialog":Landroid/app/AlertDialog;
    :cond_5
    move-object v6, v9

    .line 756
    goto :goto_0
.end method

.method private setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 5
    .param p1, "state"    # Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 918
    .local v1, "activity":Landroid/app/Activity;
    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 920
    :pswitch_0
    if-eqz v1, :cond_0

    .line 921
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 923
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 926
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 927
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 918
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4
    .param p1, "clickable"    # Z

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 615
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 617
    .local v0, "ab":Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 620
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 621
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 622
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 623
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 626
    :cond_0
    if-eqz p1, :cond_1

    .line 627
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 631
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void

    .line 615
    .end local v0    # "ab":Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScanOptionEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 641
    iput-boolean p1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 643
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 645
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 648
    :cond_0
    return-void
.end method

.method private showHelpDialog(IILcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V
    .locals 2
    .param p1, "resID"    # I
    .param p2, "layout"    # I
    .param p3, "touchTransparency"    # Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;
    .param p4, "type"    # Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    .param p5, "needShowWrongToast"    # Z

    .prologue
    .line 376
    new-instance v0, Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/helphub/dialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    .line 377
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {v0, p3}, Lcom/samsung/helphub/dialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;)V

    .line 378
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {v0, p5}, Lcom/samsung/helphub/dialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/helphub/dialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 381
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/helphub/dialog/TwHelpDialog;->show()V

    .line 384
    iput-object p4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 385
    return-void
.end method


# virtual methods
.method protected dismissAndRestorePreviousHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 2
    .param p1, "type"    # Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_2

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 369
    :cond_2
    return-void
.end method

.method public dismissHelpDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/samsung/helphub/dialog/TwHelpDialog;->dismiss()V

    .line 298
    iput-object v3, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    .line 300
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 317
    :goto_0
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 318
    iput-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 320
    :cond_0
    return-void

    .line 302
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 303
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 306
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    .line 309
    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->restoreSecurityDialogFocus()V

    .line 310
    iput-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 300
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method public dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 3
    .param p1, "type"    # Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    .line 329
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 349
    :cond_0
    return-void

    .line 331
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 332
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 335
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleEvent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 487
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 493
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 498
    :cond_0
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 501
    .local v2, "network":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_4

    .line 505
    iget v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    if-lt v4, v7, :cond_3

    .line 506
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 571
    .end local v2    # "network":Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void

    .line 508
    .restart local v2    # "network":Landroid/net/NetworkInfo;
    :cond_3
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 511
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_5

    .line 512
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 513
    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v4, :cond_2

    .line 514
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 517
    :cond_5
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_6

    .line 518
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 519
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 520
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 522
    :cond_6
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 523
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    goto :goto_0

    .line 527
    .end local v2    # "network":Landroid/net/NetworkInfo;
    :cond_7
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 528
    const-string v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 531
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    if-eqz v4, :cond_8

    .line 532
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 533
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 534
    :cond_8
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    if-nez v4, :cond_9

    .line 535
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 536
    :cond_9
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 537
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 538
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 541
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v4, v5, :cond_2

    .line 545
    :cond_a
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 547
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 549
    :cond_b
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 554
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_c
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 558
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 563
    .local v3, "state":I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_d

    if-eq v3, v7, :cond_d

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_d

    .line 566
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 568
    :cond_d
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0
.end method

.method public isWifiDialogSecured(Landroid/app/AlertDialog;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 657
    const/4 v0, 0x0

    .line 658
    .local v0, "result":Z
    const v2, 0x7f0b0396

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 660
    .local v1, "view":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 664
    :cond_0
    :goto_0
    return v0

    .line 661
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 723
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 727
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->invalidateHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 135
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 136
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 138
    iput v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 139
    iput-boolean v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 140
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->finish()V

    .line 147
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 715
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->isWifiDialogSecured(Landroid/app/AlertDialog;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 716
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissAndRestorePreviousHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 717
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 719
    :cond_0
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x6f

    const/16 v5, 0x42

    .line 811
    const/4 v1, 0x0

    .line 812
    .local v1, "isHandled":Z
    const/4 v2, 0x1

    .line 816
    .local v2, "passToView":Z
    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 893
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 894
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 896
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 897
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 898
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 905
    .end local v0    # "focus":Landroid/view/View;
    :cond_1
    :goto_1
    return v1

    .line 819
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

    .line 834
    const/4 v1, 0x1

    goto :goto_0

    .line 835
    :cond_2
    if-ne p1, v5, :cond_0

    .line 836
    const/4 v2, 0x0

    .line 837
    const/4 v1, 0x1

    .line 839
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/samsung/helphub/dialog/TwHelpDialog;)V

    goto :goto_0

    .line 845
    :pswitch_1
    if-ne p1, v6, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 847
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 848
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 850
    :cond_3
    const/4 v2, 0x0

    .line 851
    const/4 v1, 0x1

    .line 852
    goto :goto_0

    .line 855
    :pswitch_2
    const/4 v2, 0x0

    .line 856
    const/4 v1, 0x1

    .line 857
    goto :goto_0

    .line 862
    :pswitch_3
    if-ne p1, v6, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 864
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 865
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 866
    const/4 v2, 0x0

    .line 867
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 869
    :cond_4
    if-ne p1, v5, :cond_0

    .line 870
    const/4 v2, 0x0

    .line 871
    const/4 v1, 0x1

    .line 873
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/samsung/helphub/dialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 880
    :pswitch_4
    if-ne p1, v5, :cond_0

    .line 881
    const/4 v2, 0x0

    .line 882
    const/4 v1, 0x1

    .line 884
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/samsung/helphub/dialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 900
    .restart local v0    # "focus":Landroid/view/View;
    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 816
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 735
    const/4 v0, 0x0

    .line 737
    .local v0, "retval":Z
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v1, v2, :cond_2

    .line 739
    const/16 v1, 0x6f

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 742
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 745
    :cond_1
    const/4 v0, 0x1

    .line 748
    :cond_2
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 802
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 804
    iget v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 805
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 807
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 169
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 171
    .local v0, "scan":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 172
    iget-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 174
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v3, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 160
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 152
    goto :goto_0

    :cond_2
    move v1, v2

    .line 153
    goto :goto_1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, 0x1

    .line 688
    instance-of v2, p1, Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->isWifiDialogSecured(Landroid/app/AlertDialog;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 690
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 692
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v2, p1

    check-cast v2, Landroid/app/AlertDialog;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 696
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 698
    .local v1, "negativeButton":Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 699
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 700
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    .line 703
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 704
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 707
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "negativeButton":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public setEnabler(Lcom/android/settings/guide/GuideFragment$WrappedEnabler;)V
    .locals 1
    .param p1, "enabler"    # Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V

    .line 674
    :cond_0
    return-void
.end method

.method public showCompleteDialog()V
    .locals 4

    .prologue
    .line 575
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 578
    .local v0, "builderstart":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090dbf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090dbe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/settings/guide/WifiSettingsGuider$6;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/WifiSettingsGuider$6;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 596
    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 679
    return-void
.end method

.method public showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 8
    .param p1, "type"    # Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .prologue
    const v2, 0x7f040078

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 195
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_1

    move v0, v7

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_2

    .line 292
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v5

    .line 195
    goto :goto_0

    .line 201
    :cond_2
    iget-object v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 203
    .local v6, "showedType":Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 204
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 206
    invoke-direct {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 208
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 244
    :goto_2
    iput-boolean v5, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 248
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_4

    move v0, v7

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 250
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$7;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 252
    :pswitch_0
    const v1, 0x7f090db8

    const v2, 0x7f040074

    sget-object v3, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 210
    :pswitch_1
    iput-object v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    goto :goto_2

    .line 216
    :pswitch_2
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$2;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$2;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    .line 226
    :pswitch_3
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$3;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$3;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    .line 236
    :pswitch_4
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v7

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_4

    :cond_4
    move v0, v5

    .line 248
    goto :goto_3

    .line 257
    :pswitch_5
    const v1, 0x7f090dbb

    sget-object v3, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 261
    :pswitch_6
    const v1, 0x7f090dba

    sget-object v3, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 265
    :pswitch_7
    const v1, 0x7f090db9

    sget-object v3, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 269
    :pswitch_8
    const v1, 0x7f090dbd

    const v2, 0x7f040075

    sget-object v3, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 273
    :pswitch_9
    const v1, 0x7f090dbc

    sget-object v3, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 277
    :pswitch_a
    const v1, 0x7f090db7

    const v2, 0x7f040073

    sget-object v3, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    .line 280
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/samsung/helphub/dialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/guide/GuideModeHelper;->drawActionPointerForSwitcher(Lcom/samsung/helphub/dialog/TwHelpDialog;Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 250
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method
