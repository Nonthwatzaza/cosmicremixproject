.class public Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI$AdapterExpandedViewpagerUI;
.super Landroid/support/v4/view/PagerAdapter;
.source "ExpandedViewpagerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterExpandedViewpagerUI"
.end annotation


# instance fields
.field private adapterMengisi_Tempat_judul:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;


# direct methods
.method public constructor <init>(Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "adapterMengisi_Tempat_judul":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI$AdapterExpandedViewpagerUI;->this$0:Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI$AdapterExpandedViewpagerUI;->adapterMengisi_Tempat_judul:Ljava/util/List;

    .line 76
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI$AdapterExpandedViewpagerUI;->adapterMengisi_Tempat_judul:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "tampilkanMenurutId":I
    packed-switch p2, :pswitch_data_0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI$AdapterExpandedViewpagerUI;->this$0:Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;

    invoke-virtual {v1, v0}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 87
    :pswitch_0
    iget-object v1, p0, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI$AdapterExpandedViewpagerUI;->this$0:Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;

    const-string v2, "title_1"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->setResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 89
    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v1, p0, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI$AdapterExpandedViewpagerUI;->this$0:Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;

    const-string v2, "title_2"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->setResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 175
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method
