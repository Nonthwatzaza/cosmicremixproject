.class Lcom/petrux/ui/PetrUXGreetingImage$100000000;
.super Ljava/lang/Object;
.source "PetrUXGreetingImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/petrux/ui/PetrUXGreetingImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/petrux/ui/PetrUXGreetingImage;

.field private final val$context:Landroid/content/Context;

.field private final val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/petrux/ui/PetrUXGreetingImage;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/petrux/ui/PetrUXGreetingImage$100000000;->this$0:Lcom/petrux/ui/PetrUXGreetingImage;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/petrux/ui/PetrUXGreetingImage$100000000;->val$context:Landroid/content/Context;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/petrux/ui/PetrUXGreetingImage$100000000;->val$h:Landroid/os/Handler;

    return-void
.end method

.method static access$0(Lcom/petrux/ui/PetrUXGreetingImage$100000000;)Lcom/petrux/ui/PetrUXGreetingImage;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/petrux/ui/PetrUXGreetingImage$100000000;->this$0:Lcom/petrux/ui/PetrUXGreetingImage;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/petrux/ui/PetrUXGreetingImage$100000000;->this$0:Lcom/petrux/ui/PetrUXGreetingImage;

    move-object v3, v0

    iget-object v3, v3, Lcom/petrux/ui/PetrUXGreetingImage$100000000;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/petrux/ui/PetrUXGreetingImage;->updateTime(Landroid/content/Context;)V

    .line 67
    move-object v2, v0

    iget-object v2, v2, Lcom/petrux/ui/PetrUXGreetingImage$100000000;->val$h:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0x1388

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    return-void
.end method
