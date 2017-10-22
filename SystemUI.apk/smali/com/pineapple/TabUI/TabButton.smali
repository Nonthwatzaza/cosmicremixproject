.class public Lcom/pineapple/TabUI/TabButton;
.super Landroid/widget/LinearLayout;
.source "TabButton.java"


# instance fields
.field tab1:Landroid/widget/ImageView;

.field tab2:Landroid/widget/ImageView;

.field tab3:Landroid/widget/ImageView;

.field tab4:Landroid/widget/ImageView;

.field tab5:Landroid/widget/ImageView;

.field view1:Landroid/view/View;

.field view2:Landroid/view/View;

.field view3:Landroid/view/View;

.field view4:Landroid/view/View;

.field view5:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeset"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, -0x1

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Lcom/pineapple/TabUI/TabButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 23
    .local v0, "f":F
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 24
    .local v1, "i":I
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 25
    .local v2, "layoutparams":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 26
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 27
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 28
    .local v3, "layoutparams1":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 29
    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 30
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab1:Landroid/widget/ImageView;

    const v5, 0x7f02038f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 31
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab1:Landroid/widget/ImageView;

    const v5, 0x7f02038a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view1:Landroid/view/View;

    .line 33
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view1:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab1:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab1:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/pineapple/TabUI/TabButton;->addView(Landroid/view/View;)V

    .line 36
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view1:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/pineapple/TabUI/TabButton;->addView(Landroid/view/View;)V

    .line 37
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab1:Landroid/widget/ImageView;

    new-instance v5, Lcom/pineapple/TabUI/TabButton$1;

    invoke-direct {v5, p0, p1}, Lcom/pineapple/TabUI/TabButton$1;-><init>(Lcom/pineapple/TabUI/TabButton;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab2:Landroid/widget/ImageView;

    const v5, 0x7f02038f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 50
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab2:Landroid/widget/ImageView;

    const v5, 0x7f02038b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view2:Landroid/view/View;

    .line 52
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view2:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab2:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab2:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/pineapple/TabUI/TabButton;->addView(Landroid/view/View;)V

    .line 55
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view2:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/pineapple/TabUI/TabButton;->addView(Landroid/view/View;)V

    .line 56
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab2:Landroid/widget/ImageView;

    new-instance v5, Lcom/pineapple/TabUI/TabButton$2;

    invoke-direct {v5, p0, p1}, Lcom/pineapple/TabUI/TabButton$2;-><init>(Lcom/pineapple/TabUI/TabButton;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab3:Landroid/widget/ImageView;

    const v5, 0x7f02038f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 69
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab3:Landroid/widget/ImageView;

    const v5, 0x7f02038c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view3:Landroid/view/View;

    .line 71
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view3:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab3:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab3:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/pineapple/TabUI/TabButton;->addView(Landroid/view/View;)V

    .line 74
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view3:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/pineapple/TabUI/TabButton;->addView(Landroid/view/View;)V

    .line 75
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab3:Landroid/widget/ImageView;

    new-instance v5, Lcom/pineapple/TabUI/TabButton$3;

    invoke-direct {v5, p0, p1}, Lcom/pineapple/TabUI/TabButton$3;-><init>(Lcom/pineapple/TabUI/TabButton;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab4:Landroid/widget/ImageView;

    const v5, 0x7f02038f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 50
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab4:Landroid/widget/ImageView;

    const v5, 0x7f02038d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view4:Landroid/view/View;

    .line 52
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view4:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab4:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab4:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/pineapple/TabUI/TabButton;->addView(Landroid/view/View;)V

    .line 55
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view4:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/pineapple/TabUI/TabButton;->addView(Landroid/view/View;)V

    .line 56
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab4:Landroid/widget/ImageView;

    new-instance v5, Lcom/pineapple/TabUI/TabButton$4;

    invoke-direct {v5, p0, p1}, Lcom/pineapple/TabUI/TabButton$4;-><init>(Lcom/pineapple/TabUI/TabButton;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab5:Landroid/widget/ImageView;

    const v5, 0x7f02038f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 69
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab5:Landroid/widget/ImageView;

    const v5, 0x7f02038e

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view5:Landroid/view/View;

    .line 71
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view5:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab5:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab5:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/pineapple/TabUI/TabButton;->addView(Landroid/view/View;)V

    .line 74
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->view5:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/pineapple/TabUI/TabButton;->addView(Landroid/view/View;)V

    .line 75
    iget-object v4, p0, Lcom/pineapple/TabUI/TabButton;->tab5:Landroid/widget/ImageView;

    new-instance v5, Lcom/pineapple/TabUI/TabButton$5;

    invoke-direct {v5, p0, p1}, Lcom/pineapple/TabUI/TabButton$5;-><init>(Lcom/pineapple/TabUI/TabButton;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method
