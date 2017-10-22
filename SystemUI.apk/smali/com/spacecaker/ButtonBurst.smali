.class public Lcom/spacecaker/ButtonBurst;
.super Landroid/widget/Button;
.source "ButtonBurst.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUpdating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spacecaker/ButtonBurst;->mUpdating:Z

    .line 16
    iput-object p1, p0, Lcom/spacecaker/ButtonBurst;->mContext:Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Lcom/spacecaker/ButtonBurst;->update()V

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/spacecaker/ButtonBurst;)Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/spacecaker/ButtonBurst;->mUpdating:Z

    return v0
.end method

.method private update()V
    .locals 4

    .prologue
    .line 34
    const v2, 0xffffff

    invoke-virtual {p0, v2}, Lcom/spacecaker/ButtonBurst;->setBackgroundColor(I)V

    .line 35
    iget-object v2, p0, Lcom/spacecaker/ButtonBurst;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 36
    .local v1, "on":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/spacecaker/ButtonBurst;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 37
    .local v0, "off":Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Lcom/spacecaker/ButtonBurst;->mUpdating:Z

    if-nez v2, :cond_0

    .line 40
    invoke-virtual {p0, v1}, Lcom/spacecaker/ButtonBurst;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :goto_0
    new-instance v2, Lcom/spacecaker/ButtonBurst$1;

    invoke-direct {v2, p0}, Lcom/spacecaker/ButtonBurst$1;-><init>(Lcom/spacecaker/ButtonBurst;)V

    invoke-virtual {p0, v2}, Lcom/spacecaker/ButtonBurst;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, v0}, Lcom/spacecaker/ButtonBurst;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 25
    invoke-direct {p0}, Lcom/spacecaker/ButtonBurst;->update()V

    .line 26
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 31
    return-void
.end method

.method sendBroadCast(Z)V
    .locals 2
    .param p1, "bool"    # Z

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.androidminang.UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "LEOT_YANG_MANA_NIH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/spacecaker/ButtonBurst;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/spacecaker/ButtonBurst;->mUpdating:Z

    .line 65
    invoke-direct {p0}, Lcom/spacecaker/ButtonBurst;->update()V

    .line 68
    return-void

    .line 64
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
