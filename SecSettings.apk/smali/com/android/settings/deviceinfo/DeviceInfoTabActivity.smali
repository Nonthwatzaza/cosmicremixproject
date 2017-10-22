.class public Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;
.super Landroid/app/TabActivity;
.source "DeviceInfoTabActivity.java"

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
    .line 37
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 68
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 69
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 72
    :cond_0
    return-void
.end method

.method private getSimIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "Sim_id"    # I

    .prologue
    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "sim_icon1":I
    const/4 v4, 0x0

    .line 128
    .local v4, "sim_icon2":I
    const/4 v1, 0x0

    .line 131
    .local v1, "retDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "select_icon_2"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 137
    :goto_0
    if-nez p1, :cond_0

    move v2, v3

    .line 138
    .local v2, "ret_sim_icon":I
    :goto_1
    const-string v5, "DeviceInfoTabActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM 1 ICON : "

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

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    packed-switch v2, :pswitch_data_0

    .line 157
    :goto_2
    return-object v1

    .line 133
    .end local v2    # "ret_sim_icon":I
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v2, v4

    .line 137
    goto :goto_1

    .line 142
    .restart local v2    # "ret_sim_icon":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 143
    goto :goto_2

    .line 145
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 146
    goto :goto_2

    .line 148
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 149
    goto :goto_2

    .line 151
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 152
    goto :goto_2

    .line 154
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 140
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
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "retString":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setupSim2Tab()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.deviceinfo.Status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "sim Id"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    sget-object v1, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "settings_sim2tab"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 116
    return-void
.end method

.method private setupSimTab()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.deviceinfo.Status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v1, "sim Id"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    sget-object v1, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->mTabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "settings_simtab"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getSimName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getSimIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 57
    sget-object v0, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 59
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->setupSimTab()V

    .line 60
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->setupSim2Tab()V

    .line 62
    sget-object v0, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v1, p0, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->mActivePhone:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->configureActionBar()V

    .line 64
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 76
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 78
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->finish()V

    .line 79
    const/4 v0, 0x1

    return v0

    .line 76
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v0, "settings_simtab"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->mActivePhone:I

    .line 97
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "settings_sim2tab"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/DeviceInfoTabActivity;->mActivePhone:I

    goto :goto_0

    .line 95
    :cond_1
    const-string v0, "DeviceInfoTabActivity"

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

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
