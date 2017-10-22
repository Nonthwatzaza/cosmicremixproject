.class public Lcom/panel/Button;
.super Landroid/widget/ImageView;
.source "Button.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const v1, 0x7f0d0010

    invoke-virtual {p0, v1}, Lcom/panel/Button;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 20
    .local v0, "image":Landroid/widget/ImageView;
    const v1, 0x7f0202bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    new-instance v1, Lcom/panel/Button$1;

    invoke-direct {v1, p0, p1}, Lcom/panel/Button$1;-><init>(Lcom/panel/Button;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method
