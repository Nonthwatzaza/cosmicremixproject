.class Lcom/android/systemui/statusbar/BaseStatusBar$5$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$5;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

.field final synthetic val$packageNameF:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$5;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$1;->val$packageNameF:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 574
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0d013c

    if-ne v1, v2, :cond_0

    .line 577
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$1;->val$packageNameF:Ljava/lang/String;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->startApplicationDetailsActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$200(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapse(I)V

    .line 585
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 578
    :catch_0
    move-exception v1

    goto :goto_0
.end method
