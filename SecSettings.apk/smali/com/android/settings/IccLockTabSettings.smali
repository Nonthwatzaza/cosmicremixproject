.class public Lcom/android/settings/IccLockTabSettings;
.super Landroid/app/TabActivity;
.source "IccLockTabSettings.java"


# static fields
.field private static mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 65
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 66
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 69
    :cond_0
    return-void
.end method

.method private getSimIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "Sim_id"    # I

    .prologue
    .line 140
    const/4 v3, 0x0

    .line 141
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 142
    .local v4, "sim_icon2":I
    const/4 v1, 0x0

    .line 145
    .local v1, "retDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 153
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 154
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

    invoke-static {v5}, Lcom/android/settings/IccLockTabSettings;->log(Ljava/lang/String;)V

    .line 156
    packed-switch v2, :pswitch_data_0

    .line 174
    :goto_2
    return-object v1

    .line 148
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 153
    goto :goto_1

    .line 159
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 160
    goto :goto_2

    .line 162
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 163
    goto :goto_2

    .line 165
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 166
    goto :goto_2

    .line 168
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 169
    goto :goto_2

    .line 171
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 156
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
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "retString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getContentResolver()Landroid/content/ContentResolver;

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
    .line 178
    const-string v0, "IccLockTabSettings"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method private setupSim1Tab()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    sget-object v0, Lcom/android/settings/IccLockTabSettings;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "sim1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 98
    invoke-direct {p0, v3}, Lcom/android/settings/IccLockTabSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/android/settings/IccLockTabSettings;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 100
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/IccLockSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const-string v2, "icclockTab"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const-class v2, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 104
    sget-object v1, Lcom/android/settings/IccLockTabSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 105
    return-void
.end method

.method private setupSim2Tab()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    sget-object v0, Lcom/android/settings/IccLockTabSettings;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "sim2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 109
    invoke-direct {p0, v3}, Lcom/android/settings/IccLockTabSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/android/settings/IccLockTabSettings;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/IccLockSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    const-string v2, "icclockTab"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-class v2, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 115
    sget-object v1, Lcom/android/settings/IccLockTabSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    sput-object v0, Lcom/android/settings/IccLockTabSettings;->mTabHost:Landroid/widget/TabHost;

    .line 57
    invoke-direct {p0}, Lcom/android/settings/IccLockTabSettings;->setupSim1Tab()V

    .line 58
    invoke-direct {p0}, Lcom/android/settings/IccLockTabSettings;->setupSim2Tab()V

    .line 59
    invoke-direct {p0}, Lcom/android/settings/IccLockTabSettings;->configureActionBar()V

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 86
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 73
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/IccLockTabSettings;->finish()V

    .line 76
    const/4 v0, 0x1

    return v0

    .line 73
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 90
    return-void
.end method
