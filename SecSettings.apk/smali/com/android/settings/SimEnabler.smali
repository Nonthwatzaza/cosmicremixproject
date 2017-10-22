.class public Lcom/android/settings/SimEnabler;
.super Ljava/lang/Object;
.source "SimEnabler.java"


# static fields
.field static isSim1Selected:Z


# instance fields
.field private checkBoxLayout:Landroid/widget/FrameLayout;

.field private currentPhoneState1:I

.field private currentPhoneState2:I

.field isRegistReceiver:Z

.field private mCheckBox:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSimState_1:Ljava/lang/String;

.field private mSimState_2:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

.field private pref:Landroid/content/SharedPreferences;

.field sim_1_active:Z

.field sim_2_active:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v3, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    .line 74
    iput-boolean v3, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    .line 75
    iput-boolean v3, p0, Lcom/android/settings/SimEnabler;->isRegistReceiver:Z

    .line 79
    const-string v0, "DSDS"

    invoke-static {v0}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    .line 81
    new-instance v0, Lcom/android/settings/SimEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SimEnabler$1;-><init>(Lcom/android/settings/SimEnabler;)V

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    .line 96
    if-eqz p2, :cond_0

    .line 97
    iput-object p2, p0, Lcom/android/settings/SimEnabler;->checkBoxLayout:Landroid/widget/FrameLayout;

    .line 98
    const v0, 0x7f0b02cd

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->mCheckBox:Landroid/widget/CheckBox;

    .line 101
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 102
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 104
    const-string v0, "sim_pref"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->pref:Landroid/content/SharedPreferences;

    .line 106
    const-string v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->mSimState_1:Ljava/lang/String;

    .line 107
    const-string v0, "gsm.sim.state_1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimEnabler;->mSimState_2:Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SimEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimEnabler;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SimEnabler;->onSimModeChanged()V

    return-void
.end method

.method static getTelephonyService(I)Lcom/android/internal/telephony/ITelephony;
    .locals 3
    .param p0, "simCardId"    # I

    .prologue
    .line 174
    const/4 v1, 0x1

    if-ne v1, p0, :cond_1

    .line 175
    const-string v1, "phone2"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 180
    .local v0, "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-nez v0, :cond_0

    .line 181
    const-string v1, "SimCardMGT SimEnabler"

    const-string v2, "Unable to find ITelephony interface."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    return-object v0

    .line 177
    .end local v0    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .restart local v0    # "telephonyService":Lcom/android/internal/telephony/ITelephony;
    goto :goto_0
.end method

.method private onSimModeChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 412
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->checkBoxLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->isSimOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->checkBoxLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 417
    :cond_0
    return-void
.end method

.method private simDeactivate(Z)Z
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    .line 357
    const/4 v4, 0x0

    .line 359
    .local v4, "retVal":Z
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 360
    iget-object v6, p0, Lcom/android/settings/SimEnabler;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 362
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v6, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    if-eqz v6, :cond_1

    .line 363
    const/4 v2, 0x0

    .line 364
    .local v2, "mNewSimCardId":I
    const-string v5, "sim_1_active_change"

    .line 371
    .local v5, "simActiveChange":Ljava/lang/String;
    :goto_0
    :try_start_0
    sget-object v6, Lcom/android/settings/NetworkManagement;->mSimService:Lcom/android/settings/ISimCardManagerService;

    invoke-interface {v6, p1, v2}, Lcom/android/settings/ISimCardManagerService;->simDeactivate(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 378
    :goto_1
    if-nez v4, :cond_2

    .line 379
    const/4 v4, 0x0

    .line 402
    .end local v4    # "retVal":Z
    :cond_0
    :goto_2
    return v4

    .line 366
    .end local v2    # "mNewSimCardId":I
    .end local v5    # "simActiveChange":Ljava/lang/String;
    .restart local v4    # "retVal":Z
    :cond_1
    const/4 v2, 0x1

    .line 367
    .restart local v2    # "mNewSimCardId":I
    const-string v5, "sim_2_active_change"

    .restart local v5    # "simActiveChange":Ljava/lang/String;
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 375
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 381
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string v6, "SimCardMGT SimEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simDeactivate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " true"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 385
    if-nez p1, :cond_0

    .line 388
    sget-boolean v6, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    if-eqz v6, :cond_3

    .line 390
    const/4 v3, 0x1

    .line 397
    .local v3, "mNewSimCardIdforVoice":I
    :goto_3
    iget-object v6, p0, Lcom/android/settings/SimEnabler;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    if-eqz v6, :cond_0

    .line 398
    iget-object v6, p0, Lcom/android/settings/SimEnabler;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v6, v3}, Landroid/plugin/dsds/PlugInDsdsService;->setDefaultSimForVoiceCalls(I)I

    .line 399
    const-string v6, "SimCardMGT SimEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simDeactivate : mNewSimCardIdforVoice "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 394
    .end local v3    # "mNewSimCardIdforVoice":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "mNewSimCardIdforVoice":I
    goto :goto_3
.end method

