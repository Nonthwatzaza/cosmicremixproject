.class public Lcom/android/systemui/multiwindow/CenterBarWindow;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;
    }
.end annotation


# static fields
.field private static final FLING_VELOCITY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "FlashBarService"


# instance fields
.field private final CENTER_BAR_DIRECTION_BOTTOM:S

.field private final CENTER_BAR_DIRECTION_LEFT:S

.field private final CENTER_BAR_DIRECTION_RIGHT:S

.field private final CENTER_BAR_DIRECTION_TOP:S

.field private final DEBUG:Z

.field private final ESTIMATE_INVALID_VALUE:S

.field private final WINDOW_LANDSCAPE_MODE:S

.field private final WINDOW_PORTRAIT_MODE:S

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCenterBar:Landroid/widget/ImageButton;

.field private mCenterBarArrow:Landroid/widget/ImageButton;

.field private mCenterBarDirection:I

.field private mCenterBarDockingSize:I

.field mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

.field private mCenterBarFlingSize:I

.field private mCenterBarGestureDetector:Landroid/view/GestureDetector;

.field private mCenterBarLayout:Landroid/view/View;

.field private mCenterBarRectForSplit:Landroid/graphics/Rect;

.field private mCenterBarSize:I

.field private mCenterBarTouchApprovalDistance:I

.field mCenterBarTouchListener:Landroid/view/View$OnTouchListener;

.field private mCenterBarWindow:Landroid/view/Window;

.field private mContext:Landroid/content/Context;

.field private mCurrentStatusBarHeight:I

.field private mDisplayHeight:I

.field private mDisplayOrientation:I

.field private mDisplayWidth:I

.field private mFixedCenterBarCaller:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusZoneInfo:I

.field private mIsCenterBarFixed:Z

