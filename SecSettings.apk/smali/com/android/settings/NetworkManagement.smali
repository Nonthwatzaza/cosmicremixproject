.class public Lcom/android/settings/NetworkManagement;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NetworkManagement.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final RAW_HOOK_OEM_CMD_BPM_DISABLE:[B

.field private static final RAW_HOOK_OEM_CMD_BPM_ENABLE:[B

.field public static mSimService:Lcom/android/settings/ISimCardManagerService;


# instance fields
.field private SimState:Ljava/lang/String;

.field private SimState2:Ljava/lang/String;

.field private currentPhoneState1:I

.field private currentPhoneState2:I

.field private dataNetworkState:Z

.field editor:Landroid/content/SharedPreferences$Editor;

.field isSim1Active:Z

.field isSim2Active:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataServiceNetwork:Landroid/preference/ListPreference;

.field public mDualSimAlwaysOn:Landroid/preference/Preference;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsChangedImsi:Z

.field public mIsChecked:Z

.field public mIsReseted:Z

.field private mPagingMode:Landroid/preference/CheckBoxPreference;

.field private mSimStatePreference:Lcom/android/settings/SimStatePreference;

.field private mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

.field private pagingState:Z

.field pref:Landroid/content/SharedPreferences;

.field srvConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x11

    .line 120
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/NetworkManagement;->RAW_HOOK_OEM_CMD_BPM_DISABLE:[B

    .line 124
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/NetworkManagement;->RAW_HOOK_OEM_CMD_BPM_ENABLE:[B

    return-void

    .line 120
    nop

    :array_0
    .array-data 1
        0x51t
        0x55t
        0x41t
        0x4ct
        0x43t
        0x4ft
        0x4dt
        0x4dt
        0x5t
        0x0t
        0x8t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 124
    nop

    :array_1
    .array-data 1
        0x51t
        0x55t
        0x41t
        0x4ct
        0x43t
        0x4ft
        0x4dt
        0x4dt
        0x5t
        0x0t
        0x8t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 129
    iput-boolean v0, p0, Lcom/android/settings/NetworkManagement;->isSim1Active:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/settings/NetworkManagement;->isSim2Active:Z

    .line 133
    iput-object v1, p0, Lcom/android/settings/NetworkManagement;->pref:Landroid/content/SharedPreferences;

    .line 135
    iput-object v1, p0, Lcom/android/settings/NetworkManagement;->editor:Landroid/content/SharedPreferences$Editor;

    .line 142
    iput-boolean v0, p0, Lcom/android/settings/NetworkManagement;->mIsChecked:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/settings/NetworkManagement;->mIsReseted:Z

    .line 148
    iput-boolean v0, p0, Lcom/android/settings/NetworkManagement;->mIsChangedImsi:Z

    .line 225
    new-instance v0, Lcom/android/settings/NetworkManagement$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NetworkManagement$2;-><init>(Lcom/android/settings/NetworkManagement;)V

    iput-object v0, p0, Lcom/android/settings/NetworkManagement;->srvConn:Landroid/content/ServiceConnection;

    .line 591
    new-instance v0, Lcom/android/settings/NetworkManagement$9;

    invoke-direct {v0, p0}, Lcom/android/settings/NetworkManagement$9;-><init>(Lcom/android/settings/NetworkManagement;)V

    iput-object v0, p0, Lcom/android/settings/NetworkManagement;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NetworkManagement;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/NetworkManagement;->initUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/NetworkManagement;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings/NetworkManagement;->resumeUI()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/NetworkManagement;)Lcom/android/settings/SimStatePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/NetworkManagement;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/NetworkManagement;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300()[B
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/settings/NetworkManagement;->RAW_HOOK_OEM_CMD_BPM_ENABLE:[B

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/NetworkManagement;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/NetworkManagement;->setInitDialog(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/NetworkManagement;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState1:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/NetworkManagement;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState1:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/NetworkManagement;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/settings/NetworkManagement;->convertCallState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/NetworkManagement;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 72
    iget v0, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState2:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/NetworkManagement;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState2:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/NetworkManagement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/settings/NetworkManagement;->dataNetworkState:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/NetworkManagement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/NetworkManagement;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/settings/NetworkManagement;->pagingState:Z

    return v0
.end method

.method private convertCallState(Ljava/lang/String;)I
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 659
    const-string v0, "IDLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 666
    :goto_0
    return v0

    .line 661
    :cond_0
    const-string v0, "RINGING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    const/4 v0, 0x1

    goto :goto_0

    .line 663
    :cond_1
    const-string v0, "OFFHOOK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    const/4 v0, 0x2

    goto :goto_0

    .line 666
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private initUI()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState:Ljava/lang/String;

    .line 184
    const-string v2, "gsm.sim.state_1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState2:Ljava/lang/String;

    .line 191
    const v2, 0x7f070048

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->addPreferencesFromResource(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 194
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 196
    const-string v2, "state_preference"

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SimStatePreference;

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    .line 197
    const-string v2, "data_service_network"

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    .line 198
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    const-string v2, "paging_mode"

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    .line 200
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    const-string v2, "button_dsa_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/NetworkManagement;->mDualSimAlwaysOn:Landroid/preference/Preference;

    .line 202
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mDualSimAlwaysOn:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "extra_changed_imsi"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/NetworkManagement;->mIsChangedImsi:Z

    .line 206
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState:Ljava/lang/String;

    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->SimState2:Ljava/lang/String;

    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    :cond_0
    const-string v2, "NetworkManagement"

    const-string v3, "mDataServiceNetwork and mPagingMode set disable"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 209
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 210
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mDualSimAlwaysOn:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 218
    :goto_0
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/NetworkManagement;->dataNetworkState:Z

    .line 219
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/NetworkManagement;->pagingState:Z

    .line 220
    iput-object v1, p0, Lcom/android/settings/NetworkManagement;->mContentResolver:Landroid/content/ContentResolver;

    .line 222
    invoke-direct {p0}, Lcom/android/settings/NetworkManagement;->updateState()V

    .line 223
    return-void

    .line 212
    :cond_1
    const-string v2, "NetworkManagement"

    const-string v3, "mDataServiceNetwork and mPagingMode set disable"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 214
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 215
    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->mDualSimAlwaysOn:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private resumeUI()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 248
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 249
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v4, "android.net.conn.ACTION_DATA_CONNECTION_CHANGE_SUCCESS"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v4, "android.net.conn.ACTION_DATA_CONNECTION_CHANGE_FAIL"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/NetworkManagement;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v7, v2, v9, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 258
    const-string v4, "phone_msim"

    invoke-virtual {p0, v4}, Lcom/android/settings/NetworkManagement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/MSimTelephonyManager;

    iput-object v4, p0, Lcom/android/settings/NetworkManagement;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 259
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v4, v6}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState1:I

    .line 260
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v4, v5}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState2:I

    .line 261
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    invoke-virtual {v4}, Lcom/android/settings/SimStatePreference;->doResume()V

    .line 262
    invoke-direct {p0}, Lcom/android/settings/NetworkManagement;->updateState()V

    .line 264
    const/4 v1, 0x0

    .line 266
    .local v1, "enable":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "airplane_mode_on"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 271
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/NetworkManagement;->dataNetworkState:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/NetworkManagement;->pagingState:Z

    if-eqz v4, :cond_1

    .line 273
    if-eq v1, v5, :cond_0

    iget v4, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState1:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState1:I

    if-eq v4, v8, :cond_0

    iget v4, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState2:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/settings/NetworkManagement;->currentPhoneState2:I

    if-ne v4, v8, :cond_4

    .line 275
    :cond_0
    const/4 v0, 0x0

    .line 279
    .local v0, "bool":Z
    :goto_1
    const-string v4, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " OnResume the Call State "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    invoke-virtual {v4, v0}, Lcom/android/settings/SimStatePreference;->stateEnable(Z)V

    .line 283
    .end local v0    # "bool":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "sim_pref"

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/NetworkManagement;->pref:Landroid/content/SharedPreferences;

    .line 284
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/NetworkManagement;->editor:Landroid/content/SharedPreferences$Editor;

    .line 285
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "sim_1_active_change"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "sim_2_active_change"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v4, "NetworkManagement"

    const-string v7, "simDeactivate : setSharedPref SIM 1 & 2 change false"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    iget-boolean v4, p0, Lcom/android/settings/NetworkManagement;->mIsChangedImsi:Z

    if-eqz v4, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "dsa_init_dialog_is_checked"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "dsa_reset"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "dsa_init_dialog_is_checked"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/NetworkManagement;->mIsChecked:Z

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "dsa_reset"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v6, v5

    :cond_3
    iput-boolean v6, p0, Lcom/android/settings/NetworkManagement;->mIsReseted:Z

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "dsa_check_started_networkmanagement"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    return-void

    .line 267
    :catch_0
    move-exception v3

    .line 268
    .local v3, "se":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 277
    .end local v3    # "se":Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "bool":Z
    goto/16 :goto_1

    .end local v0    # "bool":Z
    :cond_5
    move v4, v6

    .line 295
    goto :goto_2
.end method

.method private setInitDialog(Z)V
    .locals 3
    .param p1, "isChecked"    # Z

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_init_dialog_is_checked"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 674
    const-string v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void

    .line 672
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 357
    const-string v4, "persist.sys.dataprefer.simid"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "dataPrefered":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 360
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Back ground paging mode property = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "persist.sys.bpmsetting.enable"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v4, "persist.sys.bpmsetting.enable"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 363
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 364
    const-string v4, "NetworkManagement"

    const-string v5, "setChecked false"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    const-string v4, "persist.sys.dataprefer.simid"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 371
    .local v3, "service_Network":I
    const-string v4, "ril.MSIMM"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "mSimMode":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 374
    const/4 v3, 0x1

    .line 377
    :cond_0
    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_1"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "icon_name":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->mDataServiceNetwork:Landroid/preference/ListPreference;

    const-string v5, "%"

    const-string v6, "%%"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default List DataServiceNetwork = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void

    .line 366
    .end local v1    # "icon_name":Ljava/lang/String;
    .end local v2    # "mSimMode":Ljava/lang/String;
    .end local v3    # "service_Network":I
    :cond_1
    iget-object v4, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 367
    const-string v4, "NetworkManagement"

    const-string v5, "setChecked True"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    .restart local v2    # "mSimMode":Ljava/lang/String;
    .restart local v3    # "service_Network":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "select_name_2"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public ChangeSimStateSendIntent(ZZ)V
    .locals 7
    .param p1, "isMasterSIM"    # Z
    .param p2, "Activate"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 568
    const-string v2, "NetworkManagement"

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

    .line 570
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 571
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.com.contact.simactivechanged"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string v5, "simcard_sim_id"

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    const-string v2, "simcard_sim_activate"

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    const-string v2, "NetworkManagement"

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

    .line 585
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 572
    goto :goto_0

    :cond_1
    move v4, v3

    .line 575
    goto :goto_1

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NetworkManagement"

    const-string v3, "not found ACTION_SIM_MGT_CHANGED"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public isAllSimOn()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 645
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone1_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v0, v2

    .line 647
    .local v0, "sim_1_active":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "phone2_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 650
    .local v1, "sim_2_active":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 651
    const-string v3, "NetworkManagement"

    const-string v4, "ALL SIM ON"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :goto_2
    return v2

    .end local v0    # "sim_1_active":Z
    .end local v1    # "sim_2_active":Z
    :cond_0
    move v0, v3

    .line 645
    goto :goto_0

    .restart local v0    # "sim_1_active":Z
    :cond_1
    move v1, v3

    .line 647
    goto :goto_1

    .line 654
    .restart local v1    # "sim_2_active":Z
    :cond_2
    const-string v2, "NetworkManagement"

    const-string v4, "NOT ALL SIM ON"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 655
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 155
    sget-object v0, Lcom/android/settings/NetworkManagement;->mSimService:Lcom/android/settings/ISimCardManagerService;

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/NetworkManagement;->mSimService:Lcom/android/settings/ISimCardManagerService;

    .line 157
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/SimCardManagerService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/NetworkManagement;->srvConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 159
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    const v7, 0x7f0905fd

    .line 440
    packed-switch p1, :pswitch_data_0

    .line 552
    :goto_0
    return-object v4

    .line 442
    :pswitch_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090e96

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090eb9

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/NetworkManagement$4;

    invoke-direct {v5, p0}, Lcom/android/settings/NetworkManagement$4;-><init>(Lcom/android/settings/NetworkManagement;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0905fe

    new-instance v6, Lcom/android/settings/NetworkManagement$3;

    invoke-direct {v6, p0}, Lcom/android/settings/NetworkManagement$3;-><init>(Lcom/android/settings/NetworkManagement;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 480
    :pswitch_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090eab

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090e9f

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/NetworkManagement$5;

    invoke-direct {v5, p0}, Lcom/android/settings/NetworkManagement$5;-><init>(Lcom/android/settings/NetworkManagement;)V

    invoke-virtual {v4, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 493
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getListView()Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f040065

    invoke-static {v5, v6, v4}, Landroid/widget/ListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 494
    .local v2, "linear":Landroid/widget/LinearLayout;
    const v4, 0x7f090ebe

    invoke-virtual {p0, v4}, Lcom/android/settings/NetworkManagement;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "initDialogInform":Ljava/lang/String;
    const v4, 0x7f090ec1

    invoke-virtual {p0, v4}, Lcom/android/settings/NetworkManagement;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "initDialogInformTitle":Ljava/lang/String;
    const v4, 0x7f0b00fe

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 498
    .local v3, "successTextView":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_is_first"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 508
    const v4, 0x7f090ec3

    invoke-virtual {p0, v4}, Lcom/android/settings/NetworkManagement;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    :cond_0
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initDialogInform : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/android/settings/NetworkManagement;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/NetworkManagement$8;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/NetworkManagement$8;-><init>(Lcom/android/settings/NetworkManagement;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090134

    invoke-virtual {p0, v5}, Lcom/android/settings/NetworkManagement;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/NetworkManagement$7;

    invoke-direct {v6, p0}, Lcom/android/settings/NetworkManagement$7;-><init>(Lcom/android/settings/NetworkManagement;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/NetworkManagement$6;

    invoke-direct {v5, p0}, Lcom/android/settings/NetworkManagement$6;-><init>(Lcom/android/settings/NetworkManagement;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto/16 :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x0

    .line 727
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 729
    const v0, 0x7f090ea6

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020134

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 730
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 731
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 732
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    const-string v2, "com.android.settings.networkmanagement"

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    const v2, 0x7f04009b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, "layout":Landroid/view/View;
    const v2, 0x7f0b0194

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 169
    .local v0, "b":Landroid/widget/Button;
    new-instance v2, Lcom/android/settings/NetworkManagement$1;

    invoke-direct {v2, p0}, Lcom/android/settings/NetworkManagement$1;-><init>(Lcom/android/settings/NetworkManagement;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .end local v0    # "b":Landroid/widget/Button;
    .end local v1    # "layout":Landroid/view/View;
    :goto_0
    return-object v1

    .line 177
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/NetworkManagement;->setHasOptionsMenu(Z)V

    .line 178
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 352
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NetworkManagement;->srvConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 354
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 427
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 434
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 429
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 430
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.DualHelpActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v0}, Lcom/android/settings/NetworkManagement;->startActivity(Landroid/content/Intent;)V

    .line 432
    const/4 v1, 0x1

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 308
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 309
    const-string v5, "NetworkManagement"

    const-string v6, "onPause "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v5, Lcom/android/settings/NetworkManagement;->mSimService:Lcom/android/settings/ISimCardManagerService;

    if-nez v5, :cond_1

    .line 312
    const-string v3, "NetworkManagement"

    const-string v4, "onPause not initialized yet"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/NetworkManagement;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_1
    iget-object v5, p0, Lcom/android/settings/NetworkManagement;->mSimStatePreference:Lcom/android/settings/SimStatePreference;

    invoke-virtual {v5}, Lcom/android/settings/SimStatePreference;->doPause()V

    .line 322
    iget-object v5, p0, Lcom/android/settings/NetworkManagement;->pref:Landroid/content/SharedPreferences;

    const-string v6, "sim_1_active_change"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/NetworkManagement;->isSim1Active:Z

    .line 323
    iget-object v5, p0, Lcom/android/settings/NetworkManagement;->pref:Landroid/content/SharedPreferences;

    const-string v6, "sim_2_active_change"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/NetworkManagement;->isSim2Active:Z

    .line 325
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPause isSim1Active = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/NetworkManagement;->isSim1Active:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPause isSim2Active = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings/NetworkManagement;->isSim2Active:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "phone1_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v1, v3

    .line 330
    .local v1, "sim_1_active":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "phone2_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v2, v3

    .line 333
    .local v2, "sim_2_active":Z
    :goto_3
    iget-boolean v5, p0, Lcom/android/settings/NetworkManagement;->isSim1Active:Z

    if-eqz v5, :cond_2

    .line 334
    const-string v5, "NetworkManagement"

    const-string v6, "onPause SIM 1 changing sim active state"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/NetworkManagement;->ChangeSimStateSendIntent(ZZ)V

    .line 338
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/NetworkManagement;->isSim2Active:Z

    if-eqz v3, :cond_0

    .line 339
    const-string v3, "NetworkManagement"

    const-string v5, "onPause SIM2 changing sim active state"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0, v4, v2}, Lcom/android/settings/NetworkManagement;->ChangeSimStateSendIntent(ZZ)V

    goto/16 :goto_0

    .line 316
    .end local v1    # "sim_1_active":Z
    .end local v2    # "sim_2_active":Z
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "NetworkManagement"

    const-string v6, "receiver is not registered yet"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    move v1, v4

    .line 328
    goto :goto_2

    .restart local v1    # "sim_1_active":Z
    :cond_4
    move v2, v4

    .line 330
    goto :goto_3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 722
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 385
    iget-object v5, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    .line 386
    invoke-virtual {p0, v4}, Lcom/android/settings/NetworkManagement;->showDialog(I)V

    .line 423
    :cond_0
    :goto_0
    return v4

    .line 387
    :cond_1
    iget-object v5, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 388
    iget-object v5, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 389
    iget-object v5, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 390
    .local v2, "pagingMode":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "paging_mode"

    iget-object v7, p0, Lcom/android/settings/NetworkManagement;->mPagingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 391
    const-string v3, "persist.sys.bpmsetting.enable"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v3, "NetworkManagement"

    const-string v5, "Receive BPM_Enable Un-CheckEvent"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :try_start_0
    sget-object v3, Lcom/android/settings/NetworkManagement;->mSimService:Lcom/android/settings/ISimCardManagerService;

    sget-object v5, Lcom/android/settings/NetworkManagement;->RAW_HOOK_OEM_CMD_BPM_DISABLE:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Lcom/android/settings/ISimCardManagerService;->invokeOemRilRequestRaw([BLandroid/os/Message;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "pagingMode":I
    :cond_2
    move v2, v4

    .line 389
    goto :goto_1

    .restart local v2    # "pagingMode":I
    :cond_3
    move v3, v4

    .line 390
    goto :goto_2

    .line 400
    .end local v2    # "pagingMode":I
    :cond_4
    iget-object v5, p0, Lcom/android/settings/NetworkManagement;->mDualSimAlwaysOn:Landroid/preference/Preference;

    if-ne p2, v5, :cond_0

    .line 401
    iget-boolean v5, p0, Lcom/android/settings/NetworkManagement;->mIsChecked:Z

    if-eqz v5, :cond_6

    .line 403
    const-string v5, "NetworkManagement"

    const-string v6, "DSA_INIT_IS_CHECKED"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v1, "myIntent":Landroid/content/Intent;
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.DsaMainParser"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const/high16 v5, 0x20000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 408
    iget-boolean v5, p0, Lcom/android/settings/NetworkManagement;->mIsReseted:Z

    if-eqz v5, :cond_5

    .line 410
    iput-boolean v4, p0, Lcom/android/settings/NetworkManagement;->mIsChangedImsi:Z

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dsa_reset"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 412
    const-string v5, "extra_changed_imsi"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 414
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/settings/NetworkManagement;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 419
    .end local v1    # "myIntent":Landroid/content/Intent;
    :cond_6
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/settings/NetworkManagement;->showDialog(I)V

    move v4, v3

    .line 421
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 241
    sget-object v0, Lcom/android/settings/NetworkManagement;->mSimService:Lcom/android/settings/ISimCardManagerService;

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/settings/NetworkManagement;->resumeUI()V

    .line 244
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 347
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 348
    return-void
.end method
