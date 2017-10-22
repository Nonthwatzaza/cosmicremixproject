.class Lcom/spacecakers/layout/BrightnessLayout$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spacecakers/layout/BrightnessLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spacecakers/layout/BrightnessLayout;


# direct methods
.method constructor <init>(Lcom/spacecakers/layout/BrightnessLayout;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/spacecakers/layout/BrightnessLayout$SettingsObserver;->this$0:Lcom/spacecakers/layout/BrightnessLayout;

    .line 27
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 28
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 31
    iget-object v1, p0, Lcom/spacecakers/layout/BrightnessLayout$SettingsObserver;->this$0:Lcom/spacecakers/layout/BrightnessLayout;

    invoke-virtual {v1}, Lcom/spacecakers/layout/BrightnessLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 33
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "mBrightnessController"

    .line 32
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 34
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 37
    iget-object v0, p0, Lcom/spacecakers/layout/BrightnessLayout$SettingsObserver;->this$0:Lcom/spacecakers/layout/BrightnessLayout;

    invoke-virtual {v0}, Lcom/spacecakers/layout/BrightnessLayout;->whatbehavior()V

    .line 38
    return-void
.end method
