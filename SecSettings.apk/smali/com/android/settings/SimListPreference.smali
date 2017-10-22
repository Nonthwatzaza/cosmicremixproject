.class public Lcom/android/settings/SimListPreference;
.super Landroid/preference/ListPreference;
.source "SimListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SimListPreference$SimListArrayAdapter;
    }
.end annotation


# instance fields
.field entries:[Ljava/lang/CharSequence;

.field entryValues:[Ljava/lang/CharSequence;

.field private handler:Landroid/os/Handler;

.field private index:I

.field private isMasterSIM:Z

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field mContext:Landroid/content/Context;

.field mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWhich:I

.field private pref:Landroid/content/SharedPreferences;

.field private progressDlg:Landroid/app/ProgressDialog;

.field simIcon:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    .line 49
    iput-boolean v3, p0, Lcom/android/settings/SimListPreference;->isMasterSIM:Z

    .line 60
    new-instance v0, Lcom/android/settings/SimListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SimListPreference$1;-><init>(Lcom/android/settings/SimListPreference;)V

    iput-object v0, p0, Lcom/android/settings/SimListPreference;->handler:Landroid/os/Handler;

    .line 77
    const-string v0, "DSDS"

    invoke-static {v0}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    iput-object v0, p0, Lcom/android/settings/SimListPreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    .line 106
    iput-object p1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    const-string v1, "sim_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimListPreference;->pref:Landroid/content/SharedPreferences;

    .line 108
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->pref:Landroid/content/SharedPreferences;

    const-string v1, "isSim1"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SimListPreference;->isMasterSIM:Z

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SimListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SimListPreference;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/settings/SimListPreference;->mWhich:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/SimListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SimListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/settings/SimListPreference;->mWhich:I

    return p1
.end method

.method private getSimIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "Sim_id"    # I

    .prologue
    .line 328
    const/4 v3, 0x0

    .line 329
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 330
    .local v4, "sim_icon2":I
    const/4 v1, 0x0

    .line 333
    .local v1, "retDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 334
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 339
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 341
    .local v2, "ret_sim_icon":I
    :goto_1
    const-string v5, "SimListPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sim ListPreference SIM 1 ICON : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SIM 2 ICON : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ret_sim_icon = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    packed-switch v2, :pswitch_data_0

    .line 361
    :goto_2
    return-object v1

    .line 335
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 339
    goto :goto_1

    .line 345
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 346
    goto :goto_2

    .line 348
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 349
    goto :goto_2

    .line 351
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 352
    goto :goto_2

    .line 354
    :pswitch_3
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 355
    goto :goto_2

    .line 357
    :pswitch_4
    iget-object v5, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private switchNetworkTo(I)V
    .locals 2
    .param p1, "simId"    # I

    .prologue
    .line 287
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 288
    const-string v0, "SimListPreference"

    const-string v1, "switchNetworkTo >> SIM 2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v0}, Landroid/plugin/dsds/PlugInDsdsService;->switchToSim2DataNetwork()V

    .line 295
    :goto_0
    return-void

    .line 292
    :cond_0
    const-string v0, "SimListPreference"

    const-string v1, "switchNetworkTo >> SIM 1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    invoke-virtual {v0}, Landroid/plugin/dsds/PlugInDsdsService;->switchToSim1DataNetwork()V

    goto :goto_0
.end method


# virtual methods
.method public disconnectNetworkAlramPopup()V
    .locals 4

    .prologue
    .line 197
    new-instance v0, Lcom/android/settings/SimListPreference$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SimListPreference$3;-><init>(Lcom/android/settings/SimListPreference;)V

    .line 206
    .local v0, "negativeListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/settings/SimListPreference$4;

    invoke-direct {v1, p0}, Lcom/android/settings/SimListPreference$4;-><init>(Lcom/android/settings/SimListPreference;)V

    .line 216
    .local v1, "positiveListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090eb3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090eb2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090041

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090040

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 223
    return-void
.end method

.method public dismissDialog()V
    .locals 1

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->progressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SimListPreference;->progressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/SimListPreference;->progressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SimListPreference;->progressDlg:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isNowUsingPDP()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 230
    const-string v3, "persist.sys.dataprefer.simid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    const-string v3, "SimListPreference"

    const-string v4, "Data service network == SIM 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    iget-object v4, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/plugin/dsds/PlugInDsdsService;->getTelephonyManagerService(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 244
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 246
    .local v0, "state":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    .line 247
    :cond_0
    const-string v1, "SimListPreference"

    const-string v3, "now using the data so create popup"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 250
    :cond_1
    return v1

    .line 238
    .end local v0    # "state":I
    :cond_2
    const-string v3, "SimListPreference"

    const-string v4, "Data service network == SIM 2"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mDsDsService:Landroid/plugin/dsds/PlugInDsdsService;

    iget-object v4, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/plugin/dsds/PlugInDsdsService;->getTelephonyManagerService(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SimListPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 11
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 114
    const-string v1, "data_service_network"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v4}, Lcom/android/settings/SimListPreference;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 116
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v5}, Lcom/android/settings/SimListPreference;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    .line 118
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "sim1_name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 120
    .local v9, "sim2_name":Ljava/lang/String;
    new-array v6, v10, [Ljava/lang/String;

    aput-object v8, v6, v4

    aput-object v9, v6, v5

    .line 122
    .local v6, "n_Entry":[Ljava/lang/String;
    iput-object v6, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    .line 123
    const-string v1, "persist.sys.dataprefer.simid"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SimListPreference;->index:I

    .line 126
    const-string v1, "SimListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareDialogBuilder DATA_NETWORK_KEY index(Property) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SimListPreference;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getValue() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v6    # "n_Entry":[Ljava/lang/String;
    .end local v8    # "sim1_name":Ljava/lang/String;
    .end local v9    # "sim2_name":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimListPreference;->entryValues:[Ljava/lang/CharSequence;

    .line 149
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SimListPreference;->entryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/settings/SimListPreference;->entryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-eq v1, v2, :cond_4

    .line 151
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ListPreference requires an entries array and an entryValues array which are both the same length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_2
    const-string v1, "select_icon"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 130
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v5

    .line 131
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v10

    .line 132
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 133
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->simIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    .line 138
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/SimListPreference;->isMasterSIM:Z

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SimListPreference;->index:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 142
    :catch_0
    move-exception v7

    .line 143
    .local v7, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 141
    .end local v7    # "se":Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SimListPreference;->index:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 155
    :cond_4
    new-instance v0, Lcom/android/settings/SimListPreference$SimListArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0400fb

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SimListPreference;->index:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/SimListPreference$SimListArrayAdapter;-><init>(Lcom/android/settings/SimListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;I)V

    .line 158
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    iget v1, p0, Lcom/android/settings/SimListPreference;->index:I

    iput v1, p0, Lcom/android/settings/SimListPreference;->mWhich:I

    .line 159
    iput-object p1, p0, Lcom/android/settings/SimListPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 160
    iget v1, p0, Lcom/android/settings/SimListPreference;->index:I

    new-instance v2, Lcom/android/settings/SimListPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/SimListPreference$2;-><init>(Lcom/android/settings/SimListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    return-void
.end method

.method public restoredDataPrefered()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->dismissDialog()V

    .line 82
    iget-object v4, p0, Lcom/android/settings/SimListPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f090117

    invoke-static {v4, v5, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 83
    const-string v4, "persist.sys.dataprefer.simid"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "dataPrefered":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    .local v0, "clicked":I
    :goto_0
    const-string v3, "persist.sys.dataprefer.simid"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v3, "persist.sys.dataprefer.backup"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v3, "SimListPreference"

    const-string v4, "PROPERTY_DATA_PREFER_SIM_ID_BACKUP Roll back cause of fail "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/SimListPreference;->setValue(Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    const-string v5, "%%"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/SimListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/SimListPreference;->callChangeListener(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_1
    return-void

    .end local v0    # "clicked":I
    :cond_1
    move v0, v3

    .line 85
    goto :goto_0

    .line 97
    .restart local v0    # "clicked":I
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "SimListPreference"

    const-string v4, "could not persist Clock position value"

    invoke-static {v3, v4, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setResult(I)V
    .locals 4
    .param p1, "clicked"    # I

    .prologue
    .line 256
    const-string v1, "data_service_network"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 257
    const-string v1, "persist.sys.dataprefer.simid"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 282
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string v1, "persist.sys.dataprefer.simid"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "persist.sys.dataprefer.backup"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "SimListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PROPERTY_DATA_PREFER_SIM_ID_BACKUP is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/SimListPreference;->switchNetworkTo(I)V

    .line 267
    const-string v1, "SimListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchNetworkTo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SimListPreference;->setValue(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/android/settings/SimListPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%"

    const-string v3, "%%"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SimListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 273
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/SimListPreference;->callChangeListener(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "SimListPreference"

    const-string v2, "could not persist Clock position value"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 278
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const-string v1, "select_icon"

    invoke-virtual {p0}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SimListPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_1
.end method
