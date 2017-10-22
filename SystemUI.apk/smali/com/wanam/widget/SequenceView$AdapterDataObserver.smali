.class Lcom/wanam/widget/SequenceView$AdapterDataObserver;
.super Landroid/database/DataSetObserver;
.source "SequenceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wanam/widget/SequenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wanam/widget/SequenceView;


# direct methods
.method constructor <init>(Lcom/wanam/widget/SequenceView;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/wanam/widget/SequenceView$AdapterDataObserver;->this$0:Lcom/wanam/widget/SequenceView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/wanam/widget/SequenceView$AdapterDataObserver;->this$0:Lcom/wanam/widget/SequenceView;

    iget-object v1, p0, Lcom/wanam/widget/SequenceView$AdapterDataObserver;->this$0:Lcom/wanam/widget/SequenceView;

    invoke-virtual {v1}, Lcom/wanam/widget/SequenceView;->getMeasuredWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    # invokes: Lcom/wanam/widget/SequenceView;->layoutChildInner(I)V
    invoke-static {v0, v1}, Lcom/wanam/widget/SequenceView;->access$000(Lcom/wanam/widget/SequenceView;I)V

    .line 374
    iget-object v0, p0, Lcom/wanam/widget/SequenceView$AdapterDataObserver;->this$0:Lcom/wanam/widget/SequenceView;

    invoke-virtual {v0}, Lcom/wanam/widget/SequenceView;->requestLayout()V

    .line 375
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/wanam/widget/SequenceView$AdapterDataObserver;->this$0:Lcom/wanam/widget/SequenceView;

    iget-object v1, p0, Lcom/wanam/widget/SequenceView$AdapterDataObserver;->this$0:Lcom/wanam/widget/SequenceView;

    invoke-virtual {v1}, Lcom/wanam/widget/SequenceView;->getMeasuredWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    # invokes: Lcom/wanam/widget/SequenceView;->layoutChildInner(I)V
    invoke-static {v0, v1}, Lcom/wanam/widget/SequenceView;->access$000(Lcom/wanam/widget/SequenceView;I)V

    .line 379
    iget-object v0, p0, Lcom/wanam/widget/SequenceView$AdapterDataObserver;->this$0:Lcom/wanam/widget/SequenceView;

    invoke-virtual {v0}, Lcom/wanam/widget/SequenceView;->requestLayout()V

    .line 380
    return-void
.end method
