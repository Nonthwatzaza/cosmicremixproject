.class Lcom/zam/statusbar/profile/Ph$DataObserver;
.super Landroid/database/ContentObserver;
.source "Ph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zam/statusbar/profile/Ph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zam/statusbar/profile/Ph;


# direct methods
.method public constructor <init>(Lcom/zam/statusbar/profile/Ph;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zam/statusbar/profile/Ph$DataObserver;->this$0:Lcom/zam/statusbar/profile/Ph;

    .line 52
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 54
    return-void
.end method


# virtual methods
.method listen()V
    .locals 9

    .prologue
    .line 71
    iget-object v5, p0, Lcom/zam/statusbar/profile/Ph$DataObserver;->this$0:Lcom/zam/statusbar/profile/Ph;

    iget-object v5, v5, Lcom/zam/statusbar/profile/Ph;->ct:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "gambarProf"

    const-string v7, "id"

    iget-object v8, p0, Lcom/zam/statusbar/profile/Ph$DataObserver;->this$0:Lcom/zam/statusbar/profile/Ph;

    iget-object v8, v8, Lcom/zam/statusbar/profile/Ph;->ct:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 72
    .local v4, "resImg":I
    iget-object v6, p0, Lcom/zam/statusbar/profile/Ph$DataObserver;->this$0:Lcom/zam/statusbar/profile/Ph;

    iget-object v5, p0, Lcom/zam/statusbar/profile/Ph$DataObserver;->this$0:Lcom/zam/statusbar/profile/Ph;

    invoke-virtual {v5, v4}, Lcom/zam/statusbar/profile/Ph;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/zam/statusbar/profile/Ph;->imgPh:Landroid/widget/ImageView;

    .line 74
    iget-object v5, p0, Lcom/zam/statusbar/profile/Ph$DataObserver;->this$0:Lcom/zam/statusbar/profile/Ph;

    iget-object v5, v5, Lcom/zam/statusbar/profile/Ph;->ct:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ab"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 76
    .local v3, "prof":Landroid/net/Uri;
    const-string v5, "null"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    iget-object v5, p0, Lcom/zam/statusbar/profile/Ph$DataObserver;->this$0:Lcom/zam/statusbar/profile/Ph;

    iget-object v5, v5, Lcom/zam/statusbar/profile/Ph;->ct:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "menu_null"

    const-string v7, "drawable"

    iget-object v8, p0, Lcom/zam/statusbar/profile/Ph$DataObserver;->this$0:Lcom/zam/statusbar/profile/Ph;

    iget-object v8, v8, Lcom/zam/statusbar/profile/Ph;->ct:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 78
    .local v1, "dr":I
    iget-object v5, p0, Lcom/zam/statusbar/profile/Ph$DataObserver;->this$0:Lcom/zam/statusbar/profile/Ph;

    iget-object v5, v5, Lcom/zam/statusbar/profile/Ph;->imgPh:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    .end local v1    # "dr":I
    :goto_0
    return-void

    .line 81
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/zam/statusbar/profile/Ph$DataObserver;->this$0:Lcom/zam/statusbar/profile/Ph;

    iget-object v5, v5, Lcom/zam/statusbar/profile/Ph;->ct:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/zam/statusbar/profile/Ph$DataObserver;->this$0:Lcom/zam/statusbar/profile/Ph;

    iget-object v5, v5, Lcom/zam/statusbar/profile/Ph;->imgPh:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/zam/statusbar/profile/Ph$DataObserver;->listen()V

    .line 68
    return-void
.end method

.method register()V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lcom/zam/statusbar/profile/Ph$DataObserver;->this$0:Lcom/zam/statusbar/profile/Ph;

    iget-object v1, v1, Lcom/zam/statusbar/profile/Ph;->ct:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    .local v0, "mResolve":Landroid/content/ContentResolver;
    const-string v1, "ab"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    invoke-virtual {p0}, Lcom/zam/statusbar/profile/Ph$DataObserver;->listen()V

    .line 61
    return-void
.end method