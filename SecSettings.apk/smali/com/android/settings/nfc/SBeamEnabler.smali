.class public Lcom/android/settings/nfc/SBeamEnabler;
.super Ljava/lang/Object;
.source "SBeamEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReqNfcTurnOn:Z

.field mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

.field private mSbeamSwitch:Landroid/widget/Switch;

.field private mbOn:Z

.field private mbOnLastState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbeam"    # Landroid/preference/SwitchPreferenceScreen;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 44
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 45
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 46
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 48
    iput-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 50
    iput-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 53
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 276
    new-instance v1, Lcom/android/settings/nfc/SBeamEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/SBeamEnabler$1;-><init>(Lcom/android/settings/nfc/SBeamEnabler;)V

    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 59
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->initEnabler()V

    .line 60
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 62
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 64
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nfcSwitch"    # Landroid/widget/Switch;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 44
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 45
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 46
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 48
    iput-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 50
    iput-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 53
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 276
    new-instance v1, Lcom/android/settings/nfc/SBeamEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/SBeamEnabler$1;-><init>(Lcom/android/settings/nfc/SBeamEnabler;)V

    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 71
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->initEnabler()V

    .line 72
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 76
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/SBeamEnabler;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeamEnabler;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/SBeamEnabler;->changedSbeamState(Landroid/content/Intent;)V

    return-void
.end method

.method private changedSbeamState(Landroid/content/Intent;)V
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 235
    const-string v1, "turn_on"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 236
    .local v0, "bOn":Z
    const-string v1, "[SBeam]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBeamEnabler.changedSbeamState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    .line 238
    return-void
.end method

.method private disableButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 248
    :cond_1
    return-void
.end method

.method private initEnabler()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->initPreferenceForSbeam(Landroid/content/Context;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 145
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.initEnabler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 149
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.action.SBEAM_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static initPreferenceForSbeam(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    const-string v2, "[SBeam]"

    const-string v3, "SBeamEnabler.initPreferenceForSbeam"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v2, "pref_sbeam"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 295
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 296
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SBeam_support"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    const-string v2, "SBeam_support"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    :cond_0
    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSBeamOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    const-string v1, "pref_sbeam"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 356
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "SBeam_on_off"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static procAbeamChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 322
    return-void
.end method

.method public static saveSbeamOn(Landroid/content/Context;ZZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bOn"    # Z
    .param p2, "bSavedLastState"    # Z

    .prologue
    .line 340
    const-string v2, "[SBeam]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBeamEnabler.saveSbeamOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v2, "pref_sbeam"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 344
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SBeam_on_off"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 346
    if-eqz p2, :cond_0

    .line 347
    const-string v2, "sbeam_last_status"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 348
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sbeam_mode"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    return-void

    .line 350
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setState(ZZ)V
    .locals 4
    .param p1, "bEnable"    # Z
    .param p2, "bOn"    # Z

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isSBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    const/4 p1, 0x0

    .line 254
    const/4 p2, 0x0

    .line 257
    :cond_0
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.setState : Enable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") On("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, v3}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    .line 260
    iput-boolean p2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 262
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 264
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.setState : isChecked ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 274
    :cond_2
    return-void
.end method

.method private turnOn(Z)Z
    .locals 7
    .param p1, "bOn"    # Z

    .prologue
    const v6, 0x7f090221

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 153
    const-string v1, "[SBeam]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBeamEnabler.turnOn("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v4}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZ)V

    .line 157
    iput-boolean p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 158
    iput-boolean p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 161
    .local v0, "nState":I
    const-string v1, "[SBeam]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBeamEnabler.turnOn : Current("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x5

    if-ne v1, v0, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 165
    iput-boolean v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 166
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 183
    .end local v0    # "nState":I
    :cond_0
    :goto_0
    return v4

    .line 168
    .restart local v0    # "nState":I
    :cond_1
    if-eq v5, v0, :cond_2

    const/4 v1, 0x2

    if-eq v1, v0, :cond_2

    .line 169
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 171
    iput-boolean v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 172
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 176
    :cond_2
    if-ne v5, v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_0
.end method


# virtual methods
.method public changedNfcState(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "newState"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 187
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.changedNfcState : REQ ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] CUR ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-ne v3, p1, :cond_3

    .line 190
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_OFF"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_0

    .line 192
    iput-boolean v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 195
    :cond_0
    if-eqz p2, :cond_2

    .line 196
    const-string v0, "android.nfc.extra.PREF_ADAPTER_STATE"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.changedNfcState : POWER OFF"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    :goto_0
    return-void

    .line 202
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    goto :goto_0

    .line 203
    :cond_3
    const/4 v0, 0x3

    if-ne v0, p1, :cond_6

    .line 204
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_ON"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.changedNfcState : Enabled NDEF"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-direct {p0, v3, v0}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    .line 216
    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    goto :goto_0

    .line 209
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_5

    .line 210
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 211
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    goto :goto_1

    .line 213
    :cond_5
    invoke-direct {p0, v3, v4}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    goto :goto_1

    .line 217
    :cond_6
    const/4 v0, 0x4

    if-ne v0, p1, :cond_7

    .line 218
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_TURNING_OFF"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->disableButton()V

    goto :goto_0

    .line 220
    :cond_7
    const/4 v0, 0x2

    if-ne v0, p1, :cond_8

    .line 221
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_TURNING_ON"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->disableButton()V

    goto :goto_0

    .line 223
    :cond_8
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 224
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.STATE_CARD_MODE_ON"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_9

    .line 227
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_0

    .line 229
    :cond_9
    invoke-direct {p0, v3, v4}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "btnView"    # Landroid/widget/CompoundButton;
    .param p2, "bOn"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 137
    invoke-direct {p0, p2}, Lcom/android/settings/nfc/SBeamEnabler;->turnOn(Z)Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 140
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "salesCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 117
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 118
    .local v0, "bOn":Z
    iget-object v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v4

    if-ne v4, v0, :cond_2

    move v2, v3

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    const-string v4, "CHM"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "CHC"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 122
    :cond_3
    iget-object v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-static {v4, v5}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 123
    const-string v4, "[SBeam]"

    const-string v5, "The S-beam should not be turned on in AirPlane mode"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0, v2, v2}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    .line 125
    iget-object v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f090235

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 126
    if-nez v0, :cond_0

    move v2, v3

    .line 129
    goto :goto_0

    .line 132
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/SBeamEnabler;->turnOn(Z)Z

    move-result v2

    goto :goto_0
.end method

.method public procOnPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    return-void
.end method

.method public procOnResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 82
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/nfc/SBeamEnabler;->changedNfcState(ILandroid/content/Intent;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isSBeamAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    invoke-direct {p0, v3, v3}, Lcom/android/settings/nfc/SBeamEnabler;->setState(ZZ)V

    .line 101
    :cond_2
    return-void
.end method
