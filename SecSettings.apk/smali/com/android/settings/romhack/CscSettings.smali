.class public Lcom/android/settings/romhack/CscSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CscSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBrowserExitOptionPref:Landroid/preference/CheckBoxPreference;

.field private mBrowserExitPromptPref:Landroid/preference/CheckBoxPreference;

.field private mBrowserHomePagePref:Landroid/preference/CheckBoxPreference;

.field private mContactsListBtnPref:Landroid/preference/CheckBoxPreference;

.field private mContactsLogBtnPref:Landroid/preference/CheckBoxPreference;

.field private mContactsPhotoPref:Landroid/preference/CheckBoxPreference;

.field private mLauncherEditModePref:Landroid/preference/CheckBoxPreference;

.field private mLauncherPagesLoopPref:Landroid/preference/CheckBoxPreference;

.field private mLauncherTiltPref:Landroid/preference/CheckBoxPreference;

.field private mSettingsCallMsgBlkPref:Landroid/preference/CheckBoxPreference;

.field private mSettingsDataResetPassPref:Landroid/preference/CheckBoxPreference;

.field private mSettingsSoftwareUpdatePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070099

    invoke-virtual {p0, v1}, Lcom/android/settings/romhack/CscSettings;->addPreferencesFromResource(I)V

    const-string v1, "tilt_effect"

    invoke-virtual {p0, v1}, Lcom/android/settings/romhack/CscSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/romhack/CscSettings;->mLauncherTiltPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/romhack/CscSettings;->mLauncherTiltPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "tilt_effect"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "page_rotation"

    invoke-virtual {p0, v1}, Lcom/android/settings/romhack/CscSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/romhack/CscSettings;->mLauncherPagesLoopPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/romhack/CscSettings;->mLauncherPagesLoopPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "page_rotation"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "edit_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/romhack/CscSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/romhack/CscSettings;->mLauncherEditModePref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/romhack/CscSettings;->mLauncherEditModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "edit_mode"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "contacts_list_photo"

    invoke-virtual {p0, v1}, Lcom/android/settings/romhack/CscSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/romhack/CscSettings;->mContactsPhotoPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/romhack/CscSettings;->mContactsPhotoPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "contacts_list_photo"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "contacts_list_call_btn"

    invoke-virtual {p0, v1}, Lcom/android/settings/romhack/CscSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/romhack/CscSettings;->mContactsListBtnPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/romhack/CscSettings;->mContactsListBtnPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "contacts_list_call_btn"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "call_message_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/romhack/CscSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/romhack/CscSettings;->mSettingsCallMsgBlkPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/romhack/CscSettings;->mSettingsCallMsgBlkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "call_message_block"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "security_data_reset_pass"

    invoke-virtual {p0, v1}, Lcom/android/settings/romhack/CscSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/romhack/CscSettings;->mSettingsDataResetPassPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/romhack/CscSettings;->mSettingsDataResetPassPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "security_data_reset_pass"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "software_update_menu"

    invoke-virtual {p0, v1}, Lcom/android/settings/romhack/CscSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/romhack/CscSettings;->mSettingsSoftwareUpdatePref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/romhack/CscSettings;->mSettingsSoftwareUpdatePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "software_update_menu"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_7

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "logs_list_call_btn"

    invoke-virtual {p0, v1}, Lcom/android/settings/romhack/CscSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/romhack/CscSettings;->mContactsLogBtnPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/romhack/CscSettings;->mContactsLogBtnPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "logs_list_call_btn"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_8
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "browser_exit_option"

    invoke-virtual {p0, v1}, Lcom/android/settings/romhack/CscSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/romhack/CscSettings;->mBrowserExitOptionPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/romhack/CscSettings;->mBrowserExitOptionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "browser_exit_option"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_9

    move v1, v2

    :goto_9
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "browser_exit_prompt"

    invoke-virtual {p0, v1}, Lcom/android/settings/romhack/CscSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/romhack/CscSettings;->mBrowserExitPromptPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/romhack/CscSettings;->mBrowserExitPromptPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "browser_exit_prompt"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_a

    move v1, v2

    :goto_a
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v1, "browser_home_page"

    invoke-virtual {p0, v1}, Lcom/android/settings/romhack/CscSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/romhack/CscSettings;->mBrowserHomePagePref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/romhack/CscSettings;->mBrowserHomePagePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "browser_home_page"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_b

    move v1, v2

    :goto_b
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v1, v3

    goto/16 :goto_0

    :cond_1
    move v1, v3

    goto/16 :goto_1

    :cond_2
    move v1, v3

    goto/16 :goto_2

    :cond_3
    move v1, v3

    goto/16 :goto_3

    :cond_4
    move v1, v3

    goto/16 :goto_4

    :cond_5
    move v1, v3

    goto/16 :goto_5

    :cond_6
    move v1, v3

    goto/16 :goto_6

    :cond_7
    move v1, v3

    goto/16 :goto_7

    :cond_8
    move v1, v3

    goto :goto_8

    :cond_9
    move v1, v3

    goto :goto_9

    :cond_a
    move v1, v3

    goto :goto_a

    :cond_b
    move v1, v3

    goto :goto_b
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x0

    move v5, v2

    return v5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/romhack/CscSettings;->mLauncherTiltPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tilt_effect"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/romhack/CscSettings;->mLauncherPagesLoopPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "page_rotation"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/romhack/CscSettings;->mLauncherEditModePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edit_mode"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    :cond_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/settings/romhack/CscSettings;->mContactsPhotoPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contacts_list_photo"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/settings/romhack/CscSettings;->mContactsListBtnPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contacts_list_call_btn"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v0, v1

    :cond_9
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/android/settings/romhack/CscSettings;->mSettingsCallMsgBlkPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_message_block"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    move v0, v1

    :cond_b
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/android/settings/romhack/CscSettings;->mSettingsDataResetPassPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "security_data_reset_pass"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    move v0, v1

    :cond_d
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/android/settings/romhack/CscSettings;->mSettingsSoftwareUpdatePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "software_update_menu"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f

    move v0, v1

    :cond_f
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/android/settings/romhack/CscSettings;->mContactsLogBtnPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "logs_list_call_btn"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_11

    move v0, v1

    :cond_11
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_12
    iget-object v2, p0, Lcom/android/settings/romhack/CscSettings;->mBrowserExitOptionPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_14

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "browser_exit_option"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    move v0, v1

    :cond_13
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lcom/android/settings/romhack/CscSettings;->mBrowserExitPromptPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "browser_exit_prompt"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    move v0, v1

    :cond_15
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_16
    iget-object v2, p0, Lcom/android/settings/romhack/CscSettings;->mBrowserHomePagePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/romhack/CscSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "browser_home_page"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_17

    move v0, v1

    :cond_17
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