.field private mIvt:[B

.field private mMode:I

.field private mTouchEventX:I

.field private mTouchEventY:I

.field private mTouchStartX:I

.field private mTouchStartY:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mbHandle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->DEBUG:Z

    .line 44
    iput-short v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->WINDOW_PORTRAIT_MODE:S

    .line 45
    iput-short v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->WINDOW_LANDSCAPE_MODE:S

    .line 47
    iput-short v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_TOP:S

    .line 48
    iput-short v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_BOTTOM:S

    .line 49
    iput-short v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_RIGHT:S

    .line 50
    const/4 v4, 0x3

    iput-short v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->CENTER_BAR_DIRECTION_LEFT:S

    .line 51
    iput-short v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->ESTIMATE_INVALID_VALUE:S

    .line 58
    const/16 v4, 0x26

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B

    .line 90
    iput v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    .line 91
    iput v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    .line 92
    iput v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDockingSize:I

    .line 93
    iput v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchApprovalDistance:I

    .line 95
    sget v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_UNKNOWN:I

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    .line 97
    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIsCenterBarFixed:Z

    .line 98
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFixedCenterBarCaller:Ljava/util/ArrayList;

    .line 264
    new-instance v4, Lcom/android/systemui/multiwindow/CenterBarWindow$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/multiwindow/CenterBarWindow$2;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    .line 539
    new-instance v4, Lcom/android/systemui/multiwindow/CenterBarWindow$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/multiwindow/CenterBarWindow$4;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchListener:Landroid/view/View$OnTouchListener;

    .line 216
    const-string v4, "FlashBarService"

    const-string v5, "CenterBarWindow"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-object p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    .line 220
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 221
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;

    .line 222
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/SystemVibrator;

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    .line 224
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    .line 225
    iput v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 227
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->getArrangeMode(Landroid/content/res/Configuration;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I

    .line 229
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 230
    .local v3, "fullscreen":Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 232
    iget v4, v3, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    .line 233
    iget v4, v3, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    .line 234
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    .line 236
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 237
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 238
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I

    .line 239
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I

    .line 241
    const-string v4, "FlashBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CenterBarWindow : mDisplayWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDisplayHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v4, "FlashBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CenterBarWindow : mDisplayOrientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v4, "FlashBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CenterBarWindow : mCenterBarRefX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCenterBarRefY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mbHandle:Z

    .line 247
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    .line 248
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    .line 249
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDockingSize:I

    .line 250
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00d9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchApprovalDistance:I

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarWindow()V

    .line 254
    new-instance v2, Landroid/content/IntentFilter;

    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->ACTION_NOTIFY_FOCUS_WINDOWS:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 255
    .local v2, "centerBarfocusFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->ACTION_ARRANGE_CONTROL_BAR:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "centerBarArrangeFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    new-instance v1, Landroid/content/IntentFilter;

    sget-object v4, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->ACTION_CONTROL_BAR_FIX:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, "centerBarFixFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    return-void

    .line 58
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x4dt
        0x0t
        0x61t
        0x0t
        0x67t
        0x0t
        0x53t
        0x0t
        0x77t
        0x0t
        0x65t
        0x0t
        0x65t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/multiwindow/CenterBarWindow;Landroid/content/res/Configuration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;
    .param p1, "x1"    # Landroid/content/res/Configuration;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->updateCenterBarRect(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchApprovalDistance:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I

    return p1
.end method

.method static synthetic access$1802(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/CenterBarWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIsCenterBarFixed:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/multiwindow/CenterBarWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIsCenterBarFixed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/CenterBarWindow;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFixedCenterBarCaller:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/CenterBarWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/multiwindow/CenterBarWindow;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/CenterBarWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method private addWindow(Landroid/view/View;IIII)Landroid/view/Window;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "windowType"    # I
    .param p5, "privateFlags"    # I

    .prologue
    const/4 v3, 0x0

    .line 122
    const-string v4, "FlashBarService"

    const-string v5, "addWindow view"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 126
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v2

    .line 127
    .local v2, "window":Landroid/view/Window;
    if-nez v2, :cond_1

    move-object v2, v3

    .line 148
    .end local v2    # "window":Landroid/view/Window;
    :cond_0
    :goto_0
    return-object v2

    .line 131
    .restart local v2    # "window":Landroid/view/Window;
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 133
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v2, v4, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 134
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 137
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v3, p5

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 138
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 140
    invoke-virtual {v2, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 141
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 143
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 144
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private createCenterBarLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 152
    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 153
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "centerBarView":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/multiwindow/CenterBarWindow$1;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/multiwindow/CenterBarWindow$1;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;Landroid/content/Context;)V

    .line 183
    .local v1, "hoveringWrapLayout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 186
    return-object v1
.end method

.method private makeCenterBarWindow()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 190
    const/16 v4, 0x834

    .line 191
    .local v4, "windowType":I
    const/4 v5, 0x0

    .line 192
    .local v5, "privateFlags":I
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->createCenterBarLayout()Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, "centerBarView":Landroid/view/View;
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "TYPE_MULTI_WINDOW_CONTROL_BAR"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 195
    .local v6, "field":Ljava/lang/reflect/Field;
    if-eqz v6, :cond_0

    .line 196
    invoke-virtual {v6, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 199
    :cond_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v3, "PRIVATE_FLAG_NOTIFY_SYSTEMUI_VISIBILITY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 200
    .local v7, "privatefield":Ljava/lang/reflect/Field;
    if-eqz v7, :cond_1

    .line 201
    invoke-virtual {v7, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "privatefield":Ljava/lang/reflect/Field;
    :cond_1
    :goto_0
    move-object v0, p0

    move v3, v2

    .line 207
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/multiwindow/CenterBarWindow;->addWindow(Landroid/view/View;IIII)Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    if-nez v0, :cond_2

    .line 213
    :goto_1
    return-void

    .line 211
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {p0, v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->setWindow(Landroid/view/Window;)V

    goto :goto_1

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0

    .line 203
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private updateCenterBarRect(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 702
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p1, v1}, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->setCenterBarRect(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    .line 703
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_0
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v1, v2}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->setSplitRect(ILandroid/graphics/Rect;)V

    .line 708
    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public centerControlBarDocking()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 492
    const-string v3, "FlashBarService"

    const-string v4, "centerControlBarDocking"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDockingSize:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 496
    .local v0, "dockingRange":I
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    if-ne v3, v1, :cond_2

    .line 497
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_0

    .line 498
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iput v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 499
    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 527
    :goto_0
    return v1

    .line 501
    :cond_0
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_1

    .line 502
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 503
    iput v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_0

    .line 505
    :cond_1
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_5

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_5

    .line 507
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    goto :goto_0

    .line 511
    :cond_2
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_3

    .line 512
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 513
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_0

    .line 516
    :cond_3
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iget v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_4

    .line 517
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 518
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    goto :goto_0

    .line 521
    :cond_4
    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_5

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_5

    .line 523
    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    goto :goto_0

    :cond_5
    move v1, v2

    .line 527
    goto :goto_0
.end method

.method public createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    .line 101
    const-string v2, "FlashBarService"

    const-string v3, "createLayoutParams"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x2

    .line 106
    .local v1, "windowType":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1040340

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 114
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 115
    const v2, 0x1030004

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    return-object v0
.end method

.method public drawCenterBar(II)V
    .locals 4
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    .line 423
    const-string v1, "FlashBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawCenterBar : mDisplayOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pos("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 427
    .local v0, "centerBarLayout":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 428
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 429
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 430
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 431
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 432
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 443
    return-void

    .line 434
    .end local v0    # "centerBarLayout":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 435
    .restart local v0    # "centerBarLayout":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 436
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCurrentStatusBarHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 437
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 438
    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 439
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 440
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public drawCenterBarArrow()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 400
    const-string v0, "FlashBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawCenterBarArrow : mFocusZoneInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 404
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    if-ne v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 420
    :goto_0
    return-void

    .line 406
    :cond_0
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    if-ne v0, v1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 412
    :cond_2
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    if-ne v0, v1, :cond_3

    .line 413
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 414
    :cond_3
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mFocusZoneInfo:I

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    if-ne v0, v1, :cond_4

    .line 415
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 417
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public handleCenterBarFling()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 531
    const-string v0, "FlashBarService"

    const-string v1, "handleCenterBarFling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->updateCenterBarRect(Landroid/content/res/Configuration;)V

    .line 533
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 534
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 535
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 536
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 537
    return-void
.end method

.method public makeCenterBarLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 377
    const-string v1, "FlashBarService"

    const-string v2, "makeCenterBarLayout"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 381
    .local v0, "centerBarLayout":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 382
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 383
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 384
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 385
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 386
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 387
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 388
    const-string v1, "MultiWindow/CenterBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 390
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 393
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    .line 394
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 396
    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    const v2, 0x7f0d000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    .line 397
    return-void
.end method

.method public makeCenterBarRect()V
    .locals 3

    .prologue
    .line 446
    const-string v0, "FlashBarService"

    const-string v1, "makeCenterBarRect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->getStatusBarHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCurrentStatusBarHeight:I

    .line 448
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 450
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 451
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCurrentStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 452
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCurrentStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 459
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 455
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 456
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCurrentStatusBarHeight:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 457
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCurrentStatusBarHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public makeCenterBarRectForFling(I)V
    .locals 4
    .param p1, "centerBarFlingDirection"    # I

    .prologue
    const/4 v3, 0x0

    .line 462
    const-string v0, "FlashBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCenterBarRectForFling : direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iput p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    .line 466
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    if-nez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 468
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 469
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 470
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 487
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I

    .line 488
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I

    .line 489
    return-void

    .line 471
    :cond_1
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 472
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 473
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 474
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 475
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 476
    :cond_2
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 477
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 478
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 479
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 480
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 481
    :cond_3
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 483
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarFlingSize:I

    iget v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 484
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 485
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 598
    const-string v4, "FlashBarService"

    const-string v6, "onConfigurationChanged"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-static {p1}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->getArrangeMode(Landroid/content/res/Configuration;)I

    move-result v4

    sget v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_TOGGLE_MASK:I

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v4, v6

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I

    .line 601
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I

    sget v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED:I

    if-ne v4, v6, :cond_1

    .line 603
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->createCenterBarLayout()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    .line 604
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 606
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    const v6, 0x7f0d000a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    .line 607
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 608
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarLayout:Landroid/view/View;

    const v6, 0x7f0d000b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    .line 610
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 611
    .local v1, "fullscreen":Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 612
    iget v4, v1, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayWidth:I

    .line 613
    iget v4, v1, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayHeight:I

    .line 616
    move-object v0, p1

    .line 617
    .local v0, "deviceConfig":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    .line 618
    .local v2, "orientation":I
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    if-eq v2, v4, :cond_2

    const/4 v3, 0x1

    .line 620
    .local v3, "orientationChanged":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 621
    iput v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    .line 622
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->getCenterBarRect(Landroid/content/res/Configuration;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 624
    :cond_0
    const-string v4, "FlashBarService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConfigurationChanged : mDisplayOrientation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " changedRect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v4, v6}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->setSplitRect(ILandroid/graphics/Rect;)V

    .line 628
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/view/View;->setPressed(Z)V

    .line 629
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/view/View;->setPressed(Z)V

    .line 630
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBarArrow()V

    .line 631
    iget-object v4, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 633
    .end local v0    # "deviceConfig":Landroid/content/res/Configuration;
    .end local v1    # "fullscreen":Landroid/graphics/Point;
    .end local v2    # "orientation":I
    .end local v3    # "orientationChanged":Z
    :cond_1
    return-void

    .restart local v0    # "deviceConfig":Landroid/content/res/Configuration;
    .restart local v1    # "fullscreen":Landroid/graphics/Point;
    .restart local v2    # "orientation":I
    :cond_2
    move v3, v5

    .line 618
    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 638
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 637
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 636
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public setWindow(Landroid/view/Window;)V
    .locals 4
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 355
    const-string v0, "FlashBarService"

    const-string v1, "setWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iput-object p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    .line 358
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/multiwindow/CenterBarWindow$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/CenterBarWindow$3;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 367
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/multiwindow/CenterBarWindow$CenterBarGestureListener;-><init>(Lcom/android/systemui/multiwindow/CenterBarWindow;Lcom/android/systemui/multiwindow/CenterBarWindow$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarGestureDetector:Landroid/view/GestureDetector;

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarLayout()V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->getCenterBarRect(Landroid/content/res/Configuration;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 371
    iget v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->setSplitRect(ILandroid/graphics/Rect;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBarArrow()V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 374
    return-void
.end method
