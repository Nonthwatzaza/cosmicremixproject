.class public abstract Lcom/android/systemui/recent/smartswitcher/BaseContainer;
.super Landroid/widget/RelativeLayout;
.source "BaseContainer.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$RecentsScrollView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;,
        Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;
    }
.end annotation


# static fields
.field protected static BOTTOM_STACK_BORDER:F = 0.0f

.field protected static CLOSE_ANIMATION:I = 0x0

.field private static final DEBUG:Z = false

.field protected static MAX_STACK_APPS:I = 0x0

.field static final MAX_W:I = 0x2d0

.field static final MIN_W:I = 0x258

.field protected static ROTATE_SPEED:F = 0.0f

.field protected static SHADOW_ANIMATION_DURATION:I = 0x0

.field protected static STACK_ANIMATION_DURATION:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "MIK"

.field protected static TOP_STACK_START_POSITION:I = 0x0

.field protected static TOP_STACK_Z_DIFF:F = 0.0f

.field static final TYPE_SCROLL:I = 0x1

.field static final TYPE_SLIDE:I

.field protected static Z_DIFF:F

.field protected static mBeginRotateDownDistance:F

.field protected static mBeginRotateUpDistance:F

.field protected static mBottomStackVisiblePart:F

.field protected static mMaxRotateAngle:I

.field protected static mTopStackDistance:F


# instance fields
.field private Z_ANIMATION_DURATION:J

.field animators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field bottomStackIndex:I

.field doMove:Z

.field dx:F

.field dy:F

.field gd:Landroid/view/GestureDetector;

.field mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

.field protected mBottomStackReleaseDistance:F

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFingerOnDisplay:Z

.field protected mLastScrollPosition:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mNumItemsInOneScreenful:I

.field private mPagingTouchSlop:I

.field private mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

.field private mRecycledViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mScrollInterpolator:Landroid/view/animation/Interpolator;

.field protected mScrolling:Z

.field mShadowInterpolator:Landroid/view/animation/Interpolator;

.field protected mSwipe:Z

.field protected mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field protected mTopStackReleaseDistance:F

.field mover:Ljava/lang/Runnable;

.field rotated_angle:F

.field rotation_restorer:Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

.field scroll_type:I

.field scroller:Landroid/widget/Scroller;

.field should_clean_rotation:Z

.field should_send_cancel:Z

.field protected target:Landroid/view/View;

.field topStackIndex:I

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 50
    const v0, 0x3e99999a    # 0.3f

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->ROTATE_SPEED:F

    .line 51
    sput v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->STACK_ANIMATION_DURATION:I

    .line 52
    const/16 v0, -0x11

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->TOP_STACK_START_POSITION:I

    .line 53
    sput v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->CLOSE_ANIMATION:I

    .line 54
    const/16 v0, 0x12

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->MAX_STACK_APPS:I

    .line 55
    const v0, 0x3ca3d70a    # 0.02f

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    .line 56
    const v0, 0x3ccccccd    # 0.025f

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->TOP_STACK_Z_DIFF:F

    .line 57
    const/16 v0, 0x12c

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->SHADOW_ANIMATION_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x3fc00000    # 1.5f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_ANIMATION_DURATION:J

    .line 59
    const/high16 v0, 0x435c0000    # 220.0f

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mTopStackReleaseDistance:F

    .line 61
    const v0, 0x43fd8000    # 507.0f

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBottomStackReleaseDistance:F

    .line 81
    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->dx:F

    .line 82
    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->dy:F

    .line 83
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->doMove:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    .line 90
    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    .line 91
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->target:Landroid/view/View;

    .line 93
    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroll_type:I

    .line 96
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_send_cancel:Z

    .line 97
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    .line 98
    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 99
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAccelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 101
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    .line 105
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 106
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mShadowInterpolator:Landroid/view/animation/Interpolator;

    .line 382
    new-instance v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotation_restorer:Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    .line 620
    new-instance v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$3;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mover:Ljava/lang/Runnable;

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBottomStackVisiblePart:F

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mMaxRotateAngle:I

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mTopStackDistance:F

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateDownDistance:F

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    .line 140
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPagingTouchSlop:I

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBottomStackReleaseDistance:F

    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mTopStackReleaseDistance:F

    .line 152
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$1;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->gd:Landroid/view/GestureDetector;

    .line 215
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v0, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 216
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    .line 218
    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    .line 220
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mRecycledViews:Ljava/util/HashSet;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)Lcom/android/systemui/recent/RecentsCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPagingTouchSlop:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recent/smartswitcher/BaseContainer;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->update()V

    return-void
