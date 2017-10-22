.class Lcom/fiqih/anaknya/mbol/MusicControls$4;
.super Ljava/lang/Object;
.source "MusicControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fiqih/anaknya/mbol/MusicControls;->updateInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fiqih/anaknya/mbol/MusicControls;


# direct methods
.method constructor <init>(Lcom/fiqih/anaknya/mbol/MusicControls;)V
    .locals 0

    iput-object p1, p0, Lcom/fiqih/anaknya/mbol/MusicControls$4;->this$0:Lcom/fiqih/anaknya/mbol/MusicControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls$4;->this$0:Lcom/fiqih/anaknya/mbol/MusicControls;

    const/16 v1, 0x57

    # invokes: Lcom/fiqih/anaknya/mbol/MusicControls;->sendMediaButtonEvent(I)V
    invoke-static {v0, v1}, Lcom/fiqih/anaknya/mbol/MusicControls;->access$000(Lcom/fiqih/anaknya/mbol/MusicControls;I)V

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls$4;->this$0:Lcom/fiqih/anaknya/mbol/MusicControls;

    # getter for: Lcom/fiqih/anaknya/mbol/MusicControls;->mPlayIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/fiqih/anaknya/mbol/MusicControls;->access$100(Lcom/fiqih/anaknya/mbol/MusicControls;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls$4;->this$0:Lcom/fiqih/anaknya/mbol/MusicControls;

    # getter for: Lcom/fiqih/anaknya/mbol/MusicControls;->mPauseIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/fiqih/anaknya/mbol/MusicControls;->access$200(Lcom/fiqih/anaknya/mbol/MusicControls;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls$4;->this$0:Lcom/fiqih/anaknya/mbol/MusicControls;

    # getter for: Lcom/fiqih/anaknya/mbol/MusicControls;->mAnim:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/fiqih/anaknya/mbol/MusicControls;->access$220(Lcom/fiqih/anaknya/mbol/MusicControls;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls$4;->this$0:Lcom/fiqih/anaknya/mbol/MusicControls;

    # getter for: Lcom/fiqih/anaknya/mbol/MusicControls;->mAnimStanby:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/fiqih/anaknya/mbol/MusicControls;->access$222(Lcom/fiqih/anaknya/mbol/MusicControls;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
