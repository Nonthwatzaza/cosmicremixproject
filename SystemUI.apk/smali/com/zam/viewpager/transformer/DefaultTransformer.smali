.class public Lcom/zam/viewpager/transformer/DefaultTransformer;
.super Lcom/zam/viewpager/transformer/ABaseTransformer;
.source "DefaultTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/zam/viewpager/transformer/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public isPagingEnabled()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method protected onTransform(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    .line 25
    return-void
.end method
