.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$14;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showPlmnString()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0

    .prologue
    .line 2948
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$14;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2950
    const-string v0, "TabletStatusBar"

    const-string v1, "removePlmnString() called from  showPlmnString()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2951
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$14;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->removePlmnString()V

    .line 2952
    return-void
.end method
