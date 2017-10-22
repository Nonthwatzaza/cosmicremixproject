.class Lcom/android/settings/NetworkManagement$1;
.super Ljava/lang/Object;
.source "NetworkManagement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NetworkManagement;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetworkManagement;


# direct methods
.method constructor <init>(Lcom/android/settings/NetworkManagement;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings/NetworkManagement$1;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/NetworkManagement$1;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v0}, Lcom/android/settings/NetworkManagement;->finish()V

    .line 172
    return-void
.end method
