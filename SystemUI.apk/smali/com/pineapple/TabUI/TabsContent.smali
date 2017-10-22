.class public Lcom/pineapple/TabUI/TabsContent;
.super Landroid/widget/ViewFlipper;
.source "TabsContent.java"


# instance fields
.field VF:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeset"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const v5, 0x7f0d0158

    invoke-virtual {p0, v5}, Lcom/pineapple/TabUI/TabsContent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewFlipper;

    iput-object v5, p0, Lcom/pineapple/TabUI/TabsContent;->VF:Landroid/widget/ViewFlipper;

    .line 17
    new-instance v0, Lcom/pineapple/TabUI/TabsContent$1;

    invoke-direct {v0, p0}, Lcom/pineapple/TabUI/TabsContent$1;-><init>(Lcom/pineapple/TabUI/TabsContent;)V

    .line 24
    .local v0, "tab1":Landroid/content/BroadcastReceiver;
    new-instance v1, Lcom/pineapple/TabUI/TabsContent$2;

    invoke-direct {v1, p0}, Lcom/pineapple/TabUI/TabsContent$2;-><init>(Lcom/pineapple/TabUI/TabsContent;)V

    .line 31
    .local v1, "tab2":Landroid/content/BroadcastReceiver;
    new-instance v2, Lcom/pineapple/TabUI/TabsContent$3;

    invoke-direct {v2, p0}, Lcom/pineapple/TabUI/TabsContent$3;-><init>(Lcom/pineapple/TabUI/TabsContent;)V

    .line 40
    .local v2, "tab3":Landroid/content/BroadcastReceiver;
    new-instance v3, Lcom/pineapple/TabUI/TabsContent$4;

    invoke-direct {v3, p0}, Lcom/pineapple/TabUI/TabsContent$4;-><init>(Lcom/pineapple/TabUI/TabsContent;)V

    .line 40
    .local v3, "tab4":Landroid/content/BroadcastReceiver;
    new-instance v4, Lcom/pineapple/TabUI/TabsContent$5;

    invoke-direct {v4, p0}, Lcom/pineapple/TabUI/TabsContent$5;-><init>(Lcom/pineapple/TabUI/TabsContent;)V

    .line 40
    .local v4, "tab5":Landroid/content/BroadcastReceiver;
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "pineappleTabUI1"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "pineappleTabUI2"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "pineappleTabUI3"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "pineappleTabUI4"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "pineappleTabUI5"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    return-void
.end method
