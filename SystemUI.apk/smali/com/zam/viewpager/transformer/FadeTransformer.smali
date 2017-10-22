.class public Lcom/zam/viewpager/transformer/FadeTransformer;
.super Lcom/zam/viewpager/transformer/ABaseTransformer;
.source "FadeTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/zam/viewpager/transformer/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public isPagingEnabled()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public onTransform(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 14
    cmpg-float v2, p2, v1

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 16
    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 18
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 19
    .local v0, "normalizedPosition":F
    div-float v1, v0, v5

    float-to-double v1, v1

    add-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 20
    div-float v1, v0, v5

    float-to-double v1, v1

    add-double/2addr v1, v3

    double-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 21
    return-void
.end method
