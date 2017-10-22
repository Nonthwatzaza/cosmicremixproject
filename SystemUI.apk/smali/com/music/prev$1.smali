.class Lcom/music/prev$1;
.super Ljava/lang/Object;
.source "prev.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/music/prev;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/music/prev;

.field final synthetic val$a:Landroid/util/AttributeSet;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/music/prev;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/music/prev$1;->this$0:Lcom/music/prev;

    iput-object p2, p0, Lcom/music/prev$1;->val$c:Landroid/content/Context;

    iput-object p3, p0, Lcom/music/prev$1;->val$a:Landroid/util/AttributeSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 18
    new-instance v0, Lcom/music/MusicControl;

    iget-object v1, p0, Lcom/music/prev$1;->val$c:Landroid/content/Context;

    iget-object v2, p0, Lcom/music/prev$1;->val$a:Landroid/util/AttributeSet;

    invoke-direct {v0, v1, v2}, Lcom/music/MusicControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lcom/music/MusicControl;->sendMediaButtonEvent(I)V

    .line 19
    return-void
.end method
