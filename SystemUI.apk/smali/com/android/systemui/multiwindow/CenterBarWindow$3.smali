.class Lcom/android/systemui/multiwindow/CenterBarWindow$3;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/CenterBarWindow;->setWindow(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 360
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->setCurrentStatusBarVisibility(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRect()V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1000(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    # invokes: Lcom/android/systemui/multiwindow/CenterBarWindow;->updateCenterBarRect(Landroid/content/res/Configuration;)V
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1100(Lcom/android/systemui/multiwindow/CenterBarWindow;Landroid/content/res/Configuration;)V

    .line 363
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1200(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1200(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 364
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