.method private updateColumn(I)V
    .locals 1
    .param p1, "active"    # I

    .prologue
    .line 188
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v0, "editedValues":Landroid/content/ContentValues;
    return-void
.end method


# virtual methods
.method public ChangeSimStateSendIntent(ZZ)V
    .locals 7
    .param p1, "isMasterSIM"    # Z
    .param p2, "Activate"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 298
    const-string v2, "SimCardMGT SimEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMasterSIM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Activate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 300
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v5, "simcard_sim_id"

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    const-string v2, "simcard_sim_activate"

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v2, "SimCardMGT SimEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display for Broadcating Intent ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 301
    goto :goto_0

    :cond_1
    move v4, v3

    .line 304
    goto :goto_1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SimCardMGT SimEnabler"

    const-string v3, "not found ACTION_SIM_MGT_CHANGED"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public doClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 425
    iget-object v4, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    const-string v7, "phone_msim"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/MSimTelephonyManager;

    iput-object v4, p0, Lcom/android/settings/SimEnabler;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 427
    iget-object v4, p0, Lcom/android/settings/SimEnabler;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v4, v6}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/SimEnabler;->currentPhoneState1:I

    .line 428
    iget-object v4, p0, Lcom/android/settings/SimEnabler;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v4, v5}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/SimEnabler;->currentPhoneState2:I

    .line 431
    iget v4, p0, Lcom/android/settings/SimEnabler;->currentPhoneState1:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/settings/SimEnabler;->currentPhoneState1:I

    if-eq v4, v8, :cond_0

    iget v4, p0, Lcom/android/settings/SimEnabler;->currentPhoneState1:I

    if-eqz v4, :cond_2

    .line 432
    :cond_0
    const-string v4, "SimCardMGT SimEnabler"

    const-string v5, "SIM 1 Now is Calling donot deactive sim"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_1
    :goto_0
    return-void

    .line 436
    :cond_2
    iget v4, p0, Lcom/android/settings/SimEnabler;->currentPhoneState2:I

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/settings/SimEnabler;->currentPhoneState2:I

    if-eq v4, v8, :cond_3

    iget v4, p0, Lcom/android/settings/SimEnabler;->currentPhoneState2:I

    if-eqz v4, :cond_4

    .line 438
    :cond_3
    const-string v4, "SimCardMGT SimEnabler"

    const-string v5, "SIM 2 Now is Calling donot deactive sim"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    :cond_4
    invoke-static {v6}, Lcom/android/settings/SimEnabler;->getTelephonyService(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 443
    .local v2, "phoneServ":Lcom/android/internal/telephony/ITelephony;
    const/4 v3, 0x0

    .line 445
    .local v3, "phoneServ1":Lcom/android/internal/telephony/ITelephony;
    invoke-static {v5}, Lcom/android/settings/SimEnabler;->getTelephonyService(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 450
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v4

    if-nez v4, :cond_7

    .line 452
    :cond_5
    const-string v4, "SimCardMGT SimEnabler"

    const-string v7, "SIM 1 Now is Calling donot deactive sim"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 463
    :catch_0
    move-exception v1

    .line 465
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 470
    .end local v1    # "e1":Landroid/os/RemoteException;
    :cond_6
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v7, 0x7f0b02ca

    if-ne v4, v7, :cond_1

    .line 471
    iget-object v4, p0, Lcom/android/settings/SimEnabler;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v5

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/settings/SimEnabler;->setSimOn(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 473
    :catch_1
    move-exception v0

    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 456
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7
    :try_start_2
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v4

    if-nez v4, :cond_6

    .line 458
    :cond_8
    const-string v4, "SimCardMGT SimEnabler"

    const-string v7, "SIM 2 Now is Calling donot deactive sim"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 466
    :catch_2
    move-exception v1

    .line 467
    .local v1, "e1":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e1":Ljava/lang/NullPointerException;
    :cond_9
    move v4, v6

    .line 471
    goto :goto_2
.end method

.method public doPause()V
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/settings/SimEnabler;->isRegistReceiver:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SimEnabler;->isRegistReceiver:Z

    .line 162
    :cond_0
    return-void
.end method

.method public doResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 134
    iget-boolean v0, p0, Lcom/android/settings/SimEnabler;->isRegistReceiver:Z

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 136
    iput-boolean v1, p0, Lcom/android/settings/SimEnabler;->isRegistReceiver:Z

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->checkBoxLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 154
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->isSimOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public isAllSimOff(Z)Z
    .locals 4
    .param p1, "enabling"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 482
    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    if-nez v2, :cond_1

    .line 483
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mCheckBox:Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->doResume()V

    .line 486
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090eab

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090e9f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0905fd

    new-instance v3, Lcom/android/settings/SimEnabler$2;

    invoke-direct {v3, p0}, Lcom/android/settings/SimEnabler$2;-><init>(Lcom/android/settings/SimEnabler;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 499
    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public isOneSimOff()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 503
    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mSimState_1:Ljava/lang/String;

    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mSimState_2:Ljava/lang/String;

    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 504
    const-string v1, "SimCardMGT SimEnabler"

    const-string v2, "for data service network isOneSimOff() = All SIM is Active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_0
    :goto_0
    return v0

    .line 507
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    if-nez v2, :cond_2

    .line 509
    const-string v0, "SimCardMGT SimEnabler"

    const-string v2, "for data service network isOneSimOff() = one SIM[SIM 2] is Off"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 510
    goto :goto_0

    .line 512
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    if-eqz v2, :cond_0

    .line 514
    const-string v0, "SimCardMGT SimEnabler"

    const-string v2, "for data service network isOneSimOff() = one SIM[SIM 1] is Off"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 515
    goto :goto_0
.end method

.method isSimOn()Z
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 348
    sget-boolean v0, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    if-eqz v0, :cond_0

    .line 349
    iget-boolean v0, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    .line 351
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    goto :goto_0
.end method

.method public notifyActiveSim()I
    .locals 2

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "SimCardMGT SimEnabler"

    const-string v1, "for data service network notifyActiveSim() = SIM 1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v0, 0x0

    .line 530
    :goto_0
    return v0

    .line 527
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    if-eqz v0, :cond_1

    .line 529
    const-string v0, "SimCardMGT SimEnabler"

    const-string v1, "for data service network notifyActiveSim() = SIM 2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v0, 0x1

    goto :goto_0

    .line 533
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setSimOn(Z)V
    .locals 7
    .param p1, "enabling"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "retVal":Z
    const/4 v0, 0x0

    .line 237
    .local v0, "prevVal":I
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->checkBoxLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 238
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 240
    sget-boolean v2, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    if-eqz v2, :cond_5

    .line 243
    const-string v2, "SimCardMGT SimEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM 1 change the set turned on or off = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "phone1_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 245
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "phone1_on"

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    if-eqz p1, :cond_1

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/settings/SimEnabler;->updateColumn(I)V

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/settings/SimEnabler;->isAllSimOff(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 253
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "phone1_on"

    if-nez p1, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    if-nez p1, :cond_3

    :goto_3
    invoke-direct {p0, v3}, Lcom/android/settings/SimEnabler;->updateColumn(I)V

    .line 294
    :goto_4
    return-void

    :cond_0
    move v2, v4

    .line 245
    goto :goto_0

    :cond_1
    move v2, v4

    .line 249
    goto :goto_1

    :cond_2
    move v2, v4

    .line 253
    goto :goto_2

    :cond_3
    move v3, v4

    .line 256
    goto :goto_3

    .line 259
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/SimEnabler;->simDeactivate(Z)Z

    move-result v1

    .line 282
    :goto_5
    if-nez v1, :cond_d

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    .line 284
    sget-boolean v2, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    if-eqz v2, :cond_b

    .line 285
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "phone1_on"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    :goto_6
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mCheckBox:Landroid/widget/CheckBox;

    if-ne v0, v3, :cond_c

    :goto_7
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    .line 263
    :cond_5
    const-string v2, "SimCardMGT SimEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM 2 change the set turned on or off = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "phone2_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 265
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "phone2_on"

    if-eqz p1, :cond_6

    move v2, v3

    :goto_8
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    if-eqz p1, :cond_7

    move v2, v3

    :goto_9
    invoke-direct {p0, v2}, Lcom/android/settings/SimEnabler;->updateColumn(I)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/settings/SimEnabler;->isAllSimOff(Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 273
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "phone2_on"

    if-nez p1, :cond_8

    move v2, v3

    :goto_a
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    if-nez p1, :cond_9

    :goto_b
    invoke-direct {p0, v3}, Lcom/android/settings/SimEnabler;->updateColumn(I)V

    goto :goto_4

    :cond_6
    move v2, v4

    .line 265
    goto :goto_8

    :cond_7
    move v2, v4

    .line 269
    goto :goto_9

    :cond_8
    move v2, v4

    .line 273
    goto :goto_a

    :cond_9
    move v3, v4

    .line 276
    goto :goto_b

    .line 280
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/settings/SimEnabler;->simDeactivate(Z)Z

    move-result v1

    goto :goto_5

    .line 287
    :cond_b
    iget-object v2, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "phone2_on"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6

    :cond_c
    move v3, v4

    .line 288
    goto :goto_7

    .line 291
    :cond_d
    sget-boolean v2, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/SimEnabler;->ChangeSimStateSendIntent(ZZ)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/SimEnabler;->updateVariable()V

    goto/16 :goto_4
.end method

.method public updateVariable()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 116
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->pref:Landroid/content/SharedPreferences;

    const-string v3, "isSim1"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    .line 118
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "phone1_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    .line 120
    iget-object v0, p0, Lcom/android/settings/SimEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "phone2_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    .line 125
    const-string v0, "SIM Enabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sim 1 Active = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_1_active:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v0, "SIM Enabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sim 2 Active = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/SimEnabler;->sim_2_active:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "SIM Enabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSim1Selected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/SimEnabler;->isSim1Selected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    :cond_0
    move v0, v2

    .line 118
    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method
