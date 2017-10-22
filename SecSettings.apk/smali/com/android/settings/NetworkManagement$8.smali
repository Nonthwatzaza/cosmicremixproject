.class Lcom/android/settings/NetworkManagement$8;
.super Ljava/lang/Object;
.source "NetworkManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NetworkManagement;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NetworkManagement;

.field final synthetic val$linear:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/NetworkManagement;Landroid/widget/LinearLayout;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    iput-object p2, p0, Lcom/android/settings/NetworkManagement$8;->val$linear:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v4, 0x0

    .line 519
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$8;->val$linear:Landroid/widget/LinearLayout;

    const v3, 0x7f0b00ff

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 521
    .local v0, "doNotShow":Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    # invokes: Lcom/android/settings/NetworkManagement;->setInitDialog(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/NetworkManagement;->access$400(Lcom/android/settings/NetworkManagement;Z)V

    .line 523
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 524
    .local v1, "myIntent":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.DsaMainParser"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 527
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    iget-boolean v2, v2, Lcom/android/settings/NetworkManagement;->mIsReseted:Z

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    iput-boolean v4, v2, Lcom/android/settings/NetworkManagement;->mIsChangedImsi:Z

    .line 529
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v2}, Lcom/android/settings/NetworkManagement;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dsa_reset"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 531
    const-string v2, "extra_changed_imsi"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 533
    :cond_0
    iget-object v2, p0, Lcom/android/settings/NetworkManagement$8;->this$0:Lcom/android/settings/NetworkManagement;

    invoke-virtual {v2, v1}, Lcom/android/settings/NetworkManagement;->startActivity(Landroid/content/Intent;)V

    .line 534
    return-void
.end method
