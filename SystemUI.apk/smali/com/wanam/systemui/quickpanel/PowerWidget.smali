.class public Lcom/wanam/systemui/quickpanel/PowerWidget;
.super Landroid/widget/FrameLayout;
.source "PowerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;,
        Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BUTTONS_DEFAULT:Ljava/lang/String; = "togglePowerSaving|toggleWifi|toggleMobileData|toggleBluetooth|toggleGPS|toggleDormantMode|toggleWifiAp|toggleBrightness|toggleAirplane|toggleSound|toggleAutoRotate|toggleSync|toggleScreenTimeout|toggleLockScreen|toggleReboot|toggleShutdown"

.field public static final BUTTON_DELIMITER:Ljava/lang/String; = "|"

.field private static final BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final BUTTON_LAYOUT_PARAMS_GRID_LANDSCAPE:Landroid/widget/LinearLayout$LayoutParams;

.field private static final BUTTON_LAYOUT_PARAMS_GRID_PORTRAIT:Landroid/widget/LinearLayout$LayoutParams;

.field public static final EXPANDED_BRIGHTNESS_MODE:Ljava/lang/String; = "expanded_brightness_mode"

.field public static final EXPANDED_FLASH_MODE:Ljava/lang/String; = "expanded_flash_mode"

.field public static final EXPANDED_HAPTIC_FEEDBACK:Ljava/lang/String; = "expanded_haptic_feedback"

.field public static final EXPANDED_HIDE_ONCHANGE:Ljava/lang/String; = "expanded_hide_onchange"

.field public static final EXPANDED_RING_MODE:Ljava/lang/String; = "expanded_ring_mode"

.field private static final LAYOUT_SCROLL_BUTTON_THRESHOLD_LAND:I = 0x8

.field private static final LAYOUT_SCROLL_BUTTON_THRESHOLD_PORT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PowerWidget"

.field public static final WIDGET_BUTTONS:Ljava/lang/String; = "expanded_widget_buttons"

.field private static final WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private mBroadcastReceiver:Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mGridScrollView:Landroid/widget/ScrollView;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLinearLayoutRow1:Landroid/widget/LinearLayout;

.field private mLinearLayoutRow2:Landroid/widget/LinearLayout;

.field private mLinearLayoutRow3:Landroid/widget/LinearLayout;

.field private mLinearLayoutRow4:Landroid/widget/LinearLayout;

.field private mLinearLayoutRow5:Landroid/widget/LinearLayout;

.field private mLinearLayoutRow6:Landroid/widget/LinearLayout;

.field private mLinearLayoutRow7:Landroid/widget/LinearLayout;

.field private mLinearLayoutRow8:Landroid/widget/LinearLayout;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mVerticalLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 114
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/wanam/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 120
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/wanam/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 45
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/wanam/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS_GRID_PORTRAIT:Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3e000000    # 0.125f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/wanam/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS_GRID_LANDSCAPE:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    .line 142
    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    .line 143
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 146
    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/wanam/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/wanam/systemui/quickpanel/PowerWidget;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->updateButtonLayoutWidth()V

    return-void
.end method

