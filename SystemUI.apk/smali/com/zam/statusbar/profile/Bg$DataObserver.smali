.class Lcom/zam/statusbar/profile/Bg$DataObserver;
.super Landroid/database/ContentObserver;
.source "Bg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zam/statusbar/profile/Bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zam/statusbar/profile/Bg;


# direct methods
.method public constructor <init>(Lcom/zam/statusbar/profile/Bg;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    .line 54
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 56
    return-void
.end method


# virtual methods
.method listen()V
    .locals 14

    .prologue
    .line 77
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "screenBg"

    const-string v12, "id"

    iget-object v13, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v13, v13, Lcom/zam/statusbar/profile/Bg;->ct:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 78
    .local v6, "resBg":I
    iget-object v11, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    invoke-virtual {v10, v6}, Lcom/zam/statusbar/profile/Bg;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v11, Lcom/zam/statusbar/profile/Bg;->imgBg:Landroid/widget/ImageView;

    .line 83
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/zam/statusbar/profile/A;->enableBlur:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "s":Ljava/lang/String;
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/zam/statusbar/profile/A;->warnaBgEnable:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "ss":Ljava/lang/String;
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/zam/statusbar/profile/A;->warnaUri:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "w":Ljava/lang/String;
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/zam/statusbar/profile/A;->coverUri:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 89
    .local v2, "cover":Landroid/net/Uri;
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/zam/statusbar/profile/A;->coverBlurUri:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 92
    .local v3, "coverBlur":Landroid/net/Uri;
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 94
    .local v0, "bb":Z
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "menu_null"

    const-string v12, "drawable"

    iget-object v13, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v13, v13, Lcom/zam/statusbar/profile/Bg;->ct:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 97
    .local v4, "dr":I
    const-string v10, "null"

    invoke-virtual {v2, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 98
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->imgBg:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->imgBg:Landroid/widget/ImageView;

    const-string v11, "#263238"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    if-nez v0, :cond_3

    .line 102
    const-string v10, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 104
    :try_start_0
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    .local v1, "bm":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->imgBg:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    const-string v10, "false"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 112
    :try_start_1
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 113
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->imgBg:Landroid/widget/ImageView;

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 114
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    .line 115
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    .line 107
    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 119
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_3
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->imgBg:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v10, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Bg;->imgBg:Landroid/widget/ImageView;

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/zam/statusbar/profile/Bg$DataObserver;->listen()V

    .line 74
    return-void
.end method

.method register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v1, p0, Lcom/zam/statusbar/profile/Bg$DataObserver;->this$0:Lcom/zam/statusbar/profile/Bg;

    iget-object v1, v1, Lcom/zam/statusbar/profile/Bg;->ct:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    .local v0, "mResolve":Landroid/content/ContentResolver;
    sget-object v1, Lcom/zam/statusbar/profile/A;->coverUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    sget-object v1, Lcom/zam/statusbar/profile/A;->coverBlurUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    sget-object v1, Lcom/zam/statusbar/profile/A;->enableBlur:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    sget-object v1, Lcom/zam/statusbar/profile/A;->warnaBgEnable:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    sget-object v1, Lcom/zam/statusbar/profile/A;->warnaUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 66
    invoke-virtual {p0}, Lcom/zam/statusbar/profile/Bg$DataObserver;->listen()V

    .line 67
    return-void
.end method
