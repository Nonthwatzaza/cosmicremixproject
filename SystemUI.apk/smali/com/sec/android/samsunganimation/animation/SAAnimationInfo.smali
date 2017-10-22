.class public Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;
.super Ljava/lang/Object;
.source "SAAnimationInfo.java"


# instance fields
.field public mAutoReverse:I

.field public mDuration:I

.field public mInterpolatorType:I

.field public mOffset:I

.field public mRepeatCount:I

.field public mSlideHandle:I

.field public mType:I

.field public mW:F

.field public mX:F

.field public mY:F

.field public mZ:F

.field public tW:F

.field public tX:F

.field public tY:F

.field public tZ:F


# direct methods
.method public constructor <init>(IIFFFFFFFFI)V
    .locals 2
    .param p1, "slideHandle"    # I
    .param p2, "type"    # I
    .param p3, "fx"    # F
    .param p4, "fy"    # F
    .param p5, "fz"    # F
    .param p6, "fw"    # F
    .param p7, "tx"    # F
    .param p8, "ty"    # F
    .param p9, "tz"    # F
    .param p10, "tw"    # F
    .param p11, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mInterpolatorType:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mRepeatCount:I

    .line 39
    iput v1, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mOffset:I

    .line 40
    iput v1, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mAutoReverse:I

    .line 84
    iput p1, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mSlideHandle:I

    .line 85
    iput p2, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mType:I

    .line 86
    iput p3, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mX:F

    .line 87
    iput p4, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mY:F

    .line 88
    iput p5, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mZ:F

    .line 89
    iput p6, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mW:F

    .line 91
    iput p7, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->tX:F

    .line 92
    iput p8, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->tY:F

    .line 93
    iput p9, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->tZ:F

    .line 94
    iput p10, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->tW:F

    .line 95
    iput p11, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mDuration:I

    .line 96
    return-void
.end method

.method public constructor <init>(IIFFFFI)V
    .locals 2
    .param p1, "slideHandle"    # I
    .param p2, "type"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F
    .param p6, "w"    # F
    .param p7, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mInterpolatorType:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mRepeatCount:I

    .line 39
    iput v1, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mOffset:I

    .line 40
    iput v1, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mAutoReverse:I

    .line 57
    iput p1, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mSlideHandle:I

    .line 58
    iput p2, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mType:I

    .line 59
    iput p3, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mX:F

    .line 60
    iput p4, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mY:F

    .line 61
    iput p5, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mZ:F

    .line 62
    iput p6, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mW:F

    .line 63
    iput p7, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mDuration:I

    .line 65
    return-void
.end method


# virtual methods
.method public setProperty()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInterpolatorType()I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mInterpolatorType:I

    .line 101
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mDuration:I

    .line 102
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getRepeatCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mRepeatCount:I

    .line 103
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getOffset()I

    move-result v0

    iput v0, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mOffset:I

    .line 104
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getAutoReverse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mAutoReverse:I

    .line 111
    :goto_0
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getAnimationDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iput v1, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mDuration:I

    .line 114
    :cond_0
    return-void

    .line 108
    :cond_1
    iput v1, p0, Lcom/sec/android/samsunganimation/animation/SAAnimationInfo;->mAutoReverse:I

    goto :goto_0
.end method