.method static synthetic access$200(Lcom/wanam/systemui/quickpanel/PowerWidget;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wanam/systemui/quickpanel/PowerWidget;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wanam/systemui/quickpanel/PowerWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/wanam/systemui/quickpanel/PowerWidget;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->animateCollapse()V

    return-void
.end method

.method private addRowsToVerticalLinearLayout()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    .line 212
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 214
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    return-void
.end method

.method private addViewToLinearLayoutRowsAndFixWidth(Landroid/view/View;I)V
    .locals 11
    .param p1, "localView"    # Landroid/view/View;
    .param p2, "paramInt"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 138
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 141
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v4, 0x8

    .line 142
    .local v2, "widthLandscape":I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v0, "layoutLandscape":Landroid/widget/LinearLayout$LayoutParams;
    if-lt p2, v7, :cond_1

    const/16 v4, 0x8

    if-gt p2, v4, :cond_1

    .line 146
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .end local v0    # "layoutLandscape":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "widthLandscape":I
    :cond_0
    :goto_0
    return-void

    .line 148
    .restart local v0    # "layoutLandscape":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v2    # "widthLandscape":I
    :cond_1
    const/16 v4, 0x9

    if-lt p2, v4, :cond_2

    const/16 v4, 0x10

    if-gt p2, v4, :cond_2

    .line 150
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 152
    :cond_2
    const/16 v4, 0x11

    if-lt p2, v4, :cond_3

    const/16 v4, 0x18

    if-gt p2, v4, :cond_3

    .line 154
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow3:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 156
    :cond_3
    const/16 v4, 0x19

    if-lt p2, v4, :cond_4

    const/16 v4, 0x20

    if-gt p2, v4, :cond_4

    .line 158
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow4:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 160
    :cond_4
    const/16 v4, 0x21

    if-lt p2, v4, :cond_0

    const/16 v4, 0x24

    if-gt p2, v4, :cond_0

    .line 162
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow5:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 164
    const/16 v4, 0x25

    if-lt p2, v4, :cond_0

    const/16 v4, 0x28

    if-gt p2, v4, :cond_0

    .line 166
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow6:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 169
    .end local v0    # "layoutLandscape":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "widthLandscape":I
    :cond_5
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v4, 0x4

    .line 170
    .local v3, "widthPortrait":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    .local v1, "layoutPortrait":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x1

    if-lt p2, v4, :cond_6

    const/4 v4, 0x4

    if-gt p2, v4, :cond_6

    .line 174
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 176
    :cond_6
    const/16 v4, 0x5

    if-lt p2, v4, :cond_7

    const/16 v4, 0x8

    if-gt p2, v4, :cond_7

    .line 178
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 180
    :cond_7
    const/16 v4, 0x9

    if-lt p2, v4, :cond_8

    const/16 v4, 0xc

    if-gt p2, v4, :cond_8

    .line 182
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow3:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 184
    :cond_8
    const/16 v4, 0xd

    if-lt p2, v4, :cond_9

    const/16 v4, 0x10

    if-gt p2, v4, :cond_9

    .line 186
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow4:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 188
    :cond_9
    const/16 v4, 0x11

    if-lt p2, v4, :cond_a

    const/16 v4, 0x14

    if-gt p2, v4, :cond_a

    .line 190
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow5:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 192
    :cond_a
    const/16 v4, 0x15

    if-lt p2, v4, :cond_b

    const/16 v4, 0x18

    if-gt p2, v4, :cond_b

    .line 194
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow6:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 196
    :cond_b
    const/16 v4, 0x19

    if-lt p2, v4, :cond_c

    const/16 v4, 0x1c

    if-gt p2, v4, :cond_c

    .line 198
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow7:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 200
    :cond_c
    const/16 v4, 0x1d

    if-lt p2, v4, :cond_d

    const/16 v4, 0x20

    if-gt p2, v4, :cond_d

    .line 202
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow8:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 200
    :cond_d
    const/16 v4, 0x21

    if-lt p2, v4, :cond_e

    const/16 v4, 0x24

    if-gt p2, v4, :cond_e

    .line 202
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 200
    :cond_e
    const/16 v4, 0x25

    if-lt p2, v4, :cond_f

    const/16 v4, 0x28

    if-gt p2, v4, :cond_f

    .line 202
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 200
    :cond_f
    const/16 v4, 0x29

    if-lt p2, v4, :cond_10

    const/16 v4, 0x2c

    if-gt p2, v4, :cond_10

    .line 202
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow3:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 200
    :cond_10
    const/16 v4, 0x2d

    if-lt p2, v4, :cond_11

    const/16 v4, 0x30

    if-gt p2, v4, :cond_11

    .line 202
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow4:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 200
    :cond_11
    const/16 v4, 0x31

    if-lt p2, v4, :cond_12

    const/16 v4, 0x34

    if-gt p2, v4, :cond_12

    .line 202
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow5:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 200
    .line 202
    :cond_12
    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow6:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private animateCollapse()V
    .locals 3

    .prologue
    .line 378
    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 379
    .local v0, "sbm":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 380
    return-void
.end method

.method private isOrientationLandscape()Z
    .locals 3

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, "landscape":Z
    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 315
    const/4 v0, 0x1

    .line 319
    :cond_0
    return v0
.end method

.method private needScrollBar(I)Z
    .locals 5
    .param p1, "buttonCount"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 286
    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 287
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 288
    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    move v1, v4

    .line 291
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 288
    goto :goto_0

    .line 291
    :cond_1
    const/4 v1, 0x4

    if-le p1, v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method private observeAllObserver()V
    .locals 3

    .prologue
    .line 251
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    .line 252
    .local v1, "observer":Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    invoke-virtual {v1}, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->observe()V

    goto :goto_0

    .line 253
    .end local v1    # "observer":Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    :cond_0
    return-void
.end method

.method private setupBroadcastReceiver()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;-><init>(Lcom/wanam/systemui/quickpanel/PowerWidget;Lcom/wanam/systemui/quickpanel/PowerWidget$1;)V

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    .line 272
    :cond_0
    return-void
.end method

.method private setupLinearLayoutRows()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow1:Landroid/widget/LinearLayout;

    .line 110
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow2:Landroid/widget/LinearLayout;

    .line 113
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 115
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow3:Landroid/widget/LinearLayout;

    .line 116
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 118
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow4:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow5:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow6:Landroid/widget/LinearLayout;

    .line 125
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow6:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 127
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow7:Landroid/widget/LinearLayout;

    .line 128
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow8:Landroid/widget/LinearLayout;

    .line 131
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mLinearLayoutRow8:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 133
    return-void
.end method

.method private setupSettingsObserver()V
    .locals 6

    .prologue
    .line 235
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->unobserveAllObserver()V

    .line 237
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    const-string v5, "expanded_haptic_feedback"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/wanam/systemui/quickpanel/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    const-string v5, "expanded_widget_buttons"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/wanam/systemui/quickpanel/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-static {}, Lcom/wanam/systemui/quickpanel/PowerButton;->getAllObservedUris()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 246
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    new-instance v3, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    iget-object v4, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4, v1}, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;-><init>(Lcom/wanam/systemui/quickpanel/PowerWidget;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method private unobserveAllObserver()V
    .locals 3

    .prologue
    .line 256
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;

    .line 257
    .local v1, "observer":Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    invoke-virtual {v1}, Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;->unobserve()V

    goto :goto_0

    .line 258
    .end local v1    # "observer":Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetSettingsObserver;
    :cond_0
    return-void
.end method

.method private updateButtonLayoutWidth()V
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 277
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 278
    sget-object v1, Lcom/wanam/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    sget-object v1, Lcom/wanam/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 346
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 348
    new-instance v0, Lcom/wanam/systemui/quickpanel/PowerWidget$1;

    invoke-direct {v0, p0}, Lcom/wanam/systemui/quickpanel/PowerWidget$1;-><init>(Lcom/wanam/systemui/quickpanel/PowerWidget;)V

    invoke-virtual {p0, v0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    new-instance v0, Lcom/wanam/systemui/quickpanel/PowerWidget$2;

    invoke-direct {v0, p0}, Lcom/wanam/systemui/quickpanel/PowerWidget$2;-><init>(Lcom/wanam/systemui/quickpanel/PowerWidget;)V

    invoke-virtual {p0, v0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 363
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 366
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 369
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->unobserveAllObserver()V

    .line 374
    iget-object v0, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 375
    return-void
.end method

.method public setGlobalButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 261
    invoke-static {p1}, Lcom/wanam/systemui/quickpanel/PowerButton;->setGlobalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    return-void
.end method

.method public setGlobalButtonOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 265
    invoke-static {p1}, Lcom/wanam/systemui/quickpanel/PowerButton;->setGlobalOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 266
    return-void
.end method

.method public setupWidget()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const-string v11, "PowerWidget"

    .line 150
    const-string v9, "PowerWidget"

    const-string v9, "Clearing any old widget stuffs"

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->removeAllViews()V

    .line 155
    iget-object v9, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    if-eqz v9, :cond_0

    .line 156
    iget-object v9, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v9, v10}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->unobserveAllObserver()V

    .line 162
    invoke-static {}, Lcom/wanam/systemui/quickpanel/PowerButton;->unloadAllButtons()V

    .line 164
    const-string v9, "PowerWidget"

    const-string v9, "Setting up widget"

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v9, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "expanded_widget_buttons"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "buttons":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 168
    const-string v9, "PowerWidget"

    const-string v9, "Default buttons being loaded"

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v4, "toggleScreencapture|toggleWifi|toggleMobileData|toggleBluetooth|toggleGPS|toggleFlashlight|toggleWifiAp|toggleBrightness|toggleAirplane|toggleSound|toggleAutoRotate|toggleSync|toggleScreenTimeout|toggleLockScreen|toggleReboot|toggleShutdown"

    .line 171
    :cond_1
    const-string v9, "PowerWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Button list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    .local v8, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 176
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 17
    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->setupLinearLayoutRows()V

    .line 178
    const/4 v2, 0x0

    .line 179
    .local v2, "buttonCount":I
    const-string v9, "\\|"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_4

    aget-object v1, v0, v6

    .line 180
    .local v1, "button":Ljava/lang/String;
    const-string v9, "PowerWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Setting up button: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v9, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x5030004

    invoke-virtual {v9, v10, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 184
    .local v3, "buttonView":Landroid/view/View;
    invoke-static {v1, v3}, Lcom/wanam/systemui/quickpanel/PowerButton;->loadButton(Ljava/lang/String;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 186
    sget-object v9, Lcom/wanam/systemui/quickpanel/PowerWidget;->BUTTON_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, 0x0

    if-eqz v14, :cond_2

    invoke-virtual {v8, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 18
    invoke-direct {p0, v3, v2}, Lcom/wanam/systemui/quickpanel/PowerWidget;->addViewToLinearLayoutRowsAndFixWidth(Landroid/view/View;I)V

    .line 179
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 189
    :cond_3
    const-string v9, "PowerWidget"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error setting up button: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 194
    .end local v1    # "button":Ljava/lang/String;
    .end local v3    # "buttonView":Landroid/view/View;
    :cond_4
    invoke-direct {p0, v2}, Lcom/wanam/systemui/quickpanel/PowerWidget;->needScrollBar(I)Z

    move-result v9

    const/4 v9, 0x0

    if-eqz v9, :cond_5

    .line 204
    iget-object v9, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x5030006

    invoke-virtual {v9, v10, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/HorizontalScrollView;

    iput-object v9, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 206
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v10

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v11

    iget-object v12, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v12}, Landroid/widget/HorizontalScrollView;->getVerticalScrollbarWidth()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 207
    iget-object v9, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v10, Lcom/wanam/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9, v8, v10}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v9, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mScrollView:Landroid/widget/HorizontalScrollView;

    sget-object v10, Lcom/wanam/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v9, v10}, Lcom/wanam/systemui/quickpanel/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    :goto_2
    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->setupBroadcastReceiver()V

    .line 216
    invoke-static {}, Lcom/wanam/systemui/quickpanel/PowerButton;->getAllBroadcastIntentFilters()Landroid/content/IntentFilter;

    move-result-object v5

    .line 218
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v9, "android.settings.SETTINGS_CHANGED_ACTION"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v9, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    iget-object v9, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mBroadcastReceiver:Lcom/wanam/systemui/quickpanel/PowerWidget$WidgetBroadcastReceiver;

    invoke-virtual {v9, v10, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->setupSettingsObserver()V

    .line 227
    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->observeAllObserver()V

    .line 228
    return-void

    .line 211
    .end local v5    # "filter":Landroid/content/IntentFilter;
    :cond_5
    const/4 v14, 0x0

    if-eqz v14, :cond_6

    sget-object v9, Lcom/wanam/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v8, v9}, Lcom/wanam/systemui/quickpanel/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    :cond_6
    iget-object v9, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x503001b

    invoke-virtual {v9, v14, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    iput-object v9, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mGridScrollView:Landroid/widget/ScrollView;

    .line 23
    iget-object v14, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mGridScrollView:Landroid/widget/ScrollView;

    invoke-direct {p0}, Lcom/wanam/systemui/quickpanel/PowerWidget;->addRowsToVerticalLinearLayout()V

    iget-object v9, p0, Lcom/wanam/systemui/quickpanel/PowerWidget;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 25
    sget-object v9, Lcom/wanam/systemui/quickpanel/PowerWidget;->WIDGET_LAYOUT_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v14, v9}, Lcom/wanam/systemui/quickpanel/PowerWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public updateWidget()V
    .locals 0

    .prologue
    .line 231
    invoke-static {}, Lcom/wanam/systemui/quickpanel/PowerButton;->updateAllButtons()V

    .line 232
    return-void
.end method
