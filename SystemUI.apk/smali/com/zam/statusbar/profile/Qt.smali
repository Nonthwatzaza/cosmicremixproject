.class public Lcom/zam/statusbar/profile/Qt;
.super Landroid/widget/TextView;
.source "Qt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zam/statusbar/profile/Qt$DataObserver;
    }
.end annotation


# static fields
.field public static mQt:Landroid/widget/TextView;

.field private static tf2:I


# instance fields
.field ct:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/zam/statusbar/profile/Qt;->tf2:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-object p1, p0, Lcom/zam/statusbar/profile/Qt;->ct:Landroid/content/Context;

    .line 25
    const-string v4, "defaultSetting"

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 26
    .local v3, "sh":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 28
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "defaultQt"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 29
    .local v1, "b":Z
    if-nez v1, :cond_0

    .line 30
    const-string v4, "defaultQt"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    new-instance v0, Lcom/zam/statusbar/profile/A;

    invoke-direct {v0}, Lcom/zam/statusbar/profile/A;-><init>()V

    .line 34
    .local v0, "a":Lcom/zam/statusbar/profile/A;
    invoke-virtual {v0, p1}, Lcom/zam/statusbar/profile/A;->setDefaultQuote(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/zam/statusbar/profile/Qt;->reset()V

    .line 40
    .end local v0    # "a":Lcom/zam/statusbar/profile/A;
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/zam/statusbar/profile/Qt;->reset()V

    goto :goto_0
.end method

.method static synthetic access$0(I)V
    .locals 0

    .prologue
    .line 18
    sput p0, Lcom/zam/statusbar/profile/Qt;->tf2:I

    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/zam/statusbar/profile/Qt;->tf2:I

    return v0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/zam/statusbar/profile/Qt$DataObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/zam/statusbar/profile/Qt$DataObserver;-><init>(Lcom/zam/statusbar/profile/Qt;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/zam/statusbar/profile/Qt$DataObserver;->register()V

    .line 44
    return-void
.end method
