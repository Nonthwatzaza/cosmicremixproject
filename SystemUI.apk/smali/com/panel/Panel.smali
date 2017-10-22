.class public Lcom/panel/Panel;
.super Landroid/widget/ViewFlipper;
.source "Panel.java"


# instance fields
.field VF:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const v2, 0x7f0d0143

    invoke-virtual {p0, v2}, Lcom/panel/Panel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/panel/Panel;->VF:Landroid/widget/ViewFlipper;

    .line 20
    new-instance v0, Lcom/panel/Panel$1;

    invoke-direct {v0, p0}, Lcom/panel/Panel$1;-><init>(Lcom/panel/Panel;)V

    .line 29
    .local v0, "mReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Lcom/panel/Panel$2;

    invoke-direct {v1, p0}, Lcom/panel/Panel$2;-><init>(Lcom/panel/Panel;)V

    .line 38
    .local v1, "mReceiver1":Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.b16h22.statusbar.FLIP_TO_SLIDER"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.b16h22.statusbar.FLIP_TO_PANEL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/panel/Panel;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/panel/Panel;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/panel/Panel;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/panel/Panel;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/panel/Panel;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/panel/Panel;->inFromLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/panel/Panel;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/panel/Panel;->outToRightAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private inFromLeftAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 68
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 69
    const/high16 v2, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    .line 68
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 73
    .local v0, "inFromLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 74
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 75
    return-object v0
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 46
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 47
    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    .line 46
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 51
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 52
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 53
    return-object v0
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 57
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 59
    const/high16 v4, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    .line 57
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 62
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 63
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 64
    return-object v0
.end method

.method private outToRightAnimation()Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 79
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 81
    const/high16 v4, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    .line 79
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 84
    .local v0, "outtoRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 85
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    return-object v0
.end method
