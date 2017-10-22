.class public Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.super Landroid/widget/FrameLayout;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparator;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;,
        Lcom/android/systemui/statusbar/MiniModeAppsPanel$IconInfo;
    }
.end annotation


# static fields
.field private static final ACTION_MINI_MODE:Ljava/lang/String; = "com.samsung.action.MINI_MODE_SERVICE"

.field private static final CATEGORY_MINI_MODE:Ljava/lang/String; = "com.samsung.category.MINI_MODE_LAUNCHER"

.field private static final DEBUG:Z = false

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_DRAG:Z = false

.field private static final DRAG_LABEL:Ljava/lang/String; = "MiniAppDragItem"

.field private static final DRAG_TEXT:Ljava/lang/String;

.field private static final ICON_LANDSCAPE_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.landscape.focus"

.field private static final ICON_LANDSCAPE_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.landscape.normal"

.field private static final ICON_PORTRAIT_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.portrait.focus"

.field private static final ICON_PORTRAIT_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.portrait.normal"

.field private static final ICON_PREVIEW_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.preview.normal"

.field private static final LONG_PRESS_TIMEOUT:I = 0xfa

.field private static final MESSAGE_APP_ICON_LONG_PRESS:I = 0x2

.field private static final MESSAGE_APP_PREVIEW_LONG_PRESS:I = 0x3

.field private static final MESSAGE_FOCUS_CHANGED:I = 0x1

.field private static final MILLISECOND_SCROLL_AFTER_CLICK_DELAY:I = 0xc8

.field private static final MILLISECOND_SCROLL_DELAY:I = 0x46

.field private static final MINIMODETRAY_DISABLE_ICON_ALPHA:I = 0x66

.field private static final MINIMODETRAY_DISABLE_TEXT_ALPHA:F = 0.5f

.field private static final MINIMODETRAY_DISABLE_TEXT_COLOR:I = -0x77000001

.field private static final MINIMODETRAY_EDIT_DRAG_APPROVAL_DISTANCE:I = 0x14

.field private static final MINIMODETRAY_ENABLE_ICON_ALPHA:I = 0xff

.field private static final MINIMODETRAY_ENABLE_TEXT_ALPHA:F = 1.0f

.field private static final MINIMODETRAY_FOCUSED_TEXT:I = -0xd74401

.field private static final MINIMODETRAY_TEXT:I = -0x1

.field private static final MUITIWINDOW_EDIT_ITEM_COUNT_PER_LINE:I = 0x7

.field private static final MUITIWINDOW_TRAY_CLOSE_TIMEOUT:I = 0x1388

.field private static final NUM_HW_TOUCH_SOUND_CHANNELS:I = 0x1

.field private static final PIXEL_SCROLL_MARGIN:I = 0x6

.field public static final PREIVEW_ANIMATION_DURATION:I = 0x190

.field public static final PREIVEW_ANIMATION_START_OFFSET:I = 0x96

.field private static final SUPPORT_DEFAULT_ICON_LIST_ORDER:Z = false

.field private static SUPPORT_MULTIWINDOW:Z = false

.field private static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "MiniModeAppsPanel"


# instance fields
.field private SUPPORT_MULTIWINDOW_DOWNLOADABLE:Z

.field private SUPPORT_MULTIWINDOW_MULTIINSTANCE:Z

.field private isClosePanel:Z

.field mActionBarHeight:I

.field private mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundProtector:Landroid/view/View;

.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field mBottomGuideLine:Landroid/view/View;

.field mBottomGuideLineRect:Landroid/graphics/Rect;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelButton:Landroid/widget/Button;

.field private mCascadeModeButton:Landroid/widget/LinearLayout;

.field private mCenterBarWindow:Lcom/android/systemui/multiwindow/CenterBarWindow;

