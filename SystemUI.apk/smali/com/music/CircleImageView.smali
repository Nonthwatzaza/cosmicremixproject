.class public Lcom/music/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# static fields
.field public static final DEFAULT_BORDER_WIDTH:I = 0x2

.field public static final DEFAULT_RADIUS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "RoundedImageView"


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private mBorderWidth:I

.field private mCornerRadius:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOval:Z

.field private mResource:I

.field private mRoundBackground:Z

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/music/CircleImageView;->mCornerRadius:I

    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lcom/music/CircleImageView;->mBorderWidth:I

    move-object v3, v0

    const v4, 0x106000b

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Lcom/music/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/music/CircleImageView;->mOval:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/music/CircleImageView;->mRoundBackground:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/music/CircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/music/CircleImageView;->mCornerRadius:I

    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Lcom/music/CircleImageView;->mBorderWidth:I

    move-object v5, v0

    const v6, 0x106000b

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lcom/music/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/music/CircleImageView;->mOval:Z

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/music/CircleImageView;->mRoundBackground:Z

    .line 44
    move-object v5, v0

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Lcom/music/CircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 45
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/music/CircleImageView;->mCornerRadius:I

    .line 46
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Lcom/music/CircleImageView;->mBorderWidth:I

    .line 47
    move-object v5, v0

    const v6, 0x106000b

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lcom/music/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 48
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/music/CircleImageView;->mRoundBackground:Z

    .line 49
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/music/CircleImageView;->mOval:Z

    .line 50
    move-object v5, v0

    invoke-direct {v5}, Lcom/music/CircleImageView;->updateDrawableAttrs()V

    .line 51
    move-object v5, v0

    invoke-direct {v5}, Lcom/music/CircleImageView;->updateBackgroundDrawableAttrs()V

    return-void
.end method

.method private resolveResource()Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    .line 101
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/music/CircleImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v1, v5

    .line 102
    move-object v5, v1

    if-nez v5, :cond_0

    .line 103
    const/4 v5, 0x0

    move-object v0, v5

    .line 116
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const/4 v5, 0x0

    move-object v2, v5

    .line 108
    move-object v5, v0

    iget v5, v5, Lcom/music/CircleImageView;->mResource:I

    const/4 v6, 0x0

    if-eq v5, v6, :cond_1

    .line 110
    move-object v5, v1

    move-object v6, v0

    :try_start_0
    iget v6, v6, Lcom/music/CircleImageView;->mResource:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v2, v5

    .line 116
    :cond_1
    :goto_1
    move-object v5, v2

    invoke-static {v5}, Lcom/music/CircleDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 110
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 112
    const-string v5, "RoundedImageView"

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "PPLUnable to find resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lcom/music/CircleImageView;->mResource:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    .line 113
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/music/CircleImageView;->mResource:I

    goto :goto_1
.end method

.method private updateAttrs(Landroid/graphics/drawable/Drawable;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v1

    if-nez v7, :cond_0

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_0
    move-object v7, v1

    instance-of v7, v7, Lcom/music/CircleDrawable;

    if-eqz v7, :cond_4

    .line 137
    move-object v7, v1

    check-cast v7, Lcom/music/CircleDrawable;

    move-object v8, v0

    iget-object v8, v8, Lcom/music/CircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Lcom/music/CircleDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/music/CircleDrawable;

    move-result-object v7

    move v8, v2

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-boolean v8, v8, Lcom/music/CircleImageView;->mRoundBackground:Z

    if-nez v8, :cond_2

    const/4 v8, 0x0

    :goto_1
    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/music/CircleDrawable;->setCornerRadius(F)Lcom/music/CircleDrawable;

    move-result-object v7

    move v8, v2

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-boolean v8, v8, Lcom/music/CircleImageView;->mRoundBackground:Z

    if-nez v8, :cond_3

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v7, v8}, Lcom/music/CircleDrawable;->setBorderWidth(I)Lcom/music/CircleDrawable;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/music/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v8}, Lcom/music/CircleDrawable;->setBorderColors(Landroid/content/res/ColorStateList;)Lcom/music/CircleDrawable;

    move-result-object v7

    move-object v8, v0

    iget-boolean v8, v8, Lcom/music/CircleImageView;->mOval:Z

    invoke-virtual {v7, v8}, Lcom/music/CircleDrawable;->setOval(Z)Lcom/music/CircleDrawable;

    move-result-object v7

    .line 146
    :cond_1
    goto :goto_0

    .line 137
    :cond_2
    move-object v8, v0

    iget v8, v8, Lcom/music/CircleImageView;->mCornerRadius:I

    goto :goto_1

    :cond_3
    move-object v8, v0

    iget v8, v8, Lcom/music/CircleImageView;->mBorderWidth:I

    goto :goto_2

    .line 143
    :cond_4
    move-object v7, v1

    instance-of v7, v7, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v7, :cond_1

    .line 144
    move-object v7, v1

    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    move-object v3, v7

    .line 145
    move-object v7, v3

    invoke-virtual {v7}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v7

    move v4, v7

    .line 146
    const/4 v7, 0x0

    move v5, v7

    :goto_3
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 147
    move-object v7, v0

    move-object v8, v3

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move v9, v2

    invoke-direct {v7, v8, v9}, Lcom/music/CircleImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    .line 146
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method private updateBackgroundDrawableAttrs()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/music/CircleImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private updateDrawableAttrs()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/music/CircleImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 57
    move-object v2, v0

    invoke-virtual {v2}, Lcom/music/CircleImageView;->invalidate()V

    return-void
