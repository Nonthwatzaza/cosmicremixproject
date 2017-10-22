.class public Lcom/music/CircleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircleDrawable.java"


# static fields
.field public static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field public static final TAG:Ljava/lang/String; = "RoundedDrawable"


# instance fields
.field private final mBitmapHeight:I

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private final mBitmapShader:Landroid/graphics/BitmapShader;

.field private final mBitmapWidth:I

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mBorderRect:Landroid/graphics/RectF;

.field private mBorderWidth:F

.field private final mBounds:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private final mDrawableRect:Landroid/graphics/RectF;

.field private mOval:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private final mShaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/graphics/drawable/Drawable;-><init>()V

    move-object v3, v0

    new-instance v4, Landroid/graphics/RectF;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v3, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    move-object v3, v0

    new-instance v4, Landroid/graphics/RectF;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v3, Lcom/music/CircleDrawable;->mDrawableRect:Landroid/graphics/RectF;

    move-object v3, v0

    new-instance v4, Landroid/graphics/RectF;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v3, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    move-object v3, v0

    new-instance v4, Landroid/graphics/RectF;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v3, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v3, v0

    new-instance v4, Landroid/graphics/Matrix;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, v3, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v3, v0

    const/4 v4, 0x0

    int-to-float v4, v4

    iput v4, v3, Lcom/music/CircleDrawable;->mCornerRadius:F

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/music/CircleDrawable;->mOval:Z

    move-object v3, v0

    const/4 v4, 0x0

    int-to-float v4, v4

    iput v4, v3, Lcom/music/CircleDrawable;->mBorderWidth:F

    move-object v3, v0

    const/high16 v4, -0x1000000

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Lcom/music/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    move-object v3, v0

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v4, v3, Lcom/music/CircleDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 46
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v3, Lcom/music/CircleDrawable;->mBitmapWidth:I

    .line 47
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v3, Lcom/music/CircleDrawable;->mBitmapHeight:I

    .line 48
    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    int-to-float v4, v4

    const/4 v5, 0x0

    int-to-float v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/music/CircleDrawable;->mBitmapWidth:I

    int-to-float v6, v6

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBitmapHeight:I

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    move-object v3, v0

    new-instance v4, Landroid/graphics/BitmapShader;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v6, v7, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v4, v3, Lcom/music/CircleDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 51
    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 53
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lcom/music/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    .line 54
    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v3

    .line 58
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lcom/music/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    .line 59
    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/music/CircleDrawable;->getState()[I

    move-result-object v5

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget v4, v4, Lcom/music/CircleDrawable;->mBorderWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 102
    move-object v0, p0

    move-object v6, v0

    instance-of v6, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_0

    .line 103
    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    .line 119
    :goto_0
    return-object v0

    .line 106
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v2, v6

    .line 108
    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v3, v6

    .line 110
    move v6, v2

    move v7, v3

    :try_start_0
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v1, v6

    .line 111
    new-instance v6, Landroid/graphics/Canvas;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v4, v6

    .line 112
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v4

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    move-object v10, v4

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    move-object v6, v1

    move-object v0, v6

    goto :goto_0

    .line 113
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 115
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const/4 v6, 0x0

    move-object v1, v6

    goto :goto_1
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/music/CircleDrawable;
    .locals 7

    .prologue
    .line 66
    move-object v0, p0

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 67
    new-instance v3, Lcom/music/CircleDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/music/CircleDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v3

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public static fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    .line 74
    move-object v0, p0

    move-object v6, v0

    if-eqz v6, :cond_4

    .line 75
    move-object v6, v0

    instance-of v6, v6, Lcom/music/CircleDrawable;

    if-eqz v6, :cond_0

    .line 77
    move-object v6, v0

    move-object v0, v6

    .line 98
    :goto_0
    return-object v0

    .line 78
    :cond_0
    move-object v6, v0

    instance-of v6, v6, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_2

    .line 79
    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    move-object v1, v6

    .line 80
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v6

    move v2, v6

    .line 83
    const/4 v6, 0x0

    move v3, v6

    :goto_1
    move v6, v3

    move v7, v2

    if-lt v6, v7, :cond_1

    .line 87
    move-object v6, v1

    move-object v0, v6

    goto :goto_0

    .line 84
    :cond_1
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v4, v6

    .line 85
    move-object v6, v1

    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v7

    move-object v8, v4

    invoke-static {v8}, Lcom/music/CircleDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    move-result v6

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 91
    :cond_2
    move-object v6, v0

    invoke-static {v6}, Lcom/music/CircleDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v1, v6

    .line 92
    move-object v6, v1

    if-eqz v6, :cond_3

    .line 93
    new-instance v6, Lcom/music/CircleDrawable;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/music/CircleDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v6

    goto :goto_0

    .line 95
    :cond_3
    const-string v6, "RoundedDrawable"

    const-string v7, "Failed to create bitmap from drawable!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 98
    :cond_4
    move-object v6, v0

    move-object v0, v6

    goto :goto_0
.end method

.method private updateShaderMatrix()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v4, v6

    move-object v6, v4

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_0

    .line 145
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 146
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 148
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 149
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    move-object v8, v0

    iget v8, v8, Lcom/music/CircleDrawable;->mBitmapWidth:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    move-object v8, v0

    iget-object v8, v8, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    move-object v9, v0

    iget v9, v9, Lcom/music/CircleDrawable;->mBitmapHeight:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 230
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mDrawableRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 231
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBitmapShader:Landroid/graphics/BitmapShader;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v7}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void

    .line 151
    :cond_0
    move-object v6, v4

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_2

    .line 154
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 155
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 157
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 159
    const/4 v6, 0x0

    int-to-float v6, v6

    move v2, v6

    .line 160
    const/4 v6, 0x0

    int-to-float v6, v6

    move v3, v6

    .line 162
    move-object v6, v0

    iget v6, v6, Lcom/music/CircleDrawable;->mBitmapWidth:I

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    move-object v8, v0

    iget v8, v8, Lcom/music/CircleDrawable;->mBitmapHeight:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 163
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBitmapHeight:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v1, v6

    .line 164
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBitmapWidth:I

    int-to-float v7, v7

    move v8, v1

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move v2, v6

    .line 170
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move v7, v1

    move v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 171
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lcom/music/CircleDrawable;->mBorderWidth:F

    add-float/2addr v7, v8

    move v8, v3

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Lcom/music/CircleDrawable;->mBorderWidth:F

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v6

    .line 173
    goto/16 :goto_0

    .line 166
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBitmapWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    move v1, v6

    .line 167
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBitmapHeight:I

    int-to-float v7, v7

    move v8, v1

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    move v3, v6

    goto :goto_1

    .line 173
    :cond_2
    move-object v6, v4

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_5

    .line 176
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 178
    move-object v6, v0

    iget v6, v6, Lcom/music/CircleDrawable;->mBitmapWidth:I

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    move-object v6, v0

    iget v6, v6, Lcom/music/CircleDrawable;->mBitmapHeight:I

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    .line 179
    const/high16 v6, 0x3f800000    # 1.0f

    move v1, v6

    .line 185
    :goto_2
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBitmapWidth:I

    int-to-float v7, v7

    move v8, v1

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    move v2, v6

    .line 186
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBitmapHeight:I

    int-to-float v7, v7

    move v8, v1

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    move v3, v6

    .line 188
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move v7, v1

    move v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 189
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move v7, v2

    move v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-result v6

    .line 191
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 192
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v6

    .line 193
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 194
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v6

    .line 195
    goto/16 :goto_0

    .line 181
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBitmapWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object v8, v0

    iget v8, v8, Lcom/music/CircleDrawable;->mBitmapHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    move v1, v6

    goto/16 :goto_2

    .line 199
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 200
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v6

    .line 201
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v6

    .line 202
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 203
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v6

    .line 204
    goto/16 :goto_0

    .line 195
    :cond_5
    move-object v6, v4

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v6, v7, :cond_4

    .line 204
    move-object v6, v4

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_6

    .line 207
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 208
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v6

    .line 209
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v6

    .line 210
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 211
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v6

    .line 212
    goto/16 :goto_0

    :cond_6
    move-object v6, v4

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_7

    .line 215
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 216
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v6

    .line 217
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v6

    .line 218
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 219
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v6

    .line 220
    goto/16 :goto_0

    :cond_7
    move-object v6, v4

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne v6, v7, :cond_4

    .line 223
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 224
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v9, 0x2

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 225
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 226
    move-object v6, v0

    iget-object v6, v6, Lcom/music/CircleDrawable;->mShaderMatrix:Landroid/graphics/Matrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapRect:Landroid/graphics/RectF;

    move-object v8, v0

    iget-object v8, v8, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v6

    .line 227
    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/music/CircleDrawable;->mOval:Z

    if-eqz v3, :cond_1

    .line 247
    move-object v3, v0

    iget v3, v3, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v4, 0x0

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 248
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleDrawable;->mDrawableRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget-object v5, v5, Lcom/music/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 249
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget-object v5, v5, Lcom/music/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 259
    :goto_0
    return-void

    .line 251
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleDrawable;->mDrawableRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget-object v5, v5, Lcom/music/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 254
    :cond_1
    move-object v3, v0

    iget v3, v3, Lcom/music/CircleDrawable;->mBorderWidth:F

    const/4 v4, 0x0

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 255
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleDrawable;->mDrawableRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Lcom/music/CircleDrawable;->mCornerRadius:F

    const/4 v6, 0x0

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/music/CircleDrawable;->mCornerRadius:F

    const/4 v7, 0x0

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 257
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleDrawable;->mBorderRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Lcom/music/CircleDrawable;->mCornerRadius:F

    move-object v6, v0

    iget v6, v6, Lcom/music/CircleDrawable;->mCornerRadius:F

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 259
    :cond_2
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleDrawable;->mDrawableRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Lcom/music/CircleDrawable;->mCornerRadius:F

    move-object v6, v0

    iget v6, v6, Lcom/music/CircleDrawable;->mCornerRadius:F

    move-object v7, v0

    iget-object v7, v7, Lcom/music/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBorderColor()I
    .locals 3

    .prologue
    .line 321
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/music/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    .line 329
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/music/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    move-object v0, v2

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 3

    .prologue
    .line 311
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/music/CircleDrawable;->mBorderWidth:F

    move v0, v2

    return v0
