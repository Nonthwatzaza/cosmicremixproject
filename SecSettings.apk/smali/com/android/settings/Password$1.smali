.class Lcom/android/settings/Password$1;
.super Ljava/lang/Object;
.source "Password.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Password;


# direct methods
.method constructor <init>(Lcom/android/settings/Password;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/settings/Password$1;->this$0:Lcom/android/settings/Password;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 233
    return-void
.end method
