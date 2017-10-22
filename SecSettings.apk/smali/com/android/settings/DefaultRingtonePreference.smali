.class public Lcom/android/settings/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# instance fields
.field private isWidget:Ljava/lang/Boolean;

.field private mActivePhone:I

.field private mRingtone:Lcom/android/settings/SoundSettings;

.field private mRingtoneDual:Lcom/android/settings/DualSoundRingtoneSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 44
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/DualSoundRingtoneSettings;

    move-object v1, v0

    .line 45
    .local v1, "dualSound":Lcom/android/settings/DualSoundRingtoneSettings;
    invoke-virtual {v1}, Lcom/android/settings/DualSoundRingtoneSettings;->getmActivePhone()I

    move-result v3

    iput v3, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v1    # "dualSound":Lcom/android/settings/DualSoundRingtoneSettings;
    :goto_0
    const-string v3, "DefaultRingtonePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DefaultRingtonePreference | mActivePhone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v3

    iget v4, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->convertSettingForType(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 58
    return-void

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "ex":Ljava/lang/ClassCastException;
    iput v4, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    .line 49
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    .line 53
    :cond_0
    const-string v3, "DefaultRingtonePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DefaultRingtonePreference casting exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public directRingtone()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 112
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/preference/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 94
    .local v0, "result":Ljava/lang/Boolean;
    if-ne p2, v3, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneDual:Lcom/android/settings/DualSoundRingtoneSettings;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->onMusicPickerChosen(I)V

    .line 102
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eq p2, v3, :cond_1

    .line 103
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 104
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtone:Lcom/android/settings/SoundSettings;

    invoke-virtual {v1}, Lcom/android/settings/SoundSettings;->finish()V

    .line 106
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtone:Lcom/android/settings/SoundSettings;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SoundSettings;->onMusicPickerChosen(I)V

    goto :goto_0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 62
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 68
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    const-string v0, "DefaultRingtonePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActivePhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DefaultRingtonePreference;->mActivePhone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 74
    :cond_0
    const-string v0, "neutral_button"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    const-string v0, "neutral_button_text"

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090e8d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    :cond_1
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 82
    return-void
.end method

.method public setObject(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .param p1, "soundSettings"    # Lcom/android/settings/SoundSettings;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtone:Lcom/android/settings/SoundSettings;

    .line 117
    return-void
.end method

.method public setObjectDual(Lcom/android/settings/DualSoundRingtoneSettings;)V
    .locals 0
    .param p1, "soundSettings"    # Lcom/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtoneDual:Lcom/android/settings/DualSoundRingtoneSettings;

    .line 122
    return-void
.end method
