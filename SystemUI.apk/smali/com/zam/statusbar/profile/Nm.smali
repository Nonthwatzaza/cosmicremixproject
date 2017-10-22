.class public Lcom/zam/statusbar/profile/Nm;
.super Landroid/widget/TextView;
.source "Nm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zam/statusbar/profile/Nm$DataObserver;
    }
.end annotation


# instance fields
.field ct:Landroid/content/Context;

.field public mNm:Landroid/widget/TextView;

.field private tf1:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v5, p0, Lcom/zam/statusbar/profile/Nm;->tf1:I

    .line 24
    iput-object p1, p0, Lcom/zam/statusbar/profile/Nm;->ct:Landroid/content/Context;

    .line 26
    const-string v4, "defaultSetting"

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 27
    .local v3, "sh":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 29
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "defaultOwner"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 30
    .local v1, "b":Z
    if-nez v1, :cond_0

    .line 31
    const-string v4, "defaultOwner"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    new-instance v0, Lcom/zam/statusbar/profile/A;

    invoke-direct {v0}, Lcom/zam/statusbar/profile/A;-><init>()V

    .line 35
    .local v0, "a":Lcom/zam/statusbar/profile/A;
    invoke-virtual {v0, p1}, Lcom/zam/statusbar/profile/A;->setDefaultOwner(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/zam/statusbar/profile/Nm;->reset()V

    .line 41
    .end local v0    # "a":Lcom/zam/statusbar/profile/A;
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/zam/statusbar/profile/Nm;->reset()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/zam/statusbar/profile/Nm;I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/zam/statusbar/profile/Nm;->tf1:I

    return-void
.end method

.method static synthetic access$1(Lcom/zam/statusbar/profile/Nm;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/zam/statusbar/profile/Nm;->tf1:I

    return v0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/zam/statusbar/profile/Nm$DataObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/zam/statusbar/profile/Nm$DataObserver;-><init>(Lcom/zam/statusbar/profile/Nm;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/zam/statusbar/profile/Nm$DataObserver;->register()V

    .line 45
    return-void
.end method
