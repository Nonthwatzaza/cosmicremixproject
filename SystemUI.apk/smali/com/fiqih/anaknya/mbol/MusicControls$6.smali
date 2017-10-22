.class Lcom/fiqih/anaknya/mbol/MusicControls$6;
.super Ljava/lang/Object;
.source "MusicControls.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fiqih/anaknya/mbol/MusicControls;->seekvol()V
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

    iput-object p1, p0, Lcom/fiqih/anaknya/mbol/MusicControls$6;->this$0:Lcom/fiqih/anaknya/mbol/MusicControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls$6;->this$0:Lcom/fiqih/anaknya/mbol/MusicControls;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls$6;->this$0:Lcom/fiqih/anaknya/mbol/MusicControls;

    # getter for: Lcom/fiqih/anaknya/mbol/MusicControls;->audio:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/fiqih/anaknya/mbol/MusicControls;->access$8300(Lcom/fiqih/anaknya/mbol/MusicControls;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/fiqih/anaknya/mbol/MusicControls$6;->this$0:Lcom/fiqih/anaknya/mbol/MusicControls;

    # getter for: Lcom/fiqih/anaknya/mbol/MusicControls;->seekvoltext:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/fiqih/anaknya/mbol/MusicControls;->access$8400(Lcom/fiqih/anaknya/mbol/MusicControls;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
