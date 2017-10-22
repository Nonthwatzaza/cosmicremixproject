.class public Lcom/android/settings/RingtoneSettingTabActivity;
.super Landroid/app/TabActivity;
.source "RingtoneSettingTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static mTabHost:Landroid/widget/TabHost;


# instance fields
.field private mActivePhone:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 98
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 99
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 102
    :cond_0
    return-void
.end method

.method private getSimIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "Sim_id"    # I

    .prologue
    .line 164
    const/4 v3, 0x0

    .line 165
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 166
    .local v4, "sim_icon2":I
    const/4 v1, 0x0

    .line 170
    .local v1, "retDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 178
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 181
    .local v2, "ret_sim_icon":I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM 1 ICON : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SIM 2 ICON : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ret_sim_icon = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/RingtoneSettingTabActivity;->log(Ljava/lang/String;)V

    .line 183
    packed-switch v2, :pswitch_data_0

    .line 203
    :goto_2
    return-object v1

    .line 174
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 178
    goto :goto_1

    .line 186
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 187
    goto :goto_2

    .line 189
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 190
    goto :goto_2

    .line 192
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 193
    goto :goto_2

    .line 195
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 196
    goto :goto_2

    .line 198
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 183
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

.method private getSimName(I)Ljava/lang/String;
    .locals 3
    .param p1, "Sim_id"    # I

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 152
    .local v0, "retString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string v0, "NetworkSettingsTab"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method private setupSim2Tab()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "sim Id"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    sget-object v1, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "settings_sim2tab"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-direct {p0, v4}, Lcom/android/settings/RingtoneSettingTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/android/settings/RingtoneSettingTabActivity;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 145
    return-void
.end method

.method private setupSimTab()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.DualSoundRingtoneSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v1, "sim Id"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    sget-object v1, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "settings_simtab"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-direct {p0, v4}, Lcom/android/settings/RingtoneSettingTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/android/settings/RingtoneSettingTabActivity;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 135
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sound title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sound title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "tab_title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/RingtoneSettingTabActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    .end local v0    # "tab_title":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    sput-object v1, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 85
    sget-object v1, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->setupSimTab()V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->setupSim2Tab()V

    .line 92
    invoke-direct {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->configureActionBar()V

    .line 93
    sget-object v1, Lcom/android/settings/RingtoneSettingTabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v2, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mActivePhone:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 94
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 106
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/RingtoneSettingTabActivity;->finish()V

    .line 109
    const/4 v0, 0x1

    return v0

    .line 106
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v0, "settings_simtab"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mActivePhone:I

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, "settings_sim2tab"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/RingtoneSettingTabActivity;->mActivePhone:I

    goto :goto_0

    .line 123
    :cond_1
    const-string v0, "NetworkSettingsTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabChanged() : TabId["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