.end method

.method public getCornerRadius()F
    .locals 3

    .prologue
    .line 302
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/music/CircleDrawable;->mCornerRadius:F

    move v0, v2

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/music/CircleDrawable;->mBitmapHeight:I

    move v0, v2

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/music/CircleDrawable;->mBitmapWidth:I

    move v0, v2

    return v0
.end method

.method public getOpacity()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    const/4 v2, -0x3

    move v0, v2

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 3

    .prologue
    .line 348
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/music/CircleDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v0, v2

    return-object v0
.end method

.method public isOval()Z
    .locals 3

    .prologue
    .line 339
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/music/CircleDrawable;->mOval:Z

    move v0, v2

    return v0
.end method

.method public isStateful()Z
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/music/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 238
    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBounds:Landroid/graphics/RectF;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 240
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleDrawable;->updateShaderMatrix()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    move v2, v4

    .line 130
    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    move v5, v2

    if-eq v4, v5, :cond_0

    .line 131
    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    const/4 v4, 0x1

    move v0, v4

    .line 134
    :goto_0
    return v0

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 271
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 272
    move-object v3, v0

    invoke-virtual {v3}, Lcom/music/CircleDrawable;->invalidateSelf()V

    return-void
.end method

.method public setBorderColor(I)Lcom/music/CircleDrawable;
    .locals 5

    .prologue
    .line 325
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/music/CircleDrawable;->setBorderColors(Landroid/content/res/ColorStateList;)Lcom/music/CircleDrawable;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public setBorderColors(Landroid/content/res/ColorStateList;)Lcom/music/CircleDrawable;
    .locals 7

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    :goto_0
    iput-object v4, v3, Lcom/music/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 334
    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleDrawable;->mBorderColor:Landroid/content/res/ColorStateList;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/music/CircleDrawable;->getState()[I

    move-result-object v5

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 335
    move-object v3, v0

    move-object v0, v3

    return-object v0

    .line 333
    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_0
.end method

.method public setBorderWidth(I)Lcom/music/CircleDrawable;
    .locals 5

    .prologue
    .line 315
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    int-to-float v4, v4

    iput v4, v3, Lcom/music/CircleDrawable;->mBorderWidth:F

    .line 316
    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBorderPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget v4, v4, Lcom/music/CircleDrawable;->mBorderWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 317
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorFilter;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-result-object v3

    .line 278
    move-object v3, v0

    invoke-virtual {v3}, Lcom/music/CircleDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadius(F)Lcom/music/CircleDrawable;
    .locals 5

    .prologue
    .line 306
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/music/CircleDrawable;->mCornerRadius:F

    .line 307
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setDither(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 283
    move-object v3, v0

    invoke-virtual {v3}, Lcom/music/CircleDrawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 288
    move-object v3, v0

    invoke-virtual {v3}, Lcom/music/CircleDrawable;->invalidateSelf()V

    return-void
.end method

.method public setOval(Z)Lcom/music/CircleDrawable;
    .locals 5

    .prologue
    .line 343
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/music/CircleDrawable;->mOval:Z

    .line 344
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/music/CircleDrawable;
    .locals 5

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    .line 353
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object v1, v3

    .line 355
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v4, v1

    if-eq v3, v4, :cond_1

    .line 356
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/music/CircleDrawable;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 357
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleDrawable;->updateShaderMatrix()V

    .line 359
    :cond_1
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public toBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 363
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Lcom/music/CircleDrawable;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method
