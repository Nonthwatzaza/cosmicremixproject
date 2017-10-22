.class Lcom/wanam/systemui/quickpanel/PowerButton$1;
.super Landroid/os/Handler;
.source "PowerButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanam/systemui/quickpanel/PowerButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanam/systemui/quickpanel/PowerButton;


# direct methods
.method constructor <init>(Lcom/wanam/systemui/quickpanel/PowerButton;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    iget-object v2, v2, Lcom/wanam/systemui/quickpanel/PowerButton;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 90
    const v0, 0x506001a

    .line 91
    .local v0, "buttonIcon":I
    const v1, 0x506001c

    .line 92
    .local v1, "buttonState":I
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    iget-object v3, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    iget v3, v3, Lcom/wanam/systemui/quickpanel/PowerButton;->mIcon:I

    # invokes: Lcom/wanam/systemui/quickpanel/PowerButton;->updateImageView(II)V
    invoke-static {v2, v0, v3}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$000(Lcom/wanam/systemui/quickpanel/PowerButton;II)V

    .line 93
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    invoke-virtual {v2}, Lcom/wanam/systemui/quickpanel/PowerButton;->updateText()V

    .line 96
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    iget v2, v2, Lcom/wanam/systemui/quickpanel/PowerButton;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 104
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    const v3, 0x502007e

    # invokes: Lcom/wanam/systemui/quickpanel/PowerButton;->updateImageView(II)V
    invoke-static {v2, v1, v3}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$000(Lcom/wanam/systemui/quickpanel/PowerButton;II)V

    .line 108
    .end local v0    # "buttonIcon":I
    .end local v1    # "buttonState":I
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v0    # "buttonIcon":I
    .restart local v1    # "buttonState":I
    :pswitch_0
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    const v3, 0x5020080

    # invokes: Lcom/wanam/systemui/quickpanel/PowerButton;->updateImageView(II)V
    invoke-static {v2, v1, v3}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$000(Lcom/wanam/systemui/quickpanel/PowerButton;II)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v2, p0, Lcom/wanam/systemui/quickpanel/PowerButton$1;->this$0:Lcom/wanam/systemui/quickpanel/PowerButton;

    const v3, 0x502007f

    # invokes: Lcom/wanam/systemui/quickpanel/PowerButton;->updateImageView(II)V
    invoke-static {v2, v1, v3}, Lcom/wanam/systemui/quickpanel/PowerButton;->access$000(Lcom/wanam/systemui/quickpanel/PowerButton;II)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