.end method

.method public getBorderColor()I
    .locals 3

    .prologue
    .line 188
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/music/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    .line 196
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/music/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    move-object v0, v2

    return-object v0
.end method

.method public getBorderWidth()I
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/music/CircleImageView;->mBorderWidth:I

    move v0, v2

    return v0
.end method

.method public getCornerRadius()I
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/music/CircleImageView;->mCornerRadius:I

    move v0, v2

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/music/CircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    move-object v0, v2

    return-object v0
.end method

.method public isOval()Z
    .locals 3

    .prologue
    .line 214
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/music/CircleImageView;->mOval:Z

    move v0, v2

    return v0
.end method

.method public isRoundBackground()Z
    .locals 3

    .prologue
    .line 225
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/music/CircleImageView;->mRoundBackground:Z

    move v0, v2

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/music/CircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/music/CircleDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/music/CircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateBackgroundDrawableAttrs()V

    .line 155
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/music/CircleImageView;->setBorderColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBorderColors(Landroid/content/res/ColorStateList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/ColorStateList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/music/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/ColorStateList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v1

    :goto_1
    iput-object v4, v3, Lcom/music/CircleImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 206
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateDrawableAttrs()V

    .line 207
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateBackgroundDrawableAttrs()V

    .line 208
    move-object v3, v0

    iget v3, v3, Lcom/music/CircleImageView;->mBorderWidth:I

    const/4 v4, 0x0

    if-le v3, v4, :cond_1

    .line 209
    move-object v3, v0

    invoke-virtual {v3}, Lcom/music/CircleImageView;->invalidate()V

    :cond_1
    goto :goto_0

    .line 204
    :cond_2
    const v4, 0x106000c

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_1
.end method

.method public setBorderWidth(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Lcom/music/CircleImageView;->mBorderWidth:I

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/music/CircleImageView;->mBorderWidth:I

    .line 182
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateDrawableAttrs()V

    .line 183
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateBackgroundDrawableAttrs()V

    .line 184
    move-object v3, v0

    invoke-virtual {v3}, Lcom/music/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setCornerRadius(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Lcom/music/CircleImageView;->mCornerRadius:I

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/music/CircleImageView;->mCornerRadius:I

    .line 168
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateDrawableAttrs()V

    .line 169
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateBackgroundDrawableAttrs()V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/music/CircleImageView;->mResource:I

    .line 81
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/music/CircleDrawable;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/music/CircleDrawable;

    move-result-object v4

    iput-object v4, v3, Lcom/music/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateDrawableAttrs()V

    .line 83
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/music/CircleImageView;->mResource:I

    .line 74
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/music/CircleDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/music/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateDrawableAttrs()V

    .line 76
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Lcom/music/CircleImageView;->mResource:I

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 88
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/music/CircleImageView;->mResource:I

    .line 89
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Lcom/music/CircleImageView;->resolveResource()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/music/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateDrawableAttrs()V

    .line 91
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/music/CircleImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 97
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/music/CircleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/music/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOval(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/music/CircleImageView;->mOval:Z

    .line 219
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateDrawableAttrs()V

    .line 220
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateBackgroundDrawableAttrs()V

    .line 221
    move-object v3, v0

    invoke-virtual {v3}, Lcom/music/CircleImageView;->invalidate()V

    return-void
.end method

.method public setRoundBackground(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/music/CircleImageView;->mRoundBackground:Z

    if-nez v3, :cond_1

    move v3, v1

    if-nez v3, :cond_2

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    move v3, v1

    if-nez v3, :cond_0

    .line 233
    :cond_2
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/music/CircleImageView;->mRoundBackground:Z

    .line 234
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateBackgroundDrawableAttrs()V

    .line 235
    move-object v3, v0

    invoke-virtual {v3}, Lcom/music/CircleImageView;->invalidate()V

    goto :goto_0
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView$ScaleType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/music/CircleImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 66
    move-object v3, v0

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateDrawableAttrs()V

    .line 68
    move-object v3, v0

    invoke-direct {v3}, Lcom/music/CircleImageView;->updateBackgroundDrawableAttrs()V

    .line 69
    move-object v3, v0

    invoke-virtual {v3}, Lcom/music/CircleImageView;->invalidate()V

    return-void
.end method
