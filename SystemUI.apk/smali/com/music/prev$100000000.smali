.class Lcom/music/prev$100000000;
.super Ljava/lang/Object;
.source "prev.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/music/prev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/music/prev;

.field private final val$a:Landroid/util/AttributeSet;

.field private final val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/music/prev;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/music/prev$100000000;->this$0:Lcom/music/prev;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/music/prev$100000000;->val$c:Landroid/content/Context;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/music/prev$100000000;->val$a:Landroid/util/AttributeSet;

    return-void
.end method

.method static access$0(Lcom/music/prev$100000000;)Lcom/music/prev;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/music/prev$100000000;->this$0:Lcom/music/prev;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/music/MusicControl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/music/prev$100000000;->val$c:Landroid/content/Context;

    move-object v6, v0

    iget-object v6, v6, Lcom/music/prev$100000000;->val$a:Landroid/util/AttributeSet;

    invoke-direct {v4, v5, v6}, Lcom/music/MusicControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v4, 0x58

    invoke-virtual {v3, v4}, Lcom/music/MusicControl;->sendMediaButtonEvent(I)V

    return-void
.end method
