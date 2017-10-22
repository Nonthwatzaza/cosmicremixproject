.class public Lcom/suyonoion/easyviewpagerui2/CubeOutTransformer;
.super Ljava/lang/Object;
.source "CubeOutTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPagingEnabled()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    .line 21
    cmpg-float v1, p2, v4

    if-gez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v0, v1, v5

    .line 22
    .local v0, "rotation":F
    cmpl-float v1, v0, v2

    if-gtz v1, :cond_0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_3

    :cond_0
    move v1, v4

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 23
    cmpg-float v1, p2, v4

    if-gez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 25
    mul-float v1, v2, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 26
    return-void

    .end local v0    # "rotation":F
    :cond_2
    move v1, v3

    .line 21
    goto :goto_0

    .line 22
    .restart local v0    # "rotation":F
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1
.end method
