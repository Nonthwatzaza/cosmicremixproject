.class Lcom/android/settings/flipfont/FontListPreference$7;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/flipfont/FontListPreference;->selectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/flipfont/FontListPreference;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference$7;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$7;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z
    invoke-static {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->access$202(Lcom/android/settings/flipfont/FontListPreference;Z)Z

    .line 484
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$7;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->savePreferences()V

    .line 485
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$7;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->onCancelButtonPressed()V

    .line 486
    return-void
.end method
