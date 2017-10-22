.class public Lcom/android/settings/NetworkManagementSetting;
.super Landroid/preference/PreferenceActivity;
.source "NetworkManagementSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final image_Entry_1:[I

.field private static final image_Entry_2:[I


# instance fields
.field private enabler:Lcom/android/settings/SimEnabler;

.field private isMasterSIM:Z

.field private mSelectIcon:Landroid/preference/ListPreference;

.field private mSelectName:Landroid/preference/EditTextPreference;

.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 25
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/NetworkManagementSetting;->image_Entry_1:[I

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/NetworkManagementSetting;->image_Entry_2:[I

    return-void

    .line 25
    :array_0
    .array-data 4
        0x7f0202f0
        0x7f020301
        0x7f0202f6
        0x7f0202fe
        0x7f0202f4
    .end array-data

    .line 28
    :array_1
    .array-data 4
        0x7f0202f2
        0x7f020302
        0x7f0202f6
        0x7f0202fe
        0x7f0202f4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/NetworkManagementSetting;->isMasterSIM:Z

    return-void
.end method

.method private addColumn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 141
    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagementSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 79
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 80
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 84
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 105
    iget-boolean v0, p0, Lcom/android/settings/NetworkManagementSetting;->isMasterSIM:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/NetworkManagementSetting;->mSelectIcon:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagementSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_1"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/NetworkManagementSetting;->mSelectName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagementSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 110
    const-string v0, "NetworkManagementSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM 1 ICON Default = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagementSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_icon_1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings/NetworkManagementSetting;->mSelectIcon:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagementSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_icon_2"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/NetworkManagementSetting;->mSelectName:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagementSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 116
    const-string v0, "NetworkManagementSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM 2 ICON Default = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/NetworkManagementSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_icon_2"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public ChangeSimStateSendIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 206
    const-string v2, "NetworkManagementSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.SIMCARD_MGT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v3, "simcard_sim_id"

    iget-boolean v2, p0, Lcom/android/settings/NetworkManagementSetting;->isMasterSIM:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v2, "select_icon"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const-string v2, "simcard_sim_icon"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    :cond_0
    const-string v2, "select_name"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    const-string v2, "simcard_sim_name"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    :cond_1
    const-string v2, "NetworkManagementSetting"

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

    .line 220
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/NetworkManagementSetting;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_1
    return-void

    .line 209
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NetworkManagementSetting"

    const-string v3, "not found ACTION_SIM_MGT_CHANGED"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f070047

    invoke-virtual {p0, v1}, Lcom/android/settings/NetworkManagementSetting;->addPreferencesFromResource(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagementSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 45
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "sim_pref"

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/NetworkManagementSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/NetworkManagementSetting;->pref:Landroid/content/SharedPreferences;

    .line 46
    iget-object v1, p0, Lcom/android/settings/NetworkManagementSetting;->pref:Landroid/content/SharedPreferences;

    const-string v2, "isSim1"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/NetworkManagementSetting;->isMasterSIM:Z

    .line 48
    const-string v1, "NetworkManagementSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMasterSIM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/NetworkManagementSetting;->isMasterSIM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v1, "select_icon"

    invoke-virtual {p0, v1}, Lcom/android/settings/NetworkManagementSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/NetworkManagementSetting;->mSelectIcon:Landroid/preference/ListPreference;

    .line 51
    iget-object v1, p0, Lcom/android/settings/NetworkManagementSetting;->mSelectIcon:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    const-string v1, "select_name"

    invoke-virtual {p0, v1}, Lcom/android/settings/NetworkManagementSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/settings/NetworkManagementSetting;->mSelectName:Landroid/preference/EditTextPreference;

    .line 53
    iget-object v1, p0, Lcom/android/settings/NetworkManagementSetting;->mSelectName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    iget-boolean v1, p0, Lcom/android/settings/NetworkManagementSetting;->isMasterSIM:Z

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/settings/NetworkManagementSetting;->mSelectIcon:Landroid/preference/ListPreference;

    const-string v2, "select_icon_1"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 62
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/NetworkManagementSetting;->updateState()V

    .line 63
    invoke-direct {p0}, Lcom/android/settings/NetworkManagementSetting;->configureActionBar()V

    .line 64
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/android/settings/NetworkManagementSetting;->mSelectIcon:Landroid/preference/ListPreference;

    const-string v2, "select_icon_2"

    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 67
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagementSetting;->finish()V

    .line 70
    const/4 v0, 0x1

    return v0

    .line 67
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/NetworkManagementSetting;->enabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SimEnabler;->doPause()V

    .line 96
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 97
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const v9, 0x7f090525

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 145
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "key":Ljava/lang/String;
    const-string v6, "NetworkManagementSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "objValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", key = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-boolean v6, p0, Lcom/android/settings/NetworkManagementSetting;->isMasterSIM:Z

    if-eqz v6, :cond_3

    .line 148
    const-string v6, "select_icon"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 149
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 151
    .local v3, "value":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagementSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "select_icon_1"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    const-string v4, "icon"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/settings/NetworkManagementSetting;->addColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    iget-object v4, p0, Lcom/android/settings/NetworkManagementSetting;->mSelectIcon:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v3    # "value":I
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/NetworkManagementSetting;->ChangeSimStateSendIntent(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 202
    :goto_1
    return v4

    .line 155
    .restart local v3    # "value":I
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "NetworkManagementSetting"

    const-string v6, "could not persist SIM 1 Icon value"

    invoke-static {v4, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "value":I
    :cond_1
    const-string v6, "select_name"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, p2

    .line 159
    check-cast v3, Ljava/lang/String;

    .line 160
    .local v3, "value":Ljava/lang/String;
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "tempString":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 162
    const-string v6, "NetworkManagementSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "case 1 : objValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {p0, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 166
    :cond_2
    const-string v4, "NetworkManagementSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "case 2 : objValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagementSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "select_name_1"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    const-string v4, "name"

    invoke-direct {p0, v4, v3}, Lcom/android/settings/NetworkManagementSetting;->addColumn(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 174
    .end local v2    # "tempString":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const-string v6, "select_icon"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 175
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 177
    .local v3, "value":I
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagementSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "select_icon_2"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    const-string v4, "icon"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/settings/NetworkManagementSetting;->addColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    iget-object v4, p0, Lcom/android/settings/NetworkManagementSetting;->mSelectIcon:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 182
    :catch_1
    move-exception v0

    .line 183
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v4, "NetworkManagementSetting"

    const-string v6, "could not persist SIM 2 Icon value"

    invoke-static {v4, v6, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 185
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "value":I
    :cond_4
    const-string v6, "select_name"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v3, p2

    .line 186
    check-cast v3, Ljava/lang/String;

    .line 187
    .local v3, "value":Ljava/lang/String;
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .restart local v2    # "tempString":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 189
    const-string v6, "NetworkManagementSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "case 1 : objValue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {p0, v9, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 193
    :cond_5
    const-string v4, "NetworkManagementSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "case 2 : objValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/NetworkManagementSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "select_name_2"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 198
    const-string v4, "name"

    invoke-direct {p0, v4, v3}, Lcom/android/settings/NetworkManagementSetting;->addColumn(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 88
    new-instance v0, Lcom/android/settings/SimEnabler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SimEnabler;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/android/settings/NetworkManagementSetting;->enabler:Lcom/android/settings/SimEnabler;

    .line 89
    iget-object v0, p0, Lcom/android/settings/NetworkManagementSetting;->enabler:Lcom/android/settings/SimEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SimEnabler;->doResume()V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/NetworkManagementSetting;->updateState()V

    .line 91
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 102
    return-void
.end method
