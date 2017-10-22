.class Lcom/zam/statusbar/profile/Nm$DataObserver;
.super Landroid/database/ContentObserver;
.source "Nm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zam/statusbar/profile/Nm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zam/statusbar/profile/Nm;


# direct methods
.method public constructor <init>(Lcom/zam/statusbar/profile/Nm;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    .line 50
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 52
    return-void
.end method


# virtual methods
.method listen()V
    .locals 14

    .prologue
    .line 73
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Nm;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "namaProf"

    const-string v12, "id"

    iget-object v13, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v13, v13, Lcom/zam/statusbar/profile/Nm;->ct:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 74
    .local v6, "resImg":I
    iget-object v11, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    invoke-virtual {v10, v6}, Lcom/zam/statusbar/profile/Nm;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v11, Lcom/zam/statusbar/profile/Nm;->mNm:Landroid/widget/TextView;

    .line 76
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Nm;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/zam/statusbar/profile/A;->n:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "namaUri":Ljava/lang/String;
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Nm;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/zam/statusbar/profile/A;->warnaN:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 78
    .local v9, "warnanamaUri":Ljava/lang/String;
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Nm;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/zam/statusbar/profile/A;->sizeN:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, "ukurannamaUri":Ljava/lang/String;
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Nm;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/zam/statusbar/profile/A;->typeN:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "fontTypeN":Ljava/lang/String;
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Nm;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/zam/statusbar/profile/A;->enableN:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "fontNUriEnable":Ljava/lang/String;
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Nm;->ct:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/zam/statusbar/profile/A;->fontN:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "fontnamaUri":Ljava/lang/String;
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Nm;->mNm:Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Nm;->mNm:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    const/4 v3, 0x0

    .line 89
    .local v3, "mySize":F
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    int-to-float v3, v10

    .line 94
    :goto_0
    const-string v10, "null"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 95
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Nm;->mNm:Landroid/widget/TextView;

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    :goto_1
    const-string v10, "[Italic]"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 102
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lcom/zam/statusbar/profile/Nm;->access$0(Lcom/zam/statusbar/profile/Nm;I)V

    .line 104
    :cond_0
    const-string v10, "[Bold]"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 105
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/zam/statusbar/profile/Nm;->access$0(Lcom/zam/statusbar/profile/Nm;I)V

    .line 107
    :cond_1
    const-string v10, "[Bold, Italic]"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 108
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/zam/statusbar/profile/Nm;->access$0(Lcom/zam/statusbar/profile/Nm;I)V

    .line 110
    :cond_2
    const-string v10, "[]"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 111
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/zam/statusbar/profile/Nm;->access$0(Lcom/zam/statusbar/profile/Nm;I)V

    .line 114
    :cond_3
    const-string v10, "true"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 115
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/zam/statusbar/profile/A;->f:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/UI_Editor/fonts/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 116
    .local v7, "tf":Landroid/graphics/Typeface;
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Nm;->mNm:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    # getter for: Lcom/zam/statusbar/profile/Nm;->tf1:I
    invoke-static {v11}, Lcom/zam/statusbar/profile/Nm;->access$1(Lcom/zam/statusbar/profile/Nm;)I

    move-result v11

    invoke-virtual {v10, v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 118
    .end local v7    # "tf":Landroid/graphics/Typeface;
    :cond_4
    const-string v10, "false"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 119
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Nm;->mNm:Landroid/widget/TextView;

    sget-object v11, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-object v12, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    # getter for: Lcom/zam/statusbar/profile/Nm;->tf1:I
    invoke-static {v12}, Lcom/zam/statusbar/profile/Nm;->access$1(Lcom/zam/statusbar/profile/Nm;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 121
    :cond_5
    return-void

    .line 90
    :catch_0
    move-exception v5

    .line 91
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "angka tidak valid"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    :cond_6
    iget-object v10, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v10, v10, Lcom/zam/statusbar/profile/Nm;->mNm:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_1
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/zam/statusbar/profile/Nm$DataObserver;->listen()V

    .line 70
    return-void
.end method

.method register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v1, p0, Lcom/zam/statusbar/profile/Nm$DataObserver;->this$0:Lcom/zam/statusbar/profile/Nm;

    iget-object v1, v1, Lcom/zam/statusbar/profile/Nm;->ct:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    .local v0, "mResolve":Landroid/content/ContentResolver;
    sget-object v1, Lcom/zam/statusbar/profile/A;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 57
    sget-object v1, Lcom/zam/statusbar/profile/A;->warnaN:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 58
    sget-object v1, Lcom/zam/statusbar/profile/A;->sizeN:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    sget-object v1, Lcom/zam/statusbar/profile/A;->typeN:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    sget-object v1, Lcom/zam/statusbar/profile/A;->enableN:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    sget-object v1, Lcom/zam/statusbar/profile/A;->fontN:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    invoke-virtual {p0}, Lcom/zam/statusbar/profile/Nm$DataObserver;->listen()V

    .line 63
    return-void
.end method
