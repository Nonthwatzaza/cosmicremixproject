.class public Lcom/android/settings/RomControl;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RomControl.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field mBrightnessController:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f070098

    invoke-virtual {p0, v1}, Lcom/android/settings/RomControl;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/RomControl;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "mBrightnessController"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/RomControl;->mBrightnessController:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x0

    move v5, v2

    return v5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 127
    iget-object v1, p0, Lcom/android/settings/RomControl;->mBrightnessController:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings/RomControl;->mBrightnessController:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 129
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/android/settings/RomControl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mBrightnessController"

    .line 130
    if-eqz v0, :cond_1

    move v1, v2

    .line 129
    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    .end local v0    # "value":Z
    :cond_0
    return v2

    .line 130
    .restart local v0    # "value":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
