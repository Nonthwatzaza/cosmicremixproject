.class Lcom/android/settings/SimListPreference$1;
.super Landroid/os/Handler;
.source "SimListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/SimListPreference;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/SimListPreference$1;->this$0:Lcom/android/settings/SimListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/SimListPreference$1;->this$0:Lcom/android/settings/SimListPreference;

    invoke-virtual {v0}, Lcom/android/settings/SimListPreference;->dismissDialog()V

    .line 63
    return-void
.end method
