.class public Lcom/zam/statusbar/advanced/MPic1;
.super Landroid/widget/ImageView;
.source "MPic1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zam/statusbar/advanced/MPic1$DataObserver;
    }
.end annotation


# instance fields
.field ct:Landroid/content/Context;

.field public imgPh:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object p1, p0, Lcom/zam/statusbar/advanced/MPic1;->ct:Landroid/content/Context;

    .line 30
    const-string v4, "defaultSetting"

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 31
    .local v3, "sh":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 33
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "defaultpic1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 34
    .local v1, "b":Z
    if-nez v1, :cond_0

    .line 35
    const-string v4, "defaultpic1"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    new-instance v0, Lcom/zam/statusbar/profile/A;

    invoke-direct {v0}, Lcom/zam/statusbar/profile/A;-><init>()V

    .line 39
    .local v0, "a":Lcom/zam/statusbar/profile/A;
    invoke-virtual {v0, p1}, Lcom/zam/statusbar/profile/A;->setDefaultpic1(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/zam/statusbar/advanced/MPic1;->reset()V

    .line 45
    .end local v0    # "a":Lcom/zam/statusbar/profile/A;
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/zam/statusbar/advanced/MPic1;->reset()V

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/zam/statusbar/advanced/MPic1$DataObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/zam/statusbar/advanced/MPic1$DataObserver;-><init>(Lcom/zam/statusbar/advanced/MPic1;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/zam/statusbar/advanced/MPic1$DataObserver;->register()V

    .line 49
    return-void
.end method
