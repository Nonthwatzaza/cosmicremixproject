.class public Lcom/lovevi/lovebibi/Animasi;
.super Landroid/widget/ImageView;
.source "Animasi.java"


# instance fields
.field animation:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    move-object v4, v0

    move-object v5, v0

    const v6, 0x7f0d0156

    invoke-virtual {v5, v6}, Lcom/lovevi/lovebibi/Animasi;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/lovevi/lovebibi/Animasi;->animation:Landroid/widget/ImageView;

    .line 23
    move-object v4, v0

    iget-object v4, v4, Lcom/lovevi/lovebibi/Animasi;->animation:Landroid/widget/ImageView;

    const v5, 0x7f0203a3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    invoke-super {v4, v5}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 37
    move-object v4, v0

    iget-object v4, v4, Lcom/lovevi/lovebibi/Animasi;->animation:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    move-object v2, v4

    .line 39
    move v4, v1

    if-eqz v4, :cond_0

    .line 40
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 42
    :goto_0
    return-void

    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method
