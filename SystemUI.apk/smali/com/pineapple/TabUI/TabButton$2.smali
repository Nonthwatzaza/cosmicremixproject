.class Lcom/pineapple/TabUI/TabButton$2;
.super Ljava/lang/Object;
.source "TabButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pineapple/TabUI/TabButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pineapple/TabUI/TabButton;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/pineapple/TabUI/TabButton;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/pineapple/TabUI/TabButton$2;->this$0:Lcom/pineapple/TabUI/TabButton;

    iput-object p2, p0, Lcom/pineapple/TabUI/TabButton$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 59
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 60
    iget-object v1, p0, Lcom/pineapple/TabUI/TabButton$2;->this$0:Lcom/pineapple/TabUI/TabButton;

    iget-object v1, v1, Lcom/pineapple/TabUI/TabButton;->tab1:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 61
    iget-object v1, p0, Lcom/pineapple/TabUI/TabButton$2;->this$0:Lcom/pineapple/TabUI/TabButton;

    iget-object v1, v1, Lcom/pineapple/TabUI/TabButton;->tab3:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 42
    iget-object v1, p0, Lcom/pineapple/TabUI/TabButton$2;->this$0:Lcom/pineapple/TabUI/TabButton;

    iget-object v1, v1, Lcom/pineapple/TabUI/TabButton;->tab4:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 42
    iget-object v1, p0, Lcom/pineapple/TabUI/TabButton$2;->this$0:Lcom/pineapple/TabUI/TabButton;

    iget-object v1, v1, Lcom/pineapple/TabUI/TabButton;->tab5:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pineappleTabUI2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/pineapple/TabUI/TabButton$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
