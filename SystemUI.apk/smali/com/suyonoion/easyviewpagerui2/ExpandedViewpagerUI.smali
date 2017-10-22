.class public Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;
.super Landroid/support/v4/view/ViewPager;
.source "ExpandedViewpagerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI$AdapterExpandedViewpagerUI;
    }
.end annotation


# instance fields
.field private Mengisi_Tempat_judul:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Tempat_Judul:Landroid/support/v4/view/PagerTitleStrip;

.field private homepage:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const-string v2, "title"

    const-string v3, "id"

    invoke-virtual {p0, v2, v3}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->setResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/PagerTitleStrip;

    iput-object v2, p0, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->Tempat_Judul:Landroid/support/v4/view/PagerTitleStrip;

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->Mengisi_Tempat_judul:Ljava/util/List;

    .line 37
    iget-object v2, p0, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->Mengisi_Tempat_judul:Ljava/util/List;

    invoke-virtual {p0}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "title_1"

    const-string v5, "string"

    invoke-virtual {p0, v4, v5}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->setResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v2, p0, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->Mengisi_Tempat_judul:Ljava/util/List;

    invoke-virtual {p0}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "title_2"

    const-string v5, "string"

    invoke-virtual {p0, v4, v5}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->setResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI$AdapterExpandedViewpagerUI;

    iget-object v2, p0, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->Mengisi_Tempat_judul:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI$AdapterExpandedViewpagerUI;-><init>(Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;Ljava/util/List;)V

    .line 65
    .local v1, "adapter":Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI$AdapterExpandedViewpagerUI;
    const-string v2, "id_viewpager2"

    const-string v3, "id"

    invoke-virtual {p0, v2, v3}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->setResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 66
    .local v0, "EasyExpandedViewPagerUI":Landroid/support/v4/view/ViewPager;
    const/4 v2, 0x1

    new-instance v3, Lcom/zam/viewpager/transformer/FadeTransformer;

    invoke-direct {v3}, Lcom/zam/viewpager/transformer/FadeTransformer;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 68
    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 69
    const-string v2, "background"

    const-string v3, "drawable"

    invoke-virtual {p0, v2, v3}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->setResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setBackgroundResource(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public setResource(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "Type"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/suyonoion/easyviewpagerui2/ExpandedViewpagerUI;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
