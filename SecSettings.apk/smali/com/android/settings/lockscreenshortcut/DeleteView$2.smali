.class Lcom/android/settings/lockscreenshortcut/DeleteView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeleteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/lockscreenshortcut/DeleteView;->startTrashCanFillUnfillAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;


# direct methods
.method constructor <init>(Lcom/android/settings/lockscreenshortcut/DeleteView;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;

    # setter for: Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z
    invoke-static {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->access$302(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z

    .line 458
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setAnimating(Z)V

    .line 459
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 450
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setAnimating(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;

    # setter for: Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z
    invoke-static {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->access$302(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z

    .line 452
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setVisibility(I)V

    .line 453
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 463
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/settings/lockscreenshortcut/DeleteView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setAnimating(Z)V

    .line 446
    return-void
.end method
