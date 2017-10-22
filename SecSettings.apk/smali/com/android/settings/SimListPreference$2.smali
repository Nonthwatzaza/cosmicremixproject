.class Lcom/android/settings/SimListPreference$2;
.super Ljava/lang/Object;
.source "SimListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SimListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
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
    .line 160
    iput-object p1, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 164
    const-string v0, "SimListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data service network | mWhich ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    # getter for: Lcom/android/settings/SimListPreference;->mWhich:I
    invoke-static {v2}, Lcom/android/settings/SimListPreference;->access$000(Lcom/android/settings/SimListPreference;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    # getter for: Lcom/android/settings/SimListPreference;->mWhich:I
    invoke-static {v0}, Lcom/android/settings/SimListPreference;->access$000(Lcom/android/settings/SimListPreference;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 167
    const-string v0, "SimListPreference"

    const-string v1, "Data service network | Same change "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/SimListPreference;->setResult(I)V

    .line 190
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v0, "data_service_network"

    iget-object v1, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    invoke-virtual {v1}, Lcom/android/settings/SimListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    invoke-virtual {v0}, Lcom/android/settings/SimListPreference;->isNowUsingPDP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/SimListPreference;->setResult(I)V

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    # setter for: Lcom/android/settings/SimListPreference;->mWhich:I
    invoke-static {v0, p2}, Lcom/android/settings/SimListPreference;->access$002(Lcom/android/settings/SimListPreference;I)I

    .line 182
    iget-object v0, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    invoke-virtual {v0}, Lcom/android/settings/SimListPreference;->disconnectNetworkAlramPopup()V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimListPreference$2;->this$0:Lcom/android/settings/SimListPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/SimListPreference;->setResult(I)V

    goto :goto_0
.end method
