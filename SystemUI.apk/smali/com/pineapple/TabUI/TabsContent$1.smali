.class Lcom/pineapple/TabUI/TabsContent$1;
.super Landroid/content/BroadcastReceiver;
.source "TabsContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pineapple/TabUI/TabsContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pineapple/TabUI/TabsContent;


# direct methods
.method constructor <init>(Lcom/pineapple/TabUI/TabsContent;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/pineapple/TabUI/TabsContent$1;->this$0:Lcom/pineapple/TabUI/TabsContent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/pineapple/TabUI/TabsContent$1;->this$0:Lcom/pineapple/TabUI/TabsContent;

    iget-object v0, v0, Lcom/pineapple/TabUI/TabsContent;->VF:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 21
    return-void
.end method
