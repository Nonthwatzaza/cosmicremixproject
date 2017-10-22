.class Lcom/android/settings/SimEnabler$2;
.super Ljava/lang/Object;
.source "SimEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SimEnabler;->isAllSimOff(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/SimEnabler;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/settings/SimEnabler$2;->this$0:Lcom/android/settings/SimEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 493
    return-void
.end method
