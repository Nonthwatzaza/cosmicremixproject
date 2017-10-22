.class public Lcom/android/settings/DualHelpActivity;
.super Landroid/app/Activity;
.source "DualHelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/settings/DualHelpActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 74
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 76
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-direct {p0}, Lcom/android/settings/DualHelpActivity;->configureActionBar()V

    .line 23
    const v7, 0x7f040066

    invoke-virtual {p0, v7}, Lcom/android/settings/DualHelpActivity;->setContentView(I)V

    .line 25
    const v7, 0x7f0b0100

    invoke-virtual {p0, v7}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 27
    .local v4, "title1":Landroid/widget/TextView;
    const v7, 0x7f0b0103

    invoke-virtual {p0, v7}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 29
    .local v5, "title2":Landroid/widget/TextView;
    const v7, 0x7f0b0105

    invoke-virtual {p0, v7}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 31
    .local v6, "title3":Landroid/widget/TextView;
    const v7, 0x7f0b0102

    invoke-virtual {p0, v7}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    .local v0, "content1":Landroid/widget/TextView;
    const v7, 0x7f0b0104

    invoke-virtual {p0, v7}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 35
    .local v1, "content2":Landroid/widget/TextView;
    const v7, 0x7f0b0106

    invoke-virtual {p0, v7}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 37
    .local v2, "content3":Landroid/widget/TextView;
    const v7, 0x7f090eaa

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 39
    const v7, 0x7f090eab

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 41
    const v7, 0x7f090eac

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 43
    const v7, 0x7f090eae

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 45
    const v7, 0x7f090eaf

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 47
    const v7, 0x7f0b0101

    invoke-virtual {p0, v7}, Lcom/android/settings/DualHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 62
    .local v3, "image":Landroid/widget/ImageView;
    const v7, 0x7f090ead

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 64
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 88
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 92
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/DualHelpActivity;->finish()V

    .line 94
    const/4 v0, 0x1

    return v0

    .line 88
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
