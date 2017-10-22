.class public Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;
.super Landroid/widget/LinearLayout;
.source "QuickSettingPanel13.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$SineInOut70;,
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$QuickSettingButtonEditObserver;
    }
.end annotation


# static fields
.field private static final DB_LIST_UPDATE:Ljava/lang/String; = "notification_panel_active_app_list"


# instance fields
.field final TW_TAG:Ljava/lang/String;

.field isExist:[Z

.field isPhone:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonCnt:I

.field mContentAnim:Landroid/animation/AnimatorSet;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurButtonNum:I

.field mDefaultDisplay:Landroid/view/Display;

.field private mDisplayButtonCnt:I

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$QuickSettingButtonEditObserver;

.field private mImpol:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$SineInOut70;

.field public mPosition:I

.field mQBtnLocaleChange:[Ljava/lang/reflect/Method;

.field mQBtnSizeChange:[Ljava/lang/reflect/Method;

.field mQuickSettingButton:[Landroid/view/View;

.field private mlp:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const-string v0, "STATUSBAR-QuickSettingPanel"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->TW_TAG:Ljava/lang/String;

    .line 57
    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mButtonCnt:I

    .line 58
    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    .line 231
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContext:Landroid/content/Context;

    .line 85
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->isPhone:Z

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDefaultDisplay:Landroid/view/Display;

    .line 89
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 91
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 93
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$QuickSettingButtonEditObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$QuickSettingButtonEditObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$QuickSettingButtonEditObserver;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "notification_panel_active_app_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mEditObserver:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$QuickSettingButtonEditObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$SineInOut70;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$SineInOut70;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mImpol:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$SineInOut70;

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->update()V

    .line 100
    return-void
.end method

.method private LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    move-object v0, p1

    .line 193
    .local v0, "active_app_list":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "quickPanelActiveList":[Ljava/lang/String;
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/String;

    .line 197
    .local v2, "main_list":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 198
    aget-object v4, v3, v1

    aput-object v4, v2, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_0
    const-string v4, "STATUSBAR-QuickSettingPanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "main list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "quickPanelActiveList.length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-object v2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->refreshView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;

    .prologue
    .line 51
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mButtonCnt:I

    return v0
.end method

.method private disableQuickSettingButton([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "str"    # [Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_6

    .line 115
    aget-object v1, p1, v0

    const-string v2, "MobileData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->isNetworkSupported:Z

    if-nez v1, :cond_0

    .line 116
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 120
    :cond_0
    aget-object v1, p1, v0

    const-string v2, "AllShareCast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 128
    :cond_1
    aget-object v1, p1, v0

    const-string v2, "DormantMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    :cond_2
    aget-object v1, p1, v0

    const-string v2, "MultiWindow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 140
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 144
    :cond_3
    aget-object v1, p1, v0

    const-string v2, "Sync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 153
    :cond_4
    aget-object v1, p1, v0

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.location.gps"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 156
    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 114
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 161
    :cond_6
    return-object p1
.end method

.method private makeArrayQuickSettingButtonToOneString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # [Ljava/lang/String;

    .prologue
    .line 165
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 167
    aget-object v2, p1, v0

    const-string v3, "not"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private refreshView()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 286
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDefaultDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 292
    iput v12, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->removeAllViewsInLayout()V

    .line 295
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "notification_panel_active_app_list"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 296
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "notification_panel_active_app_list"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->LoadAppslist(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "QBtnAttr":[Ljava/lang/String;
    :goto_0
    array-length v7, v0

    iput v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mButtonCnt:I

    .line 304
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    iget v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mButtonCnt:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    .line 305
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mButtonCnt:I

    new-array v1, v7, [Ljava/lang/Class;

    .line 306
    .local v1, "QBtnClass":[Ljava/lang/Class;
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mButtonCnt:I

    new-array v7, v7, [Landroid/view/View;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mQuickSettingButton:[Landroid/view/View;

    .line 307
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mButtonCnt:I

    new-array v2, v7, [Ljava/lang/reflect/Constructor;

    .line 308
    .local v2, "QBtnConstructor":[Ljava/lang/reflect/Constructor;
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mButtonCnt:I

    new-array v7, v7, [Ljava/lang/reflect/Method;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    .line 309
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mButtonCnt:I

    new-array v7, v7, [Ljava/lang/reflect/Method;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    .line 310
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mButtonCnt:I

    new-array v7, v7, [Z

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->isExist:[Z

    .line 311
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 313
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->setViewWidth()I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 315
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mButtonCnt:I

    if-ge v5, v7, :cond_2

    .line 317
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.android.systemui.statusbar.policy.quicksetting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "QuickSettingButton"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v1, v5

    .line 319
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->isExist:[Z

    const/4 v8, 0x1

    aput-boolean v8, v7, v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->isExist:[Z

    aget-boolean v7, v7, v5

    if-eqz v7, :cond_0

    .line 327
    :try_start_1
    aget-object v7, v1, v5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    aput-object v7, v2, v5

    .line 328
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mQuickSettingButton:[Landroid/view/View;

    aget-object v7, v2, v5

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContext:Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    aput-object v7, v8, v5

    .line 329
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mQuickSettingButton:[Landroid/view/View;

    aget-object v7, v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 330
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mQuickSettingButton:[Landroid/view/View;

    aget-object v7, v7, v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    aget-object v8, v1, v5

    const-string v9, "localeChanged"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    aput-object v8, v7, v5

    .line 333
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    aget-object v8, v1, v5

    const-string v9, "checkTextLength"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    aput-object v8, v7, v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6

    .line 315
    :cond_0
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 298
    .end local v0    # "QBtnAttr":[Ljava/lang/String;
    .end local v1    # "QBtnClass":[Ljava/lang/Class;
    .end local v2    # "QBtnConstructor":[Ljava/lang/reflect/Constructor;
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070012

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->disableQuickSettingButton([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 299
    .restart local v0    # "QBtnAttr":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->makeArrayQuickSettingButtonToOneString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "tempQBtnAttr":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "quicksettingbuttons_list_for_quickcommand"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 320
    .end local v6    # "tempQBtnAttr":Ljava/lang/String;
    .restart local v1    # "QBtnClass":[Ljava/lang/Class;
    .restart local v2    # "QBtnConstructor":[Ljava/lang/reflect/Constructor;
    .restart local v5    # "i":I
    :catch_0
    move-exception v4

    .line 321
    .local v4, "e1":Ljava/lang/ClassNotFoundException;
    const-string v7, "STATUSBAR-QuickSettingPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ClassNotFoundException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->isExist:[Z

    aput-boolean v12, v7, v5

    goto/16 :goto_2

    .line 335
    .end local v4    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 336
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string v7, "STATUSBAR-QuickSettingPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NoSuchMethodException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 337
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 338
    .local v3, "e":Ljava/lang/SecurityException;
    const-string v7, "STATUSBAR-QuickSettingPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "SecurityException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 339
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v3

    .line 340
    .local v3, "e":Ljava/lang/InstantiationException;
    const-string v7, "STATUSBAR-QuickSettingPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "InstantiationException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 341
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v3

    .line 342
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v7, "STATUSBAR-QuickSettingPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "IllegalAccessException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 343
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v3

    .line 344
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "STATUSBAR-QuickSettingPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "IllegalArgumentException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 345
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v3

    .line 346
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v7, "STATUSBAR-QuickSettingPanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "InvocationTargetException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 350
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    invoke-virtual {p0, v12}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->prepareTranslationX(Z)V

    .line 351
    return-void
.end method

.method private setViewWidth()I
    .locals 5

    .prologue
    .line 206
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDefaultDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->update()V

    .line 211
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->isPhone:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->canNavigationBarMove:Z

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 215
    .local v0, "displayWidth":I
    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mCurButtonNum:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    if-le v2, v3, :cond_0

    .line 216
    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mCurButtonNum:I

    .line 219
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mCurButtonNum:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->getDividerWidth()I

    move-result v3

    mul-int/2addr v2, v3

    sub-int v2, v0, v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mCurButtonNum:I

    div-int v1, v2, v3

    .line 224
    .end local v0    # "displayWidth":I
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mCurButtonNum:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->getDividerWidth()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mCurButtonNum:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method private update()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mCurButtonNum:I

    .line 104
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDefaultDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 276
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->isPhone:Z

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->setViewWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 355
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->refreshView()V

    .line 357
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 358
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    return-void
.end method

.method public prepareTranslationX(Z)V
    .locals 3
    .param p1, "isExpanded"    # Z

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->update()V

    .line 365
    const-string v0, "STATUSBAR-QuickSettingPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayButtonCnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurButtonNum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mCurButtonNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mCurButtonNum:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    .line 367
    const/high16 v0, 0x40200000    # 2.5f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->setViewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mPosition:I

    .line 371
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mPosition:I

    if-gez v0, :cond_0

    .line 372
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mPosition:I

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->setTranslationX(F)V

    .line 378
    :cond_1
    if-nez p1, :cond_3

    .line 379
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->hideNavibarOnLock:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mCurButtonNum:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 380
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mPosition:I

    .line 382
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mPosition:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->setTranslationX(F)V

    .line 384
    :cond_3
    const-string v0, "STATUSBAR-QuickSettingPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTranslationX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 369
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mDisplayButtonCnt:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mCurButtonNum:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->setViewWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mPosition:I

    goto :goto_0
.end method

.method public startScrollAnimation()V
    .locals 5

    .prologue
    .line 389
    const-string v1, "STATUSBAR-QuickSettingPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startScrollAnimation  position =   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 394
    :cond_0
    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mPosition:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 395
    .local v0, "quickSettingAnim":Landroid/animation/Animator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mImpol:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13$SineInOut70;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 396
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 397
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContentAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 398
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel13;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 399
    return-void
.end method
