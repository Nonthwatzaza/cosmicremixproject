.class public Lcom/android/systemui/BeanBag$Board;
.super Landroid/widget/FrameLayout;
.source "BeanBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BeanBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Board"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BeanBag$Board$Bean;
    }
.end annotation


# static fields
.field static BEANS:[I

.field static COLORS:[I

.field static LUCKY:F

.field static MAX_RADIUS:I

.field static MAX_SCALE:F

.field static MIN_SCALE:F

.field static NUM_BEANS:I

.field static sRNG:Ljava/util/Random;


# instance fields
.field private boardHeight:I

.field private boardWidth:I

.field mAnim:Landroid/animation/TimeAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/systemui/BeanBag$Board;->sRNG:Ljava/util/Random;

    .line 102
    const/16 v0, 0x28

    sput v0, Lcom/android/systemui/BeanBag$Board;->NUM_BEANS:I

    .line 103
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Lcom/android/systemui/BeanBag$Board;->MIN_SCALE:F

    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/systemui/BeanBag$Board;->MAX_SCALE:F

    .line 106
    const v0, 0x3a83126f    # 0.001f

    sput v0, Lcom/android/systemui/BeanBag$Board;->LUCKY:F

    .line 108
    const/high16 v0, 0x44100000    # 576.0f

    sget v1, Lcom/android/systemui/BeanBag$Board;->MAX_SCALE:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/systemui/BeanBag$Board;->MAX_RADIUS:I

    .line 110
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/BeanBag$Board;->BEANS:[I

    .line 122
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/BeanBag$Board;->COLORS:[I

    return-void

    .line 110
    :array_0
    .array-data 4
        0x7f02008e
        0x7f02008e
        0x7f02008e
        0x7f02008e
        0x7f02008f
        0x7f02008f
        0x7f020090
        0x7f020090
        0x7f020091
    .end array-data

    .line 122
    :array_1
    .array-data 4
        -0xff3400
        -0x340000
        -0xffff34
        -0x100
        -0x8000
        -0xff3301
        -0xff80
        -0x7fff01
        -0x7f80
        -0x7f7f01
        -0x4f3f30
        -0x222223
        -0xcccccd
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "as"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 269
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 271
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 273
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 274
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/BeanBag$Board;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BeanBag$Board;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/systemui/BeanBag$Board;->boardHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/BeanBag$Board;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/BeanBag$Board;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/systemui/BeanBag$Board;->boardWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/BeanBag$Board;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/BeanBag$Board;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/systemui/BeanBag$Board;->reset()V

    return-void
.end method

.method static clamp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "a"    # F
    .param p2, "b"    # F

    .prologue
    .line 85
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "a":F
    :goto_0
    return p1

    .restart local p1    # "a":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method static dot(FFFF)F
    .locals 1
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 89
    mul-float v0, p0, p2

    add-float/2addr v0, p1

    add-float/2addr v0, p3

    return v0
.end method

.method static flip()Z
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/systemui/BeanBag$Board;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "f"    # F

    .prologue
    .line 65
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method static mag(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 81
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static pick([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)TE;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "array":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/BeanBag$Board;->sRNG:Ljava/util/Random;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, p0, v0

    goto :goto_0
.end method

.method static pickInt([I)I
    .locals 2
    .param p0, "array"    # [I

    .prologue
    .line 98
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/systemui/BeanBag$Board;->sRNG:Ljava/util/Random;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget v0, p0, v0

    goto :goto_0
.end method

.method static randfrange(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 69
    sget-object v0, Lcom/android/systemui/BeanBag$Board;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/BeanBag$Board;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method static randsign()I
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/systemui/BeanBag$Board;->sRNG:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private reset()V
    .locals 6

    .prologue
    const/4 v3, -0x2

    const/4 v5, 0x0

    .line 278
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 280
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 284
    .local v2, "wrap":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/android/systemui/BeanBag$Board;->NUM_BEANS:I

    if-ge v0, v3, :cond_0

    .line 285
    new-instance v1, Lcom/android/systemui/BeanBag$Board$Bean;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/android/systemui/BeanBag$Board$Bean;-><init>(Lcom/android/systemui/BeanBag$Board;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 286
    .local v1, "nv":Lcom/android/systemui/BeanBag$Board$Bean;
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    int-to-float v3, v0

    sget v4, Lcom/android/systemui/BeanBag$Board;->NUM_BEANS:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v1, Lcom/android/systemui/BeanBag$Board$Bean;->z:F

    .line 288
    iget v3, v1, Lcom/android/systemui/BeanBag$Board$Bean;->z:F

    iget v4, v1, Lcom/android/systemui/BeanBag$Board$Bean;->z:F

    mul-float/2addr v3, v4

    iput v3, v1, Lcom/android/systemui/BeanBag$Board$Bean;->z:F

    .line 289
    invoke-virtual {v1}, Lcom/android/systemui/BeanBag$Board$Bean;->reset()V

    .line 290
    iget v3, p0, Lcom/android/systemui/BeanBag$Board;->boardWidth:I

    int-to-float v3, v3

    invoke-static {v5, v3}, Lcom/android/systemui/BeanBag$Board;->randfrange(FF)F

    move-result v3

    iput v3, v1, Lcom/android/systemui/BeanBag$Board$Bean;->x:F

    .line 291
    iget v3, p0, Lcom/android/systemui/BeanBag$Board;->boardHeight:I

    int-to-float v3, v3

    invoke-static {v5, v3}, Lcom/android/systemui/BeanBag$Board;->randfrange(FF)F

    move-result v3

    iput v3, v1, Lcom/android/systemui/BeanBag$Board$Bean;->y:F

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "nv":Lcom/android/systemui/BeanBag$Board$Bean;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/BeanBag$Board;->mAnim:Landroid/animation/TimeAnimator;

    if-eqz v3, :cond_1

    .line 295
    iget-object v3, p0, Lcom/android/systemui/BeanBag$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 297
    :cond_1
    new-instance v3, Landroid/animation/TimeAnimator;

    invoke-direct {v3}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/BeanBag$Board;->mAnim:Landroid/animation/TimeAnimator;

    .line 298
    iget-object v3, p0, Lcom/android/systemui/BeanBag$Board;->mAnim:Landroid/animation/TimeAnimator;

    new-instance v4, Lcom/android/systemui/BeanBag$Board$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/BeanBag$Board$1;-><init>(Lcom/android/systemui/BeanBag$Board;)V

    invoke-virtual {v3, v4}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 337
    return-void
.end method


# virtual methods
.method public isOpaque()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 365
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/BeanBag$Board;->stopAnimation()V

    .line 367
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 396
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 341
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 342
    iput p1, p0, Lcom/android/systemui/BeanBag$Board;->boardWidth:I

    .line 343
    iput p2, p0, Lcom/android/systemui/BeanBag$Board;->boardHeight:I

    .line 345
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/BeanBag$Board;->stopAnimation()V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/BeanBag$Board;->mAnim:Landroid/animation/TimeAnimator;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/android/systemui/BeanBag$Board$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/BeanBag$Board$2;-><init>(Lcom/android/systemui/BeanBag$Board;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BeanBag$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/systemui/BeanBag$Board;->mAnim:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BeanBag$Board;->mAnim:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 361
    :cond_0
    return-void
.end method
