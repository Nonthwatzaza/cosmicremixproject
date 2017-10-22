.class public Lcom/android/settings/DualSoundRingtoneSettings;
.super Landroid/preference/PreferenceActivity;
.source "DualSoundRingtoneSettings.java"


# instance fields
.field private mActivePhone:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mRingtone2Preference:Landroid/preference/Preference;

.field private mRingtoneNotificationRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private ringtone:Lcom/android/settings/DefaultRingtonePreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 89
    new-instance v0, Lcom/android/settings/DualSoundRingtoneSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DualSoundRingtoneSettings$1;-><init>(Lcom/android/settings/DualSoundRingtoneSettings;)V

    iput-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private UpdateRingtoneNotificationNames()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DualSoundRingtoneSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DualSoundRingtoneSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DualSoundRingtoneSettings;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/DualSoundRingtoneSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DualSoundRingtoneSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/preference/Preference;
    .param p3, "x3"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 155
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 156
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 159
    :cond_0
    return-void
.end method

.method private updateRingtoneData(I)V
    .locals 3
    .param p1, "ringtoneType"    # I

    .prologue
    const/4 v2, 0x1

    .line 287
    if-ne p1, v2, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v2, v0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 294
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "msg"    # I

    .prologue
    .line 173
    if-nez p2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    move-object v6, p0

    .line 175
    .local v6, "context":Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 176
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 177
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x104057d

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 180
    const v0, 0x104057b

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 196
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 184
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Lcom/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 186
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 187
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 190
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 192
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateState(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 228
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 230
    .local v0, "ringerMode":I
    if-eqz p1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 232
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 235
    iget-object v1, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getmActivePhone()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    return v0
.end method

.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "pickedUri"    # Landroid/net/Uri;
    .param p2, "ringtoneType"    # I

    .prologue
    const/4 v3, 0x0

    .line 274
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    :cond_0
    const-string v1, "DualSoundRingtoneSettings"

    const-string v2, "handleRingtonePicked() : Not changed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/DualSoundRingtoneSettings;->updateRingtoneData(I)V

    .line 284
    return-void

    .line 278
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 281
    invoke-static {p0, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 241
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 243
    packed-switch p1, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 245
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 246
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 247
    .local v0, "pickedUri":Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DualSoundRingtoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 252
    .end local v0    # "pickedUri":Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 253
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 254
    .restart local v0    # "pickedUri":Landroid/net/Uri;
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DualSoundRingtoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->configureActionBar()V

    .line 108
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "sim Id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const-string v2, "sim Id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    .line 112
    const-string v2, "DualSoundRingtoneSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mActivePhone : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mActivePhone:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    const-string v2, "sound title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sound title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/DualSoundRingtoneSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    .end local v1    # "title":Ljava/lang/String;
    :cond_1
    const v2, 0x7f07002d

    invoke-virtual {p0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->addPreferencesFromResource(I)V

    .line 121
    const-string v2, "ringtone"

    invoke-virtual {p0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->ringtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 122
    iget-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->ringtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v2, p0}, Lcom/android/settings/DefaultRingtonePreference;->setObjectDual(Lcom/android/settings/DualSoundRingtoneSettings;)V

    .line 125
    const-string v2, "ringtone"

    invoke-virtual {p0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 126
    const-string v2, "ringtone2"

    invoke-virtual {p0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtone2Preference:Landroid/preference/Preference;

    .line 127
    const-string v2, "notification_sound"

    invoke-virtual {p0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 129
    new-instance v2, Lcom/android/settings/DualSoundRingtoneSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DualSoundRingtoneSettings$2;-><init>(Lcom/android/settings/DualSoundRingtoneSettings;)V

    iput-object v2, p0, Lcom/android/settings/DualSoundRingtoneSettings;->mRingtoneNotificationRunnable:Ljava/lang/Runnable;

    .line 152
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 163
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 165
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->finish()V

    .line 166
    const/4 v0, 0x1

    return v0

    .line 163
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onMusicPickerChosen(I)V
    .locals 3
    .param p1, "ringtoneType"    # I

    .prologue
    const/4 v2, 0x1

    .line 261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 265
    if-ne p1, v2, :cond_0

    .line 266
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DualSoundRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/DualSoundRingtoneSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 224
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/DualSoundRingtoneSettings;->updateState(Z)V

    .line 209
    invoke-direct {p0}, Lcom/android/settings/DualSoundRingtoneSettings;->UpdateRingtoneNotificationNames()V

    .line 213
    return-void
.end method
