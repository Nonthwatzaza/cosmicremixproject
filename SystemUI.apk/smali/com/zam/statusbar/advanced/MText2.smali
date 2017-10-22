.class public Lcom/zam/statusbar/advanced/MText2;
.super Landroid/widget/TextView;
.source "MText2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zam/statusbar/advanced/MText2$DataObserver;
    }
.end annotation


# instance fields
.field ct:Landroid/content/Context;

.field public mMsg1:Landroid/widget/TextView;

.field private tf:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v5, p0, Lcom/zam/statusbar/advanced/MText2;->tf:I

    .line 26
    iput-object p1, p0, Lcom/zam/statusbar/advanced/MText2;->ct:Landroid/content/Context;

    .line 28
    const-string v4, "defaultSetting"

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 29
    .local v3, "sh":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 31
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "defaulttext2"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 32
    .local v1, "b":Z
    if-nez v1, :cond_0

    .line 33
    const-string v4, "defaulttext2"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    new-instance v0, Lcom/zam/statusbar/profile/A;

    invoke-direct {v0}, Lcom/zam/statusbar/profile/A;-><init>()V

    .line 37
    .local v0, "a":Lcom/zam/statusbar/profile/A;
    invoke-virtual {v0, p1}, Lcom/zam/statusbar/profile/A;->setDefaultText2(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcom/zam/statusbar/advanced/MText2;->reset()V

    .line 43
    .end local v0    # "a":Lcom/zam/statusbar/profile/A;
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/zam/statusbar/advanced/MText2;->reset()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/zam/statusbar/advanced/MText2;I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/zam/statusbar/advanced/MText2;->tf:I

    return-void
.end method

.method static synthetic access$1(Lcom/zam/statusbar/advanced/MText2;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/zam/statusbar/advanced/MText2;->tf:I

    return v0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/zam/statusbar/advanced/MText2$DataObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/zam/statusbar/advanced/MText2$DataObserver;-><init>(Lcom/zam/statusbar/advanced/MText2;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/zam/statusbar/advanced/MText2$DataObserver;->register()V

    .line 47
    return-void
.end method
