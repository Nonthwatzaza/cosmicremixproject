.class Lcom/wanam/systemui/quickpanel/PowerButton$3;
.super Ljava/lang/Object;
.source "PowerButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanam/systemui/quickpanel/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanam/systemui/quickpanel/PowerButton;


# direct methods
.method constructor <init>(Lcom/wanam/systemui/quickpanel/PowerButton;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/PowerButton$3;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, "result":Z
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 197
    .local v3, "type":Ljava/lang/String;
    # getter for: Lcom/wanam/systemui/quickpanel/PowerButton;->BUTTONS_LOADED:Ljava/util/HashMap;
    invoke-static {}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$100()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 198
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/wanam/systemui/quickpanel/PowerButton;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wanam/systemui/quickpanel/PowerButton;

    invoke-virtual {v4}, Lcom/wanam/systemui/quickpanel/PowerButton;->handleLongClick()Z

    move-result v2

    .line 204
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/wanam/systemui/quickpanel/PowerButton;>;"
    :cond_1
    if-eqz v2, :cond_2

    # getter for: Lcom/wanam/systemui/quickpanel/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;
    invoke-static {}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$300()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 205
    # getter for: Lcom/wanam/systemui/quickpanel/PowerButton;->GLOBAL_ON_LONG_CLICK_LISTENER:Landroid/view/View$OnLongClickListener;
    invoke-static {}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$300()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 207
    :cond_2
    return v2
.end method