.end method

.method private addToRecycledViews(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 753
    return-void
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "i"    # I

    .prologue
    .line 1062
    return-void
.end method

.method private shouldReleaseFromBottomStack()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 576
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 586
    :goto_0
    return v0

    .line 579
    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBottomStackReleaseDistance:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    move v0, v2

    .line 581
    goto :goto_0

    .line 583
    :cond_1
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-nez v0, :cond_2

    move v0, v2

    .line 584
    goto :goto_0

    :cond_2
    move v0, v1

    .line 586
    goto :goto_0
.end method

.method private update()V
    .locals 21

    .prologue
    .line 756
    const-string v19, "MIK"

    const-string v20, "update()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    .line 758
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 759
    .local v17, "v":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->addToRecycledViews(Landroid/view/View;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->recycleView(Landroid/view/View;)V

    .line 757
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 762
    .end local v17    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v16

    .line 763
    .local v16, "transitioner":Landroid/animation/LayoutTransition;
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->removeAllViews()V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 769
    .local v13, "pm":Landroid/content/pm/PackageManager;
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v20, "android.intent.category.HOME"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 775
    .local v7, "homeInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mRecycledViews:Ljava/util/HashSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 776
    .local v14, "recycledViews":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/View;>;"
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_6

    .line 777
    const/4 v12, 0x0

    .line 778
    .local v12, "old":Landroid/view/View;
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 779
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "old":Landroid/view/View;
    check-cast v12, Landroid/view/View;

    .line 780
    .restart local v12    # "old":Landroid/view/View;
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    .line 781
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 783
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v8, v12, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 785
    .local v18, "view":Landroid/view/View;
    new-instance v11, Lcom/android/systemui/recent/smartswitcher/BaseContainer$4;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$4;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    .line 795
    .local v11, "noOpListener":Landroid/view/View$OnTouchListener;
    new-instance v9, Lcom/android/systemui/recent/smartswitcher/BaseContainer$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$5;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;Landroid/view/View;)V

    .line 804
    .local v9, "launchAppListener":Landroid/view/View$OnClickListener;
    const v19, 0x7f0d0085

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 807
    .local v4, "big":Landroid/widget/RelativeLayout;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->setClickable(Z)V

    .line 808
    invoke-virtual {v4, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    invoke-virtual {v4, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 813
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 815
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;

    .line 817
    .local v6, "holder":Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;
    iget-object v15, v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->thumbnailImageView:Landroid/widget/ImageView;

    .line 818
    .local v15, "thumbnailView":Landroid/view/View;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/View;->setClickable(Z)V

    .line 822
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setFocusable(Z)V

    .line 823
    new-instance v19, Lcom/android/systemui/recent/smartswitcher/BaseContainer$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$6;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 833
    new-instance v19, Lcom/android/systemui/recent/smartswitcher/BaseContainer$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$7;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 849
    const v19, 0x7f0d0058

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 850
    .local v3, "appTitle":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 851
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 853
    :cond_2
    const v19, 0x7f0d0086

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 854
    .local v5, "deleteView":Landroid/view/View;
    if-nez v8, :cond_4

    move-object/from16 v19, v18

    .line 855
    check-cast v19, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 856
    const v19, 0x7f020005

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 857
    iget-object v0, v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 858
    .local v10, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0xa

    move/from16 v0, v19

    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 859
    iget-object v0, v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-super {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 877
    .end local v10    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->addViewCallback(Landroid/view/View;)V

    .line 776
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 861
    :cond_4
    iget-object v0, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recent/TaskDescription;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v19, v18

    .line 862
    check-cast v19, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 863
    const v19, 0x7f020005

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 864
    iget-object v0, v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 865
    .restart local v10    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v19, 0xa

    move/from16 v0, v19

    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 866
    iget-object v0, v6, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->iconView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 869
    .end local v10    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    new-instance v19, Lcom/android/systemui/recent/smartswitcher/BaseContainer$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$8;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;Landroid/view/View;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAlpha(F)V

    .line 875
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 881
    .end local v3    # "appTitle":Landroid/view/View;
    .end local v4    # "big":Landroid/widget/RelativeLayout;
    .end local v5    # "deleteView":Landroid/view/View;
    .end local v6    # "holder":Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;
    .end local v9    # "launchAppListener":Landroid/view/View$OnClickListener;
    .end local v11    # "noOpListener":Landroid/view/View$OnTouchListener;
    .end local v12    # "old":Landroid/view/View;
    .end local v15    # "thumbnailView":Landroid/view/View;
    .end local v18    # "view":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 883
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 884
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    .line 124
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 126
    return-void
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 920
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 921
    .local v2, "index":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;

    .line 922
    .local v0, "h":Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;
    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 923
    .local v4, "td":Lcom/android/systemui/recent/TaskDescription;
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 925
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 927
    .local v1, "homeInfo":Landroid/content/pm/ActivityInfo;
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    if-le v2, v6, :cond_1

    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-ge v2, v6, :cond_1

    if-eqz v1, :cond_0

    iget-object v6, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/systemui/recent/TaskDescription;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    return v5
.end method

.method protected createBottomStackInAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 713
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method protected abstract createBottomStackInAnimationInternal(Landroid/view/View;)Landroid/view/animation/Animation;
.end method

.method protected createBottomStackOutAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 728
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method protected createDisappearAnimation(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 735
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method protected createTopStackInAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 706
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method protected createTopStackOutAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 721
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method customDoScroll(FIZ)Z
    .locals 14
    .param p1, "d"    # F
    .param p2, "top"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 282
    iget v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_3

    iget-boolean v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    if-eqz v11, :cond_3

    .line 283
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->restoreRotation()V

    .line 323
    :cond_0
    :goto_0
    iget v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    iget-object v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 324
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 325
    .local v9, "v":Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v11

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v12

    int-to-float v12, v12

    div-float v2, v11, v12

    .line 326
    .local v2, "rpos":F
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40200000    # 2.5f

    iget-object v13, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float v0, v11, v12

    .line 327
    .local v0, "g":F
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v11

    mul-float v12, p1, v0

    add-float/2addr v11, v12

    sget v12, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 328
    sget v11, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v12

    sub-float/2addr v11, v12

    div-float p1, v11, v0

    .line 332
    .end local v0    # "g":F
    .end local v2    # "rpos":F
    .end local v9    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_1
    iget v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-ge v1, v11, :cond_8

    .line 333
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_2

    .line 334
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 335
    .restart local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v11

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v12

    int-to-float v12, v12

    div-float v2, v11, v12

    .line 336
    .restart local v2    # "rpos":F
    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40200000    # 2.5f

    iget-object v13, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    mul-float/2addr v11, p1

    invoke-virtual {p0, v9, v11}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setNewPosition(Landroid/view/View;F)Z

    .line 341
    const v11, 0x7f0d0084

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    iget-object v13, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mShadowInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    sub-float/2addr v12, v13

    const/high16 v13, 0x3fc00000    # 1.5f

    div-float/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/view/View;->setAlpha(F)V

    .line 332
    .end local v2    # "rpos":F
    .end local v9    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 285
    .end local v1    # "i":I
    :cond_3
    iget v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    iget-object v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_4

    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v11

    sget v12, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_4

    .line 289
    const/4 v11, 0x0

    .line 346
    :goto_2
    return v11

    .line 290
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->shouldReleaseFromBottomStack()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 293
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 294
    .restart local v9    # "v":Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->optShow(Landroid/view/View;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createBottomStackOutAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    .line 296
    .local v7, "set":Landroid/view/animation/Animation;
    iget v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 297
    add-int/lit8 v1, p2, 0x1

    .restart local v1    # "i":I
    :goto_3
    iget v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-ge v1, v11, :cond_6

    .line 298
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 299
    .local v10, "v1":Landroid/view/View;
    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    sub-int/2addr v12, v1

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    sget v13, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    mul-float/2addr v12, v13

    sub-float v3, v11, v12

    .line 301
    .local v3, "scaleCurrent":F
    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    sub-int/2addr v12, v1

    int-to-float v12, v12

    sget v13, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    mul-float/2addr v12, v13

    sub-float v4, v11, v12

    .line 302
    .local v4, "scaleNew":F
    if-eqz p3, :cond_5

    .line 303
    const-string v11, "scaleX"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v3, v12, v13

    const/4 v13, 0x1

    aput v4, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 305
    .local v5, "scalex_anim":Landroid/animation/ObjectAnimator;
    const-string v11, "scaleY"

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v3, v12, v13

    const/4 v13, 0x1

    aput v4, v12, v13

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 307
    .local v6, "scaley_anim":Landroid/animation/ObjectAnimator;
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 308
    .local v8, "set1":Landroid/animation/AnimatorSet;
    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 309
    iget-wide v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_ANIMATION_DURATION:J

    invoke-virtual {v8, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 310
    invoke-virtual {p0, v10}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->stopAnimators(Landroid/view/View;)V

    .line 311
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    invoke-virtual {v11, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 297
    .end local v5    # "scalex_anim":Landroid/animation/ObjectAnimator;
    .end local v6    # "scaley_anim":Landroid/animation/ObjectAnimator;
    .end local v8    # "set1":Landroid/animation/AnimatorSet;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 314
    :cond_5
    invoke-virtual {v10, v4}, Landroid/view/View;->setScaleX(F)V

    .line 315
    invoke-virtual {v10, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_4

    .line 318
    .end local v3    # "scaleCurrent":F
    .end local v4    # "scaleNew":F
    .end local v10    # "v1":Landroid/view/View;
    :cond_6
    if-nez p3, :cond_7

    .line 319
    const-wide/16 v11, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 321
    :cond_7
    invoke-virtual {v9, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 346
    .end local v7    # "set":Landroid/view/animation/Animation;
    .end local v9    # "v":Landroid/view/View;
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_2
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 932
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 646
    const/4 v1, 0x0

    .line 647
    .local v1, "res":Z
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrolling:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipe:Z

    if-nez v2, :cond_4

    .line 648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 649
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 650
    .local v0, "ev2":Landroid/view/MotionEvent;
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 651
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 652
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 691
    .end local v0    # "ev2":Landroid/view/MotionEvent;
    :cond_0
    :goto_0
    return v3

    .line 655
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 656
    if-eqz v1, :cond_2

    .line 657
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipe:Z

    .line 659
    :cond_2
    if-nez v1, :cond_0

    .line 660
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 661
    if-eqz v1, :cond_3

    .line 662
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrolling:Z

    goto :goto_0

    .line 664
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 668
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 669
    .restart local v0    # "ev2":Landroid/view/MotionEvent;
    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 670
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 671
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrolling:Z

    if-eqz v2, :cond_6

    .line 672
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 674
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 675
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 678
    :cond_5
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrolling:Z

    .line 679
    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mFingerOnDisplay:Z

    .line 680
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->restoreRotation()V

    .line 682
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->gd:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 684
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipe:Z

    if-eqz v2, :cond_0

    .line 685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 686
    iput-boolean v4, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipe:Z

    .line 688
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method doScroll(F)Z
    .locals 20
    .param p1, "d"    # F

    .prologue
    .line 390
    const/4 v2, 0x0

    .line 392
    .local v2, "b":Z
    const/16 v16, 0x0

    cmpl-float v16, p1, v16

    if-lez v16, :cond_9

    .line 393
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 394
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->restoreRotation()V

    .line 431
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 433
    .local v13, "v":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v6, v16, v17

    .line 434
    .local v6, "rpos":F
    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x40200000    # 2.5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    mul-float v17, v17, v18

    add-float v3, v16, v17

    .line 435
    .local v3, "g":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    mul-float v17, p1, v3

    add-float v16, v16, v17

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateDownDistance:F

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v17, v17, v18

    cmpl-float v16, v16, v17

    if-lez v16, :cond_1

    .line 436
    sget v16, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateDownDistance:F

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v16, v16, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v17

    sub-float v16, v16, v17

    div-float p1, v16, v3

    .line 499
    .end local v3    # "g":F
    .end local v6    # "rpos":F
    .end local v13    # "v":Landroid/view/View;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, 0x1

    .local v4, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_13

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 501
    .restart local v13    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v6, v16, v17

    .line 502
    .restart local v6    # "rpos":F
    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x40200000    # 2.5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    mul-float v17, v17, v18

    add-float v16, v16, v17

    mul-float v16, v16, p1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setNewPosition(Landroid/view/View;F)Z

    move-result v5

    .line 504
    .local v5, "res":Z
    if-nez v2, :cond_2

    if-eqz v5, :cond_12

    :cond_2
    const/4 v2, 0x1

    .line 505
    :goto_3
    const v16, 0x7f0d0084

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mShadowInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    sub-float v17, v17, v18

    const/high16 v18, 0x3fc00000    # 1.5f

    div-float v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setAlpha(F)V

    .line 499
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 396
    .end local v4    # "i":I
    .end local v5    # "res":Z
    .end local v6    # "rpos":F
    .end local v13    # "v":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateDownDistance:F

    cmpl-float v16, v16, v17

    if-lez v16, :cond_7

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->ROTATE_SPEED:F

    sub-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 401
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    .line 402
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mFingerOnDisplay:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_4

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotation_restorer:Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 405
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mMaxRotateAngle:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_5

    .line 406
    sget v16, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mMaxRotateAngle:I

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 407
    const/16 v16, 0x0

    .line 562
    :goto_4
    return v16

    .line 409
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, 0x1

    .restart local v4    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_6

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 413
    .restart local v13    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setRotation(Landroid/view/View;F)V

    .line 409
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 415
    .end local v13    # "v":Landroid/view/View;
    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    .line 416
    .end local v4    # "i":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->shouldReleaseFromTopStack()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 422
    .restart local v13    # "v":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createTopStackOutAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    .line 423
    .local v11, "set":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    .line 424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 426
    .local v15, "v2":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->optShow(Landroid/view/View;)V

    .line 428
    .end local v15    # "v2":Landroid/view/View;
    :cond_8
    const v16, 0x7f0d0086

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setEnabled(Z)V

    .line 429
    invoke-virtual {v13, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 439
    .end local v11    # "set":Landroid/view/animation/Animation;
    .end local v13    # "v":Landroid/view/View;
    :cond_9
    const/16 v16, 0x0

    cmpg-float v16, p1, v16

    if-gez v16, :cond_11

    .line 440
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 441
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->restoreRotation()V

    .line 487
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_1

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 489
    .restart local v13    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v6, v16, v17

    .line 490
    .restart local v6    # "rpos":F
    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x40200000    # 2.5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v18

    mul-float v17, v17, v18

    add-float v3, v16, v17

    .line 491
    .restart local v3    # "g":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    mul-float v17, p1, v3

    add-float v16, v16, v17

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v17, v17, v18

    cmpg-float v16, v16, v17

    if-gez v16, :cond_1

    .line 492
    sget v16, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v17

    sub-float v16, v16, v17

    div-float p1, v16, v3

    goto/16 :goto_1

    .line 443
    .end local v3    # "g":F
    .end local v6    # "rpos":F
    .end local v13    # "v":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mBeginRotateUpDistance:F

    cmpg-float v16, v16, v17

    if-gez v16, :cond_f

    .line 447
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->ROTATE_SPEED:F

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 448
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->should_clean_rotation:Z

    .line 449
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mFingerOnDisplay:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_c

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotation_restorer:Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 453
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mMaxRotateAngle:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_d

    .line 454
    sget v16, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mMaxRotateAngle:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    .line 455
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 457
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, 0x1

    .restart local v4    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_e

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 459
    .restart local v13    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotated_angle:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setRotation(Landroid/view/View;F)V

    .line 457
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 461
    .end local v13    # "v":Landroid/view/View;
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 462
    .end local v4    # "i":I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->shouldReleaseFromBottomStack()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 466
    .restart local v13    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->optShow(Landroid/view/View;)V

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createBottomStackOutAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    .line 468
    .restart local v11    # "set":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 469
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, 0x1

    .restart local v4    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_10

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 471
    .local v14, "v1":Landroid/view/View;
    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    sub-int v17, v17, v4

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    mul-float v17, v17, v18

    sub-float v7, v16, v17

    .line 473
    .local v7, "scaleCurrent":F
    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    sub-int v17, v17, v4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    mul-float v17, v17, v18

    sub-float v8, v16, v17

    .line 474
    .local v8, "scaleNew":F
    const-string v16, "scaleX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v7, v17, v18

    const/16 v18, 0x1

    aput v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 476
    .local v9, "scalex_anim":Landroid/animation/ObjectAnimator;
    const-string v16, "scaleY"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v7, v17, v18

    const/16 v18, 0x1

    aput v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 478
    .local v10, "scaley_anim":Landroid/animation/ObjectAnimator;
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 479
    .local v12, "set1":Landroid/animation/AnimatorSet;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 480
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_ANIMATION_DURATION:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 481
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->stopAnimators(Landroid/view/View;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 469
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 485
    .end local v7    # "scaleCurrent":F
    .end local v8    # "scaleNew":F
    .end local v9    # "scalex_anim":Landroid/animation/ObjectAnimator;
    .end local v10    # "scaley_anim":Landroid/animation/ObjectAnimator;
    .end local v12    # "set1":Landroid/animation/AnimatorSet;
    .end local v14    # "v1":Landroid/view/View;
    :cond_10
    invoke-virtual {v13, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_6

    .line 496
    .end local v4    # "i":I
    .end local v11    # "set":Landroid/view/animation/Animation;
    .end local v13    # "v":Landroid/view/View;
    :cond_11
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 504
    .restart local v4    # "i":I
    .restart local v5    # "res":Z
    .restart local v6    # "rpos":F
    .restart local v13    # "v":Landroid/view/View;
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 509
    .end local v5    # "res":Z
    .end local v6    # "rpos":F
    .end local v13    # "v":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->TOP_STACK_START_POSITION:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sget v19, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mTopStackDistance:F

    mul-float v18, v18, v19

    add-float v17, v17, v18

    cmpg-float v16, v16, v17

    if-gtz v16, :cond_15

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 513
    .restart local v13    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    if-lez v16, :cond_14

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 515
    .restart local v15    # "v2":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->optHide(Landroid/view/View;)V

    .line 517
    .end local v15    # "v2":Landroid/view/View;
    :cond_14
    const v16, 0x7f0d0086

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setEnabled(Z)V

    .line 518
    sget v16, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->TOP_STACK_START_POSITION:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mTopStackDistance:F

    mul-float v17, v17, v18

    add-float v16, v16, v17

    const/high16 v17, 0x3f800000    # 1.0f

    add-float v16, v16, v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    .line 520
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->stopAnimators(Landroid/view/View;)V

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createTopStackInAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    .line 522
    .restart local v11    # "set":Landroid/view/animation/Animation;
    invoke-virtual {v13, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 524
    .end local v11    # "set":Landroid/view/animation/Animation;
    .end local v13    # "v":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->BOTTOM_STACK_BORDER:F

    sub-float v17, v17, v18

    cmpl-float v16, v16, v17

    if-lez v16, :cond_17

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 528
    .restart local v13    # "v":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sget v17, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->BOTTOM_STACK_BORDER:F

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createBottomStackInAnimation()Landroid/view/animation/Animation;

    move-result-object v11

    .line 530
    .restart local v11    # "set":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_16

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 532
    .restart local v14    # "v1":Landroid/view/View;
    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    sub-int v17, v17, v4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    mul-float v17, v17, v18

    sub-float v7, v16, v17

    .line 533
    .restart local v7    # "scaleCurrent":F
    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    sub-int v17, v17, v4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_DIFF:F

    mul-float v17, v17, v18

    sub-float v8, v16, v17

    .line 534
    .restart local v8    # "scaleNew":F
    const-string v16, "scaleX"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v7, v17, v18

    const/16 v18, 0x1

    aput v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 536
    .restart local v9    # "scalex_anim":Landroid/animation/ObjectAnimator;
    const-string v16, "scaleY"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v7, v17, v18

    const/16 v18, 0x1

    aput v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 538
    .restart local v10    # "scaley_anim":Landroid/animation/ObjectAnimator;
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 539
    .restart local v12    # "set1":Landroid/animation/AnimatorSet;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    const/16 v17, 0x1

    aput-object v10, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 540
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->Z_ANIMATION_DURATION:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 541
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->stopAnimators(Landroid/view/View;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 530
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 545
    .end local v7    # "scaleCurrent":F
    .end local v8    # "scaleNew":F
    .end local v9    # "scalex_anim":Landroid/animation/ObjectAnimator;
    .end local v10    # "scaley_anim":Landroid/animation/ObjectAnimator;
    .end local v12    # "set1":Landroid/animation/AnimatorSet;
    .end local v14    # "v1":Landroid/view/View;
    :cond_16
    new-instance v16, Lcom/android/systemui/recent/smartswitcher/BaseContainer$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$2;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 560
    invoke-virtual {v13, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .end local v11    # "set":Landroid/view/animation/Animation;
    .end local v13    # "v":Landroid/view/View;
    :cond_17
    move/from16 v16, v2

    .line 562
    goto/16 :goto_4
.end method

.method doSlideOut(Landroid/view/View;F)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "d"    # F

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getSlidePosition(Landroid/view/View;)F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setSlidePosition(Landroid/view/View;F)V

    .line 272
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getSlidePosition(Landroid/view/View;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 273
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 989
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 991
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_2

    .line 992
    iget v13, p0, Landroid/view/View;->mPaddingLeft:I

    .line 993
    .local v13, "paddingLeft":I
    invoke-virtual {p0}, Landroid/view/View;->isPaddingOffsetRequired()Z

    move-result v12

    .line 994
    .local v12, "offsetRequired":Z
    if-eqz v12, :cond_0

    .line 995
    invoke-virtual {p0}, Landroid/view/View;->getLeftPaddingOffset()I

    move-result v0

    add-int/2addr v13, v0

    .line 998
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int v2, v0, v13

    .line 999
    .local v2, "left":I
    iget v0, p0, Landroid/view/View;->mRight:I

    add-int/2addr v0, v2

    iget v1, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v3, v0, v13

    .line 1000
    .local v3, "right":I
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v12}, Landroid/view/View;->getFadeTop(Z)I

    move-result v1

    add-int v4, v0, v1

    .line 1001
    .local v4, "top":I
    invoke-virtual {p0, v12}, Landroid/view/View;->getFadeHeight(Z)I

    move-result v0

    add-int v5, v4, v0

    .line 1003
    .local v5, "bottom":I
    if-eqz v12, :cond_1

    .line 1004
    invoke-virtual {p0}, Landroid/view/View;->getRightPaddingOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 1005
    invoke-virtual {p0}, Landroid/view/View;->getBottomPaddingOffset()I

    move-result v0

    add-int/2addr v5, v0

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget v6, p0, Landroid/view/View;->mScrollX:I

    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/view/View;->getTopFadingEdgeStrength()F

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getBottomFadingEdgeStrength()F

    move-result v9

    move-object v1, p1

    move v11, v10

    invoke-virtual/range {v0 .. v11}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFF)V

    .line 1011
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    .end local v12    # "offsetRequired":Z
    .end local v13    # "paddingLeft":I
    :cond_2
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x42400000    # 48.0f

    const/high16 v8, 0x42300000    # 44.0f

    const/high16 v7, 0x42280000    # 42.0f

    .line 964
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float v3, v5, v6

    .line 965
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    int-to-float v6, v6

    add-float v4, v5, v6

    .line 966
    .local v4, "y":F
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 967
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v5, v9

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float/2addr v5, v7

    cmpg-float v5, v3, v5

    if-gez v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v5, v8

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    .line 980
    .end local v2    # "v":Landroid/view/View;
    :goto_0
    return-object v2

    .line 972
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 973
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 974
    .local v1, "item":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    add-float/2addr v5, v9

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float/2addr v5, v7

    cmpg-float v5, v3, v5

    if-gez v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v5, v8

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    move-object v2, v1

    .line 977
    goto :goto_0

    .line 972
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 980
    .end local v1    # "item":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 984
    const v0, 0x7f0d007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getHorizontalFadingEdgeLengthCallback()I

    move-result v0

    .line 1027
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method protected abstract getScrollDistance(FF)F
.end method

.method protected abstract getScrollPosition(Landroid/view/View;)F
.end method

.method protected abstract getScrollSize()I
.end method

.method protected abstract getScrollVelocity(FF)F
.end method

.method protected abstract getSlideDistance(FF)F
.end method

.method protected abstract getSlidePosition(Landroid/view/View;)F
.end method

.method protected abstract getSlideVelocity(FF)F
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getVerticalFadingEdgeLengthCallback()I

    move-result v0

    .line 1018
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mNumItemsInOneScreenful:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->onAttachedToWindowCallback(Lcom/android/systemui/recent/RecentsCallback;Landroid/widget/LinearLayout;Z)V

    .line 1048
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 956
    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipe:Z

    .line 957
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 958
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 935
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->addToRecycledViews(Landroid/view/View;)V

    .line 936
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 937
    .local v0, "index":I
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    if-ge v0, v2, :cond_0

    .line 938
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 939
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    if-gt v0, v2, :cond_0

    .line 940
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    .line 944
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v1

    .line 945
    .local v1, "pos":F
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 946
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 947
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 948
    new-instance v2, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;

    const/16 v3, -0xe

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;IFI)V

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 950
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v2, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    .line 951
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1052
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1053
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1054
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 1055
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 1057
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 1058
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 961
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 1033
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 1034
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 1035
    const v1, 0x7f0d0080

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 1036
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1039
    .local v0, "leftPadding":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setOverScrollEffectPadding(II)V

    .line 1040
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1066
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1067
    const-string v0, "MIK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1096
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1098
    if-nez p2, :cond_0

    if-ne p1, p0, :cond_0

    .line 1099
    new-instance v0, Lcom/android/systemui/recent/smartswitcher/BaseContainer$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$9;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1105
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 10
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 888
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 889
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 890
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 891
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->BOTTOM_STACK_BORDER:F

    sub-float/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    .line 892
    invoke-virtual {p0, v4}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createBottomStackInAnimationInternal(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 893
    .local v0, "a":Landroid/view/animation/Animation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 894
    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 895
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 896
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 897
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 898
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 899
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollSize()I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->BOTTOM_STACK_BORDER:F

    sub-float/2addr v5, v6

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    .line 900
    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->createBottomStackInAnimationInternal(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 901
    .local v1, "aa":Landroid/view/animation/Animation;
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 902
    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 903
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 897
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 905
    .end local v1    # "aa":Landroid/view/animation/Animation;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    .line 906
    new-instance v5, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;

    sget v6, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->TOP_STACK_START_POSITION:I

    add-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    invoke-direct {v5, p0, v7, v6, v7}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;IFI)V

    invoke-virtual {v5}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRemoverRunnable;->run()V

    .line 907
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 908
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 909
    .restart local v3    # "v":Landroid/view/View;
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 907
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 912
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v2    # "i":I
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected abstract optHide(Landroid/view/View;)V
.end method

.method protected abstract optShow(Landroid/view/View;)V
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 740
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 741
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 742
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    .line 743
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->bottomStackIndex:I

    .line 744
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 916
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->dismissChild(Landroid/view/View;)V

    .line 917
    return-void
.end method

.method restoreRotation()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotation_restorer:Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 386
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->rotation_restorer:Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;->init()Lcom/android/systemui/recent/smartswitcher/BaseContainer$MyRestoreRotationRunnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 387
    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    .line 1109
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    new-instance v2, Lcom/android/systemui/recent/smartswitcher/BaseContainer$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer$10;-><init>(Lcom/android/systemui/recent/smartswitcher/BaseContainer;)V

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1129
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mNumItemsInOneScreenful:I

    .line 1131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mNumItemsInOneScreenful:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1132
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mAdapter:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->addToRecycledViews(Landroid/view/View;)V

    .line 1131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1134
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/recent/RecentsCallback;

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    .line 1148
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 0
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 1144
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1
    .param p1, "minAlpha"    # F

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setMinAlpha(F)V

    .line 749
    return-void
.end method

.method setNewPosition(Landroid/view/View;F)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "d"    # F

    .prologue
    .line 614
    const/4 v0, 0x1

    .line 615
    .local v0, "ret":Z
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v1

    add-float/2addr p2, v1

    .line 616
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->setScrollPosition(Landroid/view/View;F)V

    .line 617
    return v0
.end method

.method protected abstract setRotation(Landroid/view/View;F)V
.end method

.method protected abstract setScrollPosition(Landroid/view/View;F)V
.end method

.method protected abstract setSlidePosition(Landroid/view/View;F)V
.end method

.method protected shouldReleaseFromTopStack()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 590
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 608
    :goto_0
    return v0

    .line 593
    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->getScrollPosition(Landroid/view/View;)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->mTopStackReleaseDistance:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    move v0, v2

    .line 603
    goto :goto_0

    .line 604
    :cond_1
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->topStackIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_2

    move v0, v2

    .line 606
    goto :goto_0

    :cond_2
    move v0, v1

    .line 608
    goto :goto_0
.end method

.method protected stopAnimators(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 568
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/BaseContainer;->animators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .end local v0    # "a":Landroid/animation/Animator;
    :cond_1
    return-void
.end method
