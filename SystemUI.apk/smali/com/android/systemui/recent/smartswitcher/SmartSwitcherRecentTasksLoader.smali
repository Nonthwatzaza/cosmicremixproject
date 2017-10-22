.class public Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;
.super Ljava/lang/Object;
.source "SmartSwitcherRecentTasksLoader.java"


# static fields
.field static final DEBUG:Z = false

.field private static final DISPLAY_TASKS:I = 0x13

.field private static final MAX_TASKS:I = 0x14

.field static final TAG:Ljava/lang/String; = "FlashBoardRecentTasksLoader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultIconBackground:Landroid/graphics/Bitmap;

.field private mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

.field private mIconDpi:I

.field mMultuWindowReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentsPanel:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

.field private mTaskLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field needMWList:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->needMWList:Ljava/lang/Boolean;

    .line 648
    new-instance v10, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$2;

    invoke-direct {v10, p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$2;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)V

    iput-object v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mMultuWindowReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 121
    .local v7, "res":Landroid/content/res/Resources;
    const/high16 v10, 0x7f090000

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 123
    .local v6, "isTablet":Z
    if-eqz v6, :cond_0

    .line 125
    const-string v10, "activity"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 129
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v10

    iput v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mIconDpi:I

    .line 139
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    :goto_0
    const/high16 v10, 0x1050000

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 141
    .local v3, "defaultIconSize":I
    iget v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mIconDpi:I

    mul-int/2addr v10, v3

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int v5, v10, v11

    .line 143
    .local v5, "iconSize":I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mDefaultIconBackground:Landroid/graphics/Bitmap;

    .line 147
    const v10, 0x1050002

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 151
    .local v9, "thumbnailWidth":I
    const v10, 0x1050001

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 155
    .local v8, "thumbnailHeight":I
    const v10, 0x7f0202b5

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 157
    .local v2, "color":I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    .line 161
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    invoke-direct {v1, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 163
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 165
    new-instance v4, Landroid/content/IntentFilter;

    const-string v10, "com.sec.android.action.MULTIWINDOW_SMART_SWITCHER"

    invoke-direct {v4, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 166
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mMultuWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v10, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    return-void

    .line 133
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v2    # "color":I
    .end local v3    # "defaultIconSize":I
    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "iconSize":I
    .end local v8    # "thumbnailHeight":I
    .end local v9    # "thumbnailWidth":I
    :cond_0
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mIconDpi:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 376
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 386
    .local v3, "resources":Landroid/content/res/Resources;
    :goto_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    .line 388
    const/4 v1, 0x0

    .line 390
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {p2, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_1

    .line 416
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    return-object v1

    .line 380
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 390
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 404
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz v3, :cond_2

    .line 406
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v2

    .line 408
    .local v2, "iconId":I
    if-eqz v2, :cond_2

    .line 410
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 416
    .end local v2    # "iconId":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2
.end method


# virtual methods
.method public cancelLoadingTasks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 422
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    .line 428
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->needMWList:Ljava/lang/Boolean;

    .line 434
    :cond_0
    return-void
.end method

.method public cancelLoadingThumbnailsAndIcons()V
    .locals 0

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->cancelLoadingTasks()V

    .line 646
    return-void
.end method

.method createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/content/pm/ActivityInfo;)Lcom/android/systemui/recent/TaskDescription;
    .locals 17
    .param p1, "taskId"    # I
    .param p2, "persistentTaskId"    # I
    .param p3, "baseIntent"    # Landroid/content/Intent;
    .param p4, "origActivity"    # Landroid/content/ComponentName;
    .param p5, "description"    # Ljava/lang/CharSequence;
    .param p6, "homeInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 200
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 202
    .local v12, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    .line 204
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 208
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 228
    .local v15, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const v3, -0x200001

    and-int/2addr v2, v3

    const/high16 v3, 0x10000000

    or-int/2addr v2, v3

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 232
    const/4 v2, 0x0

    invoke-virtual {v15, v12, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 234
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_5

    .line 236
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 238
    .local v11, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v11, v15}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 242
    .local v16, "title":Ljava/lang/String;
    new-instance v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 244
    .local v8, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v14

    .line 246
    .local v14, "mAppPolicy":Landroid/app/enterprise/ApplicationPolicy;
    iget-object v2, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;)[B

    move-result-object v10

    .line 248
    .local v10, "imageData":[B
    const/4 v9, 0x0

    .line 250
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_1

    .line 252
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 254
    .local v13, "is":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    invoke-static {v13, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 256
    const-string v2, "FlashBoardRecentTasksLoader"

    const-string v3, "ApplicationIcon obtained from EDM database"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v13    # "is":Ljava/io/ByteArrayInputStream;
    :cond_1
    if-nez v9, :cond_2

    .line 262
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_2

    .line 264
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v2, :cond_4

    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v15, v2}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 272
    :cond_2
    if-nez v9, :cond_3

    .line 274
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 280
    :cond_3
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 288
    new-instance v1, Lcom/android/systemui/recent/TaskDescription;

    iget-object v6, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/recent/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 292
    .local v1, "item":Lcom/android/systemui/recent/TaskDescription;
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/TaskDescription;->setLabel(Ljava/lang/CharSequence;)V

    .line 306
    .end local v1    # "item":Lcom/android/systemui/recent/TaskDescription;
    .end local v8    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "imageData":[B
    .end local v11    # "info":Landroid/content/pm/ActivityInfo;
    .end local v14    # "mAppPolicy":Landroid/app/enterprise/ApplicationPolicy;
    .end local v16    # "title":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 264
    .restart local v8    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "imageData":[B
    .restart local v11    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v14    # "mAppPolicy":Landroid/app/enterprise/ApplicationPolicy;
    .restart local v16    # "title":Ljava/lang/String;
    :cond_4
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 306
    .end local v8    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "imageData":[B
    .end local v11    # "info":Landroid/content/pm/ActivityInfo;
    .end local v14    # "mAppPolicy":Landroid/app/enterprise/ApplicationPolicy;
    .end local v16    # "title":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mDefaultIconBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDefaultThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 352
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 360
    :try_start_0
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 364
    :goto_0
    return-object v1

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public isRunningMultiWindow(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 5
    .param p1, "r"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    const/4 v2, 0x0

    .line 624
    if-eqz p1, :cond_0

    .line 627
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "windowMode"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 628
    .local v1, "windowModeField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 630
    .local v0, "windowMode":I
    sget v3, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    .line 631
    const/4 v2, 0x1

    .line 639
    .end local v0    # "windowMode":I
    .end local v1    # "windowModeField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v2

    .line 636
    :catch_0
    move-exception v3

    goto :goto_0

    .line 635
    :catch_1
    move-exception v3

    goto :goto_0

    .line 634
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method public loadTasksInBackground()V
    .locals 3

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->cancelLoadingTasks()V

    .line 444
    new-instance v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader$1;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    .line 618
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 620
    return-void
.end method

.method loadThumbnailAndIcon(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 6
    .param p1, "td"    # Lcom/android/systemui/recent/TaskDescription;

    .prologue
    .line 312
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 316
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 318
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getPersistentTaskId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v3

    .line 320
    .local v3, "thumbs":Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 326
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    monitor-enter p1

    .line 328
    if-eqz v3, :cond_1

    :try_start_0
    iget-object v4, v3, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 330
    iget-object v4, v3, Landroid/app/ActivityManager$TaskThumbnails;->mainThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 338
    :goto_0
    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {p1, v1}, Lcom/android/systemui/recent/TaskDescription;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 344
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/android/systemui/recent/TaskDescription;->setLoaded(Z)V

    .line 346
    monitor-exit p1

    .line 348
    return-void

    .line 334
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4}, Lcom/android/systemui/recent/TaskDescription;->setThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setRecentsPanel(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;)V
    .locals 0
    .param p1, "recentsPanel"    # Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    .line 176
    return-void
.end method