.field private mChosenApps:[Ljava/lang/String;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mComponentDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentDescriptionsOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerScroller:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

.field private mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

.field mCurrentAppRect:Landroid/graphics/Rect;

.field mCurrentDragAppIcon:Landroid/widget/ImageView;

.field private mCurrentDraggingView:Landroid/view/View;

.field mCurrentLaunchMode:I

.field private mDoneButton:Landroid/widget/Button;

.field mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

.field private mDualModeButton:Landroid/widget/LinearLayout;

.field private mEditButton:Landroid/widget/Button;

.field private mEditPanelUIEnabled:Z

.field private mEmptyAppsButton:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mGuideLineView:Landroid/view/View;

.field mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpButton:Landroid/widget/LinearLayout;

.field private mIconDpi:I

.field private mIsCascadeMode:Z

.field private mIsScrollDelayed:Z

.field private mIsScrollLeft:Z

.field private mIvt:[B

.field private mLastLocale:Ljava/util/Locale;

.field private mMiniAppBgHeight:I

.field private mMiniAppsBG:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

.field private mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

.field private mMiniAppsScroller:Landroid/view/ViewGroup;

.field private mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

.field private mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

.field mOnDragging:Z

.field private mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

.field private mOrientation:I

.field private mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

.field mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

.field private mPreviewItemClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

.field private mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

.field private mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

.field private mRecentsContainer:Landroid/widget/LinearLayout;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStatusBarHandler:Landroid/os/Handler;

.field mTopGuideLine:Landroid/view/View;

.field mTopGuideLineRect:Landroid/graphics/Rect;

.field private mTrayBGDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

.field private mTrayContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

.field private mTrayIconLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

.field private mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

.field private mTrayItemDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

.field private mVibrator:Landroid/os/SystemVibrator;

.field mWindowDefHeight:I

.field mWindowDefWidth:I

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 843
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 844
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 847
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 166
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    .line 170
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    invoke-direct {v5, p0, v9, v9}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;II)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    .line 171
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 174
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 176
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    .line 179
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 180
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 181
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 182
    iput v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 185
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 186
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 187
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 188
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 189
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 190
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    .line 192
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 195
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

    invoke-direct {v5, p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

    .line 198
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

    invoke-direct {v5, p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

    .line 201
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

    invoke-direct {v5, p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

    .line 204
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-direct {v5, p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

    .line 207
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-direct {v5, p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

    .line 210
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

    invoke-direct {v5, p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

    .line 213
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-direct {v5, p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

    .line 216
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

    invoke-direct {v5, p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

    .line 219
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z

    .line 220
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z

    .line 224
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

    invoke-direct {v5, p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

    .line 225
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    invoke-direct {v5, p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    .line 228
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-direct {v5, p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

    .line 231
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 234
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDragAppIcon:Landroid/widget/ImageView;

    .line 249
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    .line 265
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z

    .line 266
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    .line 267
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    .line 268
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    .line 270
    iput v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I

    .line 273
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_MULTIINSTANCE:Z

    .line 276
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_DOWNLOADABLE:Z

    .line 279
    const/16 v5, 0x26

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIvt:[B

    .line 653
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    .line 673
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$2;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    .line 740
    new-instance v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1469
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    .line 1470
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 1475
    iput-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 849
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 850
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v8, 0x4

    if-ne v5, v8, :cond_3

    move v4, v6

    .line 853
    .local v4, "xlarge":Z
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    .line 856
    sput-boolean v7, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    .line 861
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 862
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 868
    sget-boolean v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v5, :cond_4

    .line 871
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 876
    .local v2, "pkgFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 878
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    const-string v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 880
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 892
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const-string v7, "vibrator"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/SystemVibrator;

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mVibrator:Landroid/os/SystemVibrator;

    .line 894
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 896
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    .line 899
    sget-boolean v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v5, :cond_5

    .line 900
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getLauncherLargeIconDensity()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIconDpi:I

    .line 901
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I

    .line 903
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/multiwindow/MultiWindowReflector;->getArrangeMode(Landroid/content/res/Configuration;)I

    move-result v0

    .line 904
    .local v0, "arrangeMode":I
    sget v5, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_CASCADE:I

    if-eq v0, v5, :cond_0

    sget v5, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_UNDEFINED:I

    if-ne v0, v5, :cond_1

    .line 906
    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z

    .line 909
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->loadDefaultWindowInfo()V

    .line 910
    new-instance v5, Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-direct {v5, p1}, Lcom/android/systemui/multiwindow/CenterBarWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCenterBarWindow:Lcom/android/systemui/multiwindow/CenterBarWindow;

    .line 912
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_2

    .line 914
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$PackageManager;->FEATURE_MULTIWINDOW_MULTIINSTANCE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_MULTIINSTANCE:Z

    .line 916
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$PackageManager;->FEATURE_MULTIWINDOW_DOWNLOADABLE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_DOWNLOADABLE:Z

    .line 924
    .end local v0    # "arrangeMode":I
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initComponentDescriptionOrder()V

    .line 926
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initComponentDescriptions()V

    .line 928
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initMiniModeAppsPanelSound()V

    .line 929
    return-void

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "pkgFilter":Landroid/content/IntentFilter;
    .end local v4    # "xlarge":Z
    :cond_3
    move v4, v7

    .line 850
    goto/16 :goto_0

    .line 885
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v4    # "xlarge":Z
    :cond_4
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 886
    .restart local v2    # "pkgFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 887
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 888
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 889
    const-string v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 890
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 921
    :cond_5
    if-eqz v4, :cond_6

    const/16 v5, 0xa0

    :goto_3
    iput v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIconDpi:I

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_3

    .line 279
    nop

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

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIconDpi:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemClickListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/ComponentName;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getComponentDescriptionIndex(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconLongClickListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/SystemVibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initComponentDescriptions()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateImageOfMiniModeAppsPanel()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/MiniModeAppsPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->adjustTrayPadding()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/multiwindow/CenterBarWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCenterBarWindow:Lcom/android/systemui/multiwindow/CenterBarWindow;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateTextOfMiniModeAppsPanel()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->openEditPanel()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->save()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->playTrayCloseSound()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateModeButtonsState(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_MULTIINSTANCE:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isClosePanel:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->removeViewFromEditPanel(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return v0
.end method

.method static synthetic access$5102(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsScrollLeft:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollRunnable;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/sec/minimode/manager/MiniModeAppManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Landroid/content/pm/ComponentInfo;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getCurrentAppRect(Landroid/content/pm/ComponentInfo;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Landroid/view/DragEvent;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContainerScrollerForDrag:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ContainerScrollForDragRunnable;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/MiniModeAppsPanel;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->addViewToEditPanel(Landroid/view/View;)V

    return-void
.end method

.method private addViewToEditPanel(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f030019

    const/4 v8, 0x0

    .line 1521
    const/4 v4, 0x0

    .line 1522
    .local v4, "previewContainer":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 1523
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 1524
    .local v3, "count":I
    if-lez v3, :cond_2

    .line 1525
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "previewContainer":Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .line 1530
    .restart local v4    # "previewContainer":Landroid/view/ViewGroup;
    :goto_0
    if-eqz v4, :cond_0

    .line 1531
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_3

    .line 1532
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4    # "previewContainer":Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .line 1533
    .restart local v4    # "previewContainer":Landroid/view/ViewGroup;
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1534
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1544
    .end local v3    # "count":I
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1545
    .local v1, "child":I
    if-lez v1, :cond_1

    .line 1546
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1547
    .local v2, "containerHeight":I
    mul-int v5, v1, v2

    .line 1548
    .local v5, "yOffsetAtTop":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v0, v6, 0x2

    .line 1549
    .local v0, "centerY":I
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    instance-of v6, v6, Landroid/widget/ScrollView;

    if-eqz v6, :cond_1

    .line 1550
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1552
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/statusbar/MiniModeAppsPanel$15;

    invoke-direct {v7, p0, v5, v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$15;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;II)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1563
    .end local v0    # "centerY":I
    .end local v2    # "containerHeight":I
    .end local v5    # "yOffsetAtTop":I
    :cond_1
    :goto_2
    return-void

    .line 1527
    .end local v1    # "child":I
    .restart local v3    # "count":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4    # "previewContainer":Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .restart local v4    # "previewContainer":Landroid/view/ViewGroup;
    goto :goto_0

    .line 1536
    :cond_3
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1537
    if-nez v3, :cond_0

    .line 1538
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 1559
    .end local v3    # "count":I
    .restart local v0    # "centerY":I
    .restart local v1    # "child":I
    .restart local v2    # "containerHeight":I
    .restart local v5    # "yOffsetAtTop":I
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    check-cast v6, Landroid/widget/ScrollView;

    sub-int v7, v5, v0

    invoke-virtual {v6, v8, v7}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_2
.end method

.method private adjustTrayPadding()V
    .locals 7

    .prologue
    const v6, 0x7f0c00c3

    const/4 v5, 0x0

    .line 3213
    sget-boolean v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v2, :cond_0

    .line 3214
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c00d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3227
    :goto_0
    return-void

    .line 3218
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int v0, v2, v3

    .line 3219
    .local v0, "containerWidth":I
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 3221
    .local v1, "scrollerWidth":I
    if-ge v0, v1, :cond_1

    .line 3222
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    .line 3224
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method private clearItemsAnimation()V
    .locals 4

    .prologue
    .line 2330
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2331
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2332
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2333
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2331
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2335
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    const v3, 0x7f0d0059

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 2336
    return-void
.end method

.method private closeEditPanel()V
    .locals 5

    .prologue
    const/16 v4, 0x425

    const/4 v3, 0x0

    .line 3236
    const-string v0, "MiniModeAppsPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeEditPanel() : mEditPanelUIEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_4

    .line 3238
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3239
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3240
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3241
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 3242
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3243
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3245
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 3246
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 3247
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3251
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v0, :cond_4

    .line 3252
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3253
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3254
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3256
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 3257
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3258
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 3259
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3260
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 3261
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3265
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 3266
    return-void
.end method

.method private createPreviewAnimation()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1454
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1458
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f9c28f6    # 1.22f

    const v3, 0x3f99999a    # 1.2f

    const v6, 0x3ee147ae    # 0.44f

    const v8, 0x3f0a3d71    # 0.54f

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1459
    .local v0, "scaleZoom":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1460
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1461
    .local v10, "fadeIn":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1462
    const-wide/16 v1, 0x190

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1463
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1464
    const-wide/16 v1, 0x96

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 1465
    return-object v9
.end method

.method private findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3099
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 3100
    .local v0, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3105
    .end local v0    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 815
    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 818
    .local v0, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 823
    .end local v0    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getComponentDescriptionIndex(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getCurrentAppRect(Landroid/content/pm/ComponentInfo;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "info"    # Landroid/content/pm/ComponentInfo;

    .prologue
    const/4 v8, 0x0

    .line 1492
    const/4 v2, 0x0

    .line 1493
    .local v2, "defWidth":I
    const/4 v0, 0x0

    .line 1495
    .local v0, "defHeight":I
    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_4

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1497
    .local v4, "metaData":Landroid/os/Bundle;
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 1498
    .local v5, "r":Landroid/content/res/Resources;
    if-eqz v4, :cond_1

    .line 1499
    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->METADATA_MULTIWINDOW_DEF_WIDTH:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1500
    .local v1, "defSizeId":I
    if-eqz v1, :cond_0

    .line 1501
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 1503
    :cond_0
    sget-object v6, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->METADATA_MULTIWINDOW_DEF_HEIGHT:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1504
    if-eqz v1, :cond_1

    .line 1505
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    float-to-int v0, v6

    .line 1515
    .end local v1    # "defSizeId":I
    .end local v5    # "r":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mWindowDefWidth:I

    .line 1516
    :cond_2
    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mWindowDefHeight:I

    .line 1517
    :cond_3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v6

    .line 1495
    .end local v4    # "metaData":Landroid/os/Bundle;
    :cond_4
    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    .line 1509
    .restart local v4    # "metaData":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 1510
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1511
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 1512
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private initChosenApps()V
    .locals 1

    .prologue
    .line 3152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanelDataStorage;->load(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 3159
    return-void
.end method

.method private initComponentDescriptionOrder()V
    .locals 7

    .prologue
    .line 804
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    .line 806
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 809
    .local v3, "mComponentNames":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 810
    .local v4, "str":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initComponentDescriptions()V
    .locals 21

    .prologue
    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 1309
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 1315
    :goto_0
    sget-boolean v18, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v18, :cond_9

    .line 1316
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1317
    .local v8, "launcherIntent":Landroid/content/Intent;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0xc0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 1320
    .local v9, "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1321
    .local v12, "supportedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    .local v16, "supportedPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1325
    .local v14, "supportedComponentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1070042

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 1326
    .local v13, "supportedAppStrings":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1070044

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    .line 1327
    .local v17, "supportedPackageStrings":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1070045

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 1329
    .local v15, "supportedComponentStrings":[Ljava/lang/String;
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1330
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1331
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1333
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_MultiWindow_AddOnApp"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1334
    .local v4, "cscAddOnApp":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1335
    new-instance v5, Ljava/util/ArrayList;

    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1336
    .local v5, "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1337
    .local v2, "addOnApp":Ljava/lang/String;
    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1338
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1339
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1340
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1346
    .end local v2    # "addOnApp":Ljava/lang/String;
    .end local v4    # "cscAddOnApp":Ljava/lang/String;
    .end local v5    # "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v13    # "supportedAppStrings":[Ljava/lang/String;
    .end local v15    # "supportedComponentStrings":[Ljava/lang/String;
    .end local v17    # "supportedPackageStrings":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1347
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v18, "MiniModeAppsPanel"

    const-string v19, "custom multi window list in config is not exist "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1351
    .local v11, "r":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 1353
    .local v3, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1355
    :try_start_1
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->CATEGORY_MULTIWINDOW_LAUNCHER:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1356
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .end local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1373
    .restart local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :cond_3
    :goto_3
    if-eqz v3, :cond_2

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1312
    .end local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "launcherIntent":Landroid/content/Intent;
    .end local v9    # "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "r":Landroid/content/pm/ResolveInfo;
    .end local v12    # "supportedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "supportedComponentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "supportedPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1341
    .restart local v2    # "addOnApp":Ljava/lang/String;
    .restart local v4    # "cscAddOnApp":Ljava/lang/String;
    .restart local v5    # "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "launcherIntent":Landroid/content/Intent;
    .restart local v9    # "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "supportedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "supportedAppStrings":[Ljava/lang/String;
    .restart local v14    # "supportedComponentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "supportedComponentStrings":[Ljava/lang/String;
    .restart local v16    # "supportedPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "supportedPackageStrings":[Ljava/lang/String;
    :cond_5
    :try_start_2
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1342
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1357
    .end local v2    # "addOnApp":Ljava/lang/String;
    .end local v4    # "cscAddOnApp":Ljava/lang/String;
    .end local v5    # "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "supportedAppStrings":[Ljava/lang/String;
    .end local v15    # "supportedComponentStrings":[Ljava/lang/String;
    .end local v17    # "supportedPackageStrings":[Ljava/lang/String;
    .restart local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .restart local v11    # "r":Landroid/content/pm/ResolveInfo;
    :cond_6
    :try_start_3
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1358
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1362
    :cond_7
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .end local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V

    .restart local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    goto :goto_3

    .line 1363
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_DOWNLOADABLE:Z

    move/from16 v18, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v18, :cond_3

    goto :goto_3

    .line 1367
    .end local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :catch_1
    move-exception v6

    .line 1368
    .local v6, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1369
    .restart local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    const-string v18, "MiniModeAppsPanel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "initComponentDescriptions() : exception occurs! while loading mini app (activityInfo="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1382
    .end local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "launcherIntent":Landroid/content/Intent;
    .end local v9    # "launcherlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "r":Landroid/content/pm/ResolveInfo;
    .end local v12    # "supportedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "supportedComponentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "supportedPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    new-instance v8, Landroid/content/Intent;

    const-string v18, "com.samsung.action.MINI_MODE_SERVICE"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1383
    .restart local v8    # "launcherIntent":Landroid/content/Intent;
    const-string v18, "com.samsung.category.MINI_MODE_LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x80

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 1386
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1387
    .restart local v11    # "r":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 1388
    .restart local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v11, :cond_a

    .line 1390
    :try_start_4
    new-instance v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .end local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1397
    .restart local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :goto_5
    if-eqz v3, :cond_a

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1391
    .end local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :catch_2
    move-exception v6

    .line 1392
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1393
    .restart local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    const-string v18, "MiniModeAppsPanel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "initComponentDescriptions() : exception occurs! while loading mini app (serviceInfo="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1406
    .end local v3    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "r":Landroid/content/pm/ResolveInfo;
    :cond_b
    return-void
.end method

.method private initGestureDetector()V
    .locals 5

    .prologue
    .line 1285
    new-instance v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$14;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 1292
    .local v1, "listener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    const/4 v0, 0x1

    .line 1293
    .local v0, "ignoreMultitouch":Z
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1294
    return-void
.end method

.method private initMiniModeAppsPanelSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1410
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v5, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    .line 1411
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f060001

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1412
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f060002

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    .line 1415
    return-void
.end method

.method private isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3298
    :try_start_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 3310
    :cond_0
    :goto_0
    return v2

    .line 3300
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3302
    .local v1, "label":Ljava/lang/String;
    const-string v4, "MiniAppDragItem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 3310
    goto :goto_0

    .line 3305
    .end local v1    # "label":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 3307
    goto :goto_0
.end method

.method private isChosenApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 3162
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 3170
    :cond_0
    :goto_0
    return v4

    .line 3165
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 3166
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3170
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isMiinAppsEditPanelShowing()Z
    .locals 1

    .prologue
    .line 3290
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 3291
    const/4 v0, 0x0

    .line 3293
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    goto :goto_0
.end method

.method private openEditPanel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 3269
    const-string v0, "MiniModeAppsPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openEditPanel() : mEditPanelUIEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 3271
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3272
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3273
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3274
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 3276
    sget-boolean v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v0, :cond_0

    .line 3277
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v1, 0x425

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3278
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3279
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3280
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3284
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3285
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3287
    :cond_1
    return-void
.end method

.method private playHwTouchSound()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 1419
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 1422
    .local v7, "mRingerMode":I
    packed-switch v7, :pswitch_data_0

    .line 1433
    :goto_0
    return-void

    .line 1424
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 1425
    .local v9, "streamVolume":F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 1426
    .local v8, "streamMaxVolume":F
    div-float v2, v9, v8

    .line 1427
    .local v2, "adjustmentValue":F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    aget v1, v1, v4

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 1422
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private playTrayCloseSound()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 1437
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 1440
    .local v7, "mRingerMode":I
    packed-switch v7, :pswitch_data_0

    .line 1451
    :goto_0
    return-void

    .line 1442
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 1443
    .local v9, "streamVolume":F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 1444
    .local v8, "streamMaxVolume":F
    div-float v2, v9, v8

    .line 1445
    .local v2, "adjustmentValue":F
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mSoundPoolId:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 1440
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private refreshApplicationList()V
    .locals 17

    .prologue
    .line 1618
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->clearItemsAnimation()V

    .line 1620
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1621
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1623
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->initChosenApps()V

    .line 1625
    const/4 v3, 0x0

    .line 1626
    .local v3, "componentDescriptionsSortedByLabel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "componentDescriptionsSortedByLabel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 1627
    .restart local v3    # "componentDescriptionsSortedByLabel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;>;"
    new-instance v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-static {v3, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1630
    const/4 v11, 0x0

    .line 1631
    .local v11, "view":Landroid/view/View;
    const/4 v8, 0x0

    .line 1632
    .local v8, "preview":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f030019

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1633
    .local v9, "previewContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 1634
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f030015

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1638
    .local v4, "containerView":Landroid/view/View;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1640
    .local v2, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    sget-boolean v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v12, :cond_5

    .line 1641
    if-eqz v4, :cond_1

    .line 1642
    const v12, 0x7f030015

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1643
    const v12, 0x7f0d0056

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1644
    const v12, 0x7f030018

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 1645
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

    invoke-virtual {v4, v12}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1646
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1654
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1655
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1656
    invoke-virtual {v11, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-virtual {v8, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1667
    invoke-virtual {v8, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1669
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isChosenApp(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v2, v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1672
    sget-boolean v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v12, :cond_6

    .line 1674
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->isChosen()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1675
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1679
    :cond_2
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v13, 0x7

    if-ne v12, v13, :cond_3

    .line 1680
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1681
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f030019

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .end local v9    # "previewContainer":Landroid/view/ViewGroup;
    check-cast v9, Landroid/view/ViewGroup;

    .line 1690
    .restart local v9    # "previewContainer":Landroid/view/ViewGroup;
    :cond_3
    :goto_2
    sget-boolean v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v12, :cond_7

    if-eqz v4, :cond_7

    .line 1691
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setIconView(Landroid/view/View;)V

    .line 1696
    :goto_3
    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setPreview(Landroid/view/View;)V

    .line 1697
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v12

    if-nez v12, :cond_4

    .line 1698
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setPreviewAnimation(Landroid/view/animation/AnimationSet;)V

    .line 1700
    :cond_4
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updateLabel()V

    .line 1701
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v2, v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updateResources(Z)V

    .line 1704
    sget-boolean v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v12, :cond_0

    .line 1705
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    if-nez v12, :cond_0

    .line 1706
    const v12, 0x7f030005

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    .line 1707
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    const v13, 0x7f0d0015

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    .line 1708
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    const v13, 0x7f0d0016

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    .line 1709
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1710
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1713
    new-instance v12, Landroid/view/WindowManager$LayoutParams;

    const/16 v13, 0x89b

    invoke-direct {v12, v13}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 1714
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    iget v13, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v13, v13, 0x8

    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1715
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1716
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1717
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1718
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1719
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v13, 0x33

    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1720
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v13, -0x3

    iput v13, v12, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1721
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const-string v13, "MultiWindow/GuideLine"

    invoke-virtual {v12, v13}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1722
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v12, v13, v14}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    new-instance v13, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$16;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto/16 :goto_0

    .line 1649
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f030011

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 1650
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f030014

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1651
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayItemDragListener;

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto/16 :goto_1

    .line 1685
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1694
    :cond_7
    invoke-virtual {v2, v11}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setIconView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 1701
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 1842
    .end local v2    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :cond_9
    sget-boolean v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v12, :cond_a

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-lez v12, :cond_a

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v13, 0x7

    if-ge v12, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_a

    .line 1846
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1850
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-eqz v12, :cond_c

    .line 1851
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_5
    if-ge v5, v7, :cond_e

    aget-object v10, v1, v5

    .line 1852
    .local v10, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    move-result-object v2

    .line 1853
    .restart local v2    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v2, :cond_b

    .line 1854
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1851
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1859
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v7    # "len$":I
    .end local v10    # "str":Ljava/lang/String;
    .local v5, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1860
    .restart local v2    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    if-eqz v2, :cond_d

    .line 1861
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 1868
    .end local v2    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_e
    sget-boolean v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v12, :cond_f

    .line 1869
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f030015

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 1870
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->setPadding(IIII)V

    .line 1875
    :goto_7
    return-void

    .line 1873
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f030011

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    goto :goto_7
.end method

.method private removeViewFromEditPanel(Landroid/view/View;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1566
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    if-eqz v14, :cond_4

    .line 1567
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1568
    .local v5, "editItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v12, 0x0

    .line 1570
    .local v12, "previewContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1571
    .local v1, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_1

    .line 1572
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "previewContainer":Landroid/view/ViewGroup;
    check-cast v12, Landroid/view/ViewGroup;

    .line 1573
    .restart local v12    # "previewContainer":Landroid/view/ViewGroup;
    if-eqz v12, :cond_0

    .line 1574
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 1575
    .local v11, "n":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v11, :cond_0

    .line 1576
    invoke-virtual {v12, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1577
    .local v8, "item":Landroid/view/View;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1575
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1580
    .end local v8    # "item":Landroid/view/View;
    .end local v9    # "j":I
    .end local v11    # "n":I
    :cond_0
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1571
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1582
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1583
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1585
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f030019

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .end local v12    # "previewContainer":Landroid/view/ViewGroup;
    check-cast v12, Landroid/view/ViewGroup;

    .line 1586
    .restart local v12    # "previewContainer":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1587
    .restart local v8    # "item":Landroid/view/View;
    invoke-virtual {v12, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1588
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v15, 0x7

    if-ne v14, v15, :cond_2

    .line 1589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1590
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f030019

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .end local v12    # "previewContainer":Landroid/view/ViewGroup;
    check-cast v12, Landroid/view/ViewGroup;

    .restart local v12    # "previewContainer":Landroid/view/ViewGroup;
    goto :goto_2

    .line 1594
    .end local v8    # "item":Landroid/view/View;
    :cond_3
    if-eqz v12, :cond_4

    .line 1595
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 1596
    .local v10, "lastChildCount":I
    if-lez v10, :cond_5

    const/4 v14, 0x7

    if-ge v10, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v14

    if-gez v14, :cond_5

    .line 1598
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1612
    .end local v1    # "N":I
    .end local v5    # "editItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "lastChildCount":I
    .end local v12    # "previewContainer":Landroid/view/ViewGroup;
    :cond_4
    :goto_3
    return-void

    .line 1599
    .restart local v1    # "N":I
    .restart local v5    # "editItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v6    # "i":I
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "lastChildCount":I
    .restart local v12    # "previewContainer":Landroid/view/ViewGroup;
    :cond_5
    if-nez v10, :cond_4

    .line 1601
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 1602
    .local v3, "child":I
    if-lez v3, :cond_4

    .line 1603
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1604
    .local v4, "containerHeight":I
    mul-int v13, v3, v4

    .line 1605
    .local v13, "yOffsetAtTop":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    sub-int/2addr v14, v4

    div-int/lit8 v2, v14, 0x2

    .line 1606
    .local v2, "centerY":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    instance-of v14, v14, Landroid/widget/ScrollView;

    if-eqz v14, :cond_4

    .line 1607
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    check-cast v14, Landroid/widget/ScrollView;

    const/4 v15, 0x0

    sub-int v16, v13, v2

    invoke-virtual/range {v14 .. v16}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_3
.end method

.method private save()Z
    .locals 5

    .prologue
    .line 3174
    const/4 v3, 0x0

    .line 3176
    .local v3, "str":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 3177
    .local v1, "count":I
    add-int/lit8 v4, v1, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 3179
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3180
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 3181
    .local v0, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 3179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3183
    .end local v0    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :cond_0
    const-string v4, "EOF"

    aput-object v4, v3, v1

    .line 3185
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanelDataStorage;->store(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3189
    const/4 v4, 0x1

    .line 3192
    :goto_1
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setCloseIconEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2325
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2327
    :cond_0
    return-void
.end method

.method private setEmptyBtnVisibility()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3196
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 3197
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3199
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3201
    :cond_0
    const/4 v0, 0x1

    .line 3207
    :cond_1
    :goto_0
    return v0

    .line 3203
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 3205
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateImageOfMiniModeAppsPanel()V
    .locals 6

    .prologue
    .line 1276
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1277
    .local v0, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updateIconInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1279
    .end local v0    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 1280
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MiniModeAppsPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private updateModeButtonsState(Z)V
    .locals 9
    .param p1, "isCascadeMode"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3110
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v7, :cond_4

    const/16 v5, 0x8

    .line 3112
    .local v5, "isVisible":I
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_1

    .line 3113
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    if-nez p1, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 3115
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f0d0072

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3116
    .local v0, "cascadeImageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_5

    .line 3117
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f020179

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3118
    const v6, 0x7f02017d

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3124
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f0d0073

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3125
    .local v1, "cascadeTextView":Landroid/widget/TextView;
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3128
    .end local v0    # "cascadeImageView":Landroid/widget/ImageView;
    .end local v1    # "cascadeTextView":Landroid/widget/TextView;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    .line 3129
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 3131
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f0d006f

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 3132
    .local v2, "dualImageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_6

    .line 3133
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f020174

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3134
    const v6, 0x7f020182

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3140
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f0d0070

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3141
    .local v3, "dualTextView":Landroid/widget/TextView;
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3144
    .end local v2    # "dualImageView":Landroid/widget/ImageView;
    .end local v3    # "dualTextView":Landroid/widget/TextView;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 3145
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    const v7, 0x7f0d006d

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3146
    .local v4, "helpTextView":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3148
    .end local v4    # "helpTextView":Landroid/widget/TextView;
    :cond_3
    return-void

    .end local v5    # "isVisible":I
    :cond_4
    move v5, v6

    .line 3110
    goto :goto_0

    .line 3120
    .restart local v0    # "cascadeImageView":Landroid/widget/ImageView;
    .restart local v5    # "isVisible":I
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f020178

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3121
    const v6, 0x7f02017c

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 3136
    .end local v0    # "cascadeImageView":Landroid/widget/ImageView;
    .restart local v2    # "dualImageView":Landroid/widget/ImageView;
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    const v7, 0x7f020175

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 3137
    const v6, 0x7f020183

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private updateTextOfMiniModeAppsPanel()V
    .locals 11

    .prologue
    .line 1205
    const v8, 0x7f0d0060

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1206
    .local v4, "editBtn":Landroid/widget/Button;
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v8, :cond_0

    .line 1207
    const v8, 0x7f0a0161

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    .line 1208
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1211
    :cond_0
    const v8, 0x7f0d005d

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1212
    .local v6, "emptyBtn":Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 1214
    sget-boolean v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v8, :cond_7

    .line 1215
    const v8, 0x7f0a0150

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1219
    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1222
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v9, 0x7f0d0062

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1223
    .local v5, "editPanelTitle":Landroid/widget/TextView;
    if-eqz v5, :cond_2

    .line 1225
    sget-boolean v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v8, :cond_8

    .line 1226
    const v8, 0x7f0a014f

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1230
    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1234
    :cond_2
    sget-boolean v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v8, :cond_9

    .line 1236
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    .line 1237
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v10, 0x7f0a014d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1239
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_4

    .line 1240
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    const v9, 0x7f0d006d

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1241
    .local v7, "helpTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    const v9, 0x7f0d0070

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1242
    .local v3, "dualModeTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    const v9, 0x7f0d0073

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1243
    .local v1, "cascadeModeTextView":Landroid/widget/TextView;
    const v8, 0x7f0a0151

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1244
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1245
    const v8, 0x7f0a014b

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1246
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1247
    const v8, 0x7f0a014a

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1248
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1249
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v10, 0x7f0a0151

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1250
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v10, 0x7f0a014b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1251
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v10, 0x7f0a014a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1252
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateModeButtonsState(Z)V

    .line 1260
    .end local v1    # "cascadeModeTextView":Landroid/widget/TextView;
    .end local v3    # "dualModeTextView":Landroid/widget/TextView;
    .end local v7    # "helpTextView":Landroid/widget/TextView;
    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v9, 0x7f0d0064

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1261
    .local v2, "doneBtn":Landroid/widget/Button;
    if-eqz v2, :cond_5

    .line 1262
    const v8, 0x7f0a0140

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    .line 1263
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1266
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v9, 0x7f0d0063

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1267
    .local v0, "cancelBtn":Landroid/widget/Button;
    if-eqz v0, :cond_6

    .line 1268
    const/high16 v8, 0x1040000

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(I)V

    .line 1269
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1271
    :cond_6
    return-void

    .line 1218
    .end local v0    # "cancelBtn":Landroid/widget/Button;
    .end local v2    # "doneBtn":Landroid/widget/Button;
    .end local v5    # "editPanelTitle":Landroid/widget/TextView;
    :cond_7
    const v8, 0x7f0a0160

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1229
    .restart local v5    # "editPanelTitle":Landroid/widget/TextView;
    :cond_8
    const v8, 0x7f0a015f

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 1256
    :cond_9
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    .line 1257
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v10, 0x7f0a0162

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public closeMiniAppsPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2312
    const-string v0, "MiniModeAppsPanel"

    const-string v1, "closeMiniAppsPanel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isClosePanel:Z

    .line 2314
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 2315
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 2316
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 2318
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V

    .line 2319
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 2320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V

    .line 2321
    return-void
.end method

.method public getLauncherLargeIconDensity()I
    .locals 5

    .prologue
    const/16 v3, 0x140

    .line 933
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 934
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 935
    .local v0, "density":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 937
    .local v2, "sw":I
    const/16 v4, 0x258

    if-ge v2, v4, :cond_0

    .line 958
    .end local v0    # "density":I
    :goto_0
    return v0

    .line 942
    .restart local v0    # "density":I
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 958
    int-to-float v3, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_0

    .line 944
    :sswitch_0
    const/16 v0, 0xa0

    goto :goto_0

    .line 946
    :sswitch_1
    const/16 v0, 0xf0

    goto :goto_0

    :sswitch_2
    move v0, v3

    .line 948
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 950
    goto :goto_0

    .line 952
    :sswitch_4
    const/16 v0, 0x1e0

    goto :goto_0

    .line 954
    :sswitch_5
    const/16 v0, 0x280

    goto :goto_0

    .line 942
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public isInContentArea(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 831
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 832
    .local v1, "l":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 833
    .local v2, "r":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 834
    .local v3, "t":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 835
    .local v0, "b":I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public loadDefaultWindowInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1484
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mWindowDefWidth:I

    .line 1485
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mWindowDefHeight:I

    .line 1486
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10102eb

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1487
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mActionBarHeight:I

    .line 1488
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1489
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1878
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 1883
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1885
    .local v2, "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    sget-boolean v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v12, :cond_5

    .line 1886
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p1

    if-eq v0, v12, :cond_0

    .line 1887
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1893
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0d0068

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1894
    .local v8, "previewIcon":Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    .line 1895
    .local v1, "anim":Landroid/view/animation/AnimationSet;
    if-nez v1, :cond_1

    .line 1896
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1899
    :cond_1
    if-eqz v1, :cond_2

    .line 1900
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1903
    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1906
    sget-boolean v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v12, :cond_6

    .line 1907
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->addViewToEditPanel(Landroid/view/View;)V

    .line 1918
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 1920
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setAlpha(F)V

    .line 1921
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1968
    .end local v1    # "anim":Landroid/view/animation/AnimationSet;
    .end local v2    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v8    # "previewIcon":Landroid/widget/ImageView;
    :cond_4
    :goto_2
    return-void

    .line 1891
    .restart local v2    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1910
    .restart local v1    # "anim":Landroid/view/animation/AnimationSet;
    .restart local v8    # "previewIcon":Landroid/widget/ImageView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1911
    .local v5, "i":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 1912
    .local v9, "previewWidth":I
    mul-int v11, v5, v9

    .line 1913
    .local v11, "xOffsetAtLeft":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    sub-int/2addr v12, v9

    div-int/lit8 v3, v12, 0x2

    .line 1914
    .local v3, "centerX":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    instance-of v12, v12, Landroid/widget/HorizontalScrollView;

    if-eqz v12, :cond_3

    .line 1915
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    check-cast v12, Landroid/widget/HorizontalScrollView;

    sub-int v13, v11, v3

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1

    .line 1927
    .end local v1    # "anim":Landroid/view/animation/AnimationSet;
    .end local v2    # "cd":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v3    # "centerX":I
    .end local v5    # "i":I
    .end local v8    # "previewIcon":Landroid/widget/ImageView;
    .end local v9    # "previewWidth":I
    .end local v11    # "xOffsetAtLeft":I
    :cond_7
    if-eqz p1, :cond_4

    .line 1929
    move-object/from16 v10, p1

    .line 1930
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1931
    .local v4, "componentDescription":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v7

    .line 1936
    .local v7, "name":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 1937
    .local v6, "intent":Landroid/content/Intent;
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$4600(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v12

    instance-of v12, v12, Landroid/content/pm/ServiceInfo;

    if-eqz v12, :cond_a

    .line 1939
    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    .line 1940
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1955
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    instance-of v12, v12, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v12, :cond_9

    .line 1956
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    check-cast v12, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1960
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v13, 0x425

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1962
    sget-boolean v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v12, :cond_b

    .line 1963
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v13, 0x425

    const-wide/16 v14, 0x1388

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 1941
    :cond_a
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$4600(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v12

    instance-of v12, v12, Landroid/content/pm/ActivityInfo;

    if-eqz v12, :cond_8

    .line 1943
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    .line 1944
    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1945
    const/high16 v12, 0x10200000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1946
    sget-object v12, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_WINDOW_MODE:Ljava/lang/String;

    sget v13, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1947
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 1966
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v13, 0x425

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 965
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 969
    const v1, 0x7f0d005a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    .line 970
    const v1, 0x7f0d005b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    .line 971
    const v1, 0x7f0d002e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    .line 974
    sget-boolean v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v1, :cond_3

    .line 975
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030017

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 983
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 986
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    iget v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    const/16 v5, 0x7e8

    const v6, 0x800028

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 996
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 997
    const-string v1, "MiniModeAppsEditPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 998
    const v1, 0x7f0f0015

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 999
    const-string v1, "com.android.systemui"

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1001
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1004
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0065

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    .line 1007
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0066

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 1009
    const v1, 0x7f0d0059

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 1011
    const v1, 0x7f0d0060

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 1013
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v8

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 1015
    const-string v1, "MiniModeAppsPanel"

    const-string v2, "EditPanel UI is Enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$4;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1024
    :cond_0
    const v1, 0x7f0d005d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 1025
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1026
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$5;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1034
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0064

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 1035
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$6;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1043
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 1044
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1046
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0d0063

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 1047
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$7;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1066
    const v1, 0x7f0d005f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 1067
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$8;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 1082
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$9;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1100
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1101
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1103
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/MiniModeAppsPanel$TrayBGDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V

    .line 1107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 1118
    new-instance v1, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 1119
    new-instance v1, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    .line 1120
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->setOnFocusChangedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;)V

    .line 1124
    sget-boolean v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v1, :cond_2

    .line 1125
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f0a014d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1127
    const v1, 0x7f0d0071

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    .line 1128
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$10;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    const v1, 0x7f0d006e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    .line 1145
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$11;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1161
    const v1, 0x7f0d006b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    .line 1162
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$12;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$12;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1176
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCascadeModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setHoverPopupType(I)V

    .line 1177
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDualModeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setHoverPopupType(I)V

    .line 1178
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHelpButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setHoverPopupType(I)V

    .line 1180
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mIsCascadeMode:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateModeButtonsState(Z)V

    .line 1182
    iget-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1202
    :cond_2
    return-void

    .line 979
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030013

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    move v1, v3

    .line 1014
    goto/16 :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/16 v7, 0x425

    .line 1971
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1972
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1973
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1974
    .local v0, "componentDescription":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1978
    .local v1, "name":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v5, v5, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v6, v6

    invoke-virtual {v3, v1, v5, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->startWithPosition(Landroid/content/ComponentName;II)V

    .line 1979
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 1981
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    instance-of v3, v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v3, :cond_0

    .line 1982
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    check-cast v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1986
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1988
    sget-boolean v3, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v3, :cond_1

    .line 1989
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    move v3, v4

    .line 1996
    .end local v0    # "componentDescription":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "v":Landroid/view/View;
    :goto_1
    return v3

    .line 1992
    .restart local v0    # "componentDescription":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .restart local v1    # "name":Landroid/content/ComponentName;
    .restart local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1996
    .end local v0    # "componentDescription":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 3231
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 3232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->adjustTrayPadding()V

    .line 3233
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v7, 0x425

    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 2023
    invoke-direct {p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 2027
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2104
    :cond_0
    :goto_0
    return v8

    .line 2031
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2032
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2033
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2039
    .end local v2    # "msg":Landroid/os/Message;
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 2049
    :cond_1
    if-eqz p1, :cond_0

    .line 2051
    move-object v3, p1

    .line 2052
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f0d0057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2054
    .local v0, "appIcon":Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 2058
    :pswitch_2
    const/16 v4, 0x66

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 2060
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 2062
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 2065
    sget-boolean v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v4, :cond_0

    .line 2066
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 2073
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    if-eqz v4, :cond_0

    .line 2075
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2077
    .local v1, "componentDescription":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 2080
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    # getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$4400(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;

    iget v7, v7, Lcom/android/systemui/statusbar/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/minimode/manager/MiniModeAppManager;->move(Landroid/content/ComponentName;II)V

    goto :goto_0

    .line 2088
    .end local v1    # "componentDescription":Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    :pswitch_4
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 2090
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOnDragging:Z

    .line 2093
    sget-boolean v4, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v4, :cond_0

    .line 2094
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2095
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2027
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2054
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public openMiniAppsPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2301
    const-string v0, "MiniModeAppsPanel"

    const-string v1, "openMiniAppsPanel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isClosePanel:Z

    .line 2303
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 2304
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 2305
    iget-object v0, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 2307
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 2309
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 840
    return-void
.end method

.method public setItemsAnimation(Z)V
    .locals 24
    .param p1, "isShowAnim"    # Z

    .prologue
    .line 2112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    .line 2113
    .local v10, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c00c2

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 2114
    .local v14, "miniAppItemHeight":I
    add-int/lit8 v20, v10, -0x1

    mul-int/lit8 v15, v20, 0x28

    .line 2117
    .local v15, "miniAppItemHideAnimDelay":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c00d2

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 2118
    .local v16, "miniAppItemWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v18

    .line 2119
    .local v18, "scrollerWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v20

    div-int v19, v20, v16

    .line 2120
    .local v19, "startPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v20

    add-int v20, v20, v18

    div-int v12, v20, v16

    .line 2121
    .local v12, "endPos":I
    sget-boolean v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v20, :cond_0

    .line 2122
    sub-int v20, v12, v19

    add-int/lit8 v20, v20, -0x1

    mul-int/lit8 v15, v20, 0x28

    .line 2126
    :cond_0
    if-eqz p1, :cond_6

    .line 2127
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v10, :cond_3

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2129
    .local v9, "child":Landroid/view/View;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2130
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    int-to-float v0, v14

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2131
    .local v17, "rotateItem":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v20, 0x10e

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2134
    sget-boolean v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v20, :cond_2

    .line 2135
    move/from16 v0, v19

    if-lt v13, v0, :cond_1

    if-gt v13, v12, :cond_1

    .line 2136
    sub-int v20, v13, v19

    mul-int/lit8 v20, v20, 0x28

    add-int/lit8 v20, v20, 0x3c

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2137
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2144
    :cond_1
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2127
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2141
    :cond_2
    mul-int/lit8 v20, v13, 0x28

    add-int/lit8 v20, v20, 0x3c

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2142
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 2146
    .end local v9    # "child":Landroid/view/View;
    .end local v17    # "rotateItem":Landroid/view/animation/TranslateAnimation;
    :cond_3
    const v20, 0x7f0d0059

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2147
    .local v8, "bg":Landroid/view/View;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2148
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppBgHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2149
    .local v7, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v20, 0x10e

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2150
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2151
    .local v5, "alphaAni":Landroid/view/animation/AlphaAnimation;
    add-int/lit16 v0, v15, 0x14a

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 2152
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2153
    .local v6, "aniSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2154
    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2155
    invoke-virtual {v8, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2156
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2159
    const v20, 0x7f0d005c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2160
    .local v11, "emptyBtnContainer":Landroid/view/View;
    if-eqz v11, :cond_4

    .line 2161
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2162
    invoke-virtual {v11, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2163
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2166
    :cond_4
    new-instance v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$17;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2298
    :cond_5
    :goto_2
    return-void

    .line 2202
    .end local v5    # "alphaAni":Landroid/view/animation/AlphaAnimation;
    .end local v6    # "aniSet":Landroid/view/animation/AnimationSet;
    .end local v7    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v8    # "bg":Landroid/view/View;
    .end local v11    # "emptyBtnContainer":Landroid/view/View;
    .end local v13    # "i":I
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    if-ge v13, v10, :cond_9

    .line 2203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2204
    .restart local v9    # "child":Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2205
    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    int-to-float v0, v14

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2206
    .restart local v17    # "rotateItem":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v20, 0x10e

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2209
    sget-boolean v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW:Z

    if-eqz v20, :cond_8

    .line 2210
    move/from16 v0, v19

    if-lt v13, v0, :cond_7

    if-gt v13, v12, :cond_7

    .line 2211
    sub-int v20, v12, v13

    mul-int/lit8 v20, v20, 0x28

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2212
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2258
    :cond_7
    :goto_4
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2202
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2235
    :cond_8
    sub-int v20, v10, v13

    add-int/lit8 v20, v20, -0x1

    mul-int/lit8 v20, v20, 0x28

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 2236
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4

    .line 2260
    .end local v9    # "child":Landroid/view/View;
    .end local v17    # "rotateItem":Landroid/view/animation/TranslateAnimation;
    :cond_9
    const v20, 0x7f0d0059

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2261
    .restart local v8    # "bg":Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2262
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2263
    .restart local v7    # "animation":Landroid/view/animation/TranslateAnimation;
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2264
    .restart local v5    # "alphaAni":Landroid/view/animation/AlphaAnimation;
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2265
    .restart local v6    # "aniSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2266
    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2268
    const-wide/16 v20, 0x10e

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2269
    int-to-long v0, v15

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 2271
    new-instance v20, Lcom/android/systemui/statusbar/MiniModeAppsPanel$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$20;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2287
    invoke-virtual {v8, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2288
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 2291
    const v20, 0x7f0d005c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2292
    .restart local v11    # "emptyBtnContainer":Landroid/view/View;
    if-eqz v11, :cond_5

    .line 2293
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2294
    invoke-virtual {v11, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2295
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public setStatusBarHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2108
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    .line 2109
    return-void
.end method
