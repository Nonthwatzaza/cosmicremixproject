.class Lcom/zam/statusbar/profile/Cr$DataObserver;
.super Landroid/database/ContentObserver;
.source "Cr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zam/statusbar/profile/Cr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zam/statusbar/profile/Cr;


# direct methods
.method public constructor <init>(Lcom/zam/statusbar/profile/Cr;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    .line 52
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 54
    return-void
.end method


# virtual methods
.method listen()V
    .locals 15

    .prologue
    .line 76
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->ct:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "carrHead"

    const-string v13, "id"

    iget-object v14, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v14, v14, Lcom/zam/statusbar/profile/Cr;->ct:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 77
    .local v7, "resImg":I
    iget-object v12, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    invoke-virtual {v11, v7}, Lcom/zam/statusbar/profile/Cr;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v12, Lcom/zam/statusbar/profile/Cr;->mCr:Landroid/widget/TextView;

    .line 79
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->ct:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/zam/statusbar/profile/A;->caHeader:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "hEnable":Ljava/lang/String;
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->ct:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/zam/statusbar/profile/A;->n:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "namaUri":Ljava/lang/String;
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->ct:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/zam/statusbar/profile/A;->warnaN:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 82
    .local v10, "warnanamaUri":Ljava/lang/String;
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->ct:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/zam/statusbar/profile/A;->sizeN:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, "ukurannamaUri":Ljava/lang/String;
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->ct:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/zam/statusbar/profile/A;->typeN:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "fontTypeN":Ljava/lang/String;
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->ct:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/zam/statusbar/profile/A;->enableN:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "fontNUriEnable":Ljava/lang/String;
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->ct:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/zam/statusbar/profile/A;->fontN:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "fontnamaUri":Ljava/lang/String;
    const-string v11, "false"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 89
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->mCr:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->mCr:Landroid/widget/TextView;

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    const/4 v4, 0x0

    .line 98
    .local v4, "mySize":F
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    int-to-float v4, v11

    .line 103
    :goto_1
    const-string v11, "null"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 104
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->mCr:Landroid/widget/TextView;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 110
    :goto_2
    const-string v11, "[Italic]"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 111
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lcom/zam/statusbar/profile/Cr;->access$0(Lcom/zam/statusbar/profile/Cr;I)V

    .line 113
    :cond_0
    const-string v11, "[Bold]"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 114
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/zam/statusbar/profile/Cr;->access$0(Lcom/zam/statusbar/profile/Cr;I)V

    .line 116
    :cond_1
    const-string v11, "[Bold, Italic]"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 117
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/zam/statusbar/profile/Cr;->access$0(Lcom/zam/statusbar/profile/Cr;I)V

    .line 119
    :cond_2
    const-string v11, "[]"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 120
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/zam/statusbar/profile/Cr;->access$0(Lcom/zam/statusbar/profile/Cr;I)V

    .line 123
    :cond_3
    const-string v11, "true"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 124
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/zam/statusbar/profile/A;->f:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/UI_Editor/fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 125
    .local v8, "tf":Landroid/graphics/Typeface;
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->mCr:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    # getter for: Lcom/zam/statusbar/profile/Cr;->tfC:I
    invoke-static {v12}, Lcom/zam/statusbar/profile/Cr;->access$1(Lcom/zam/statusbar/profile/Cr;)I

    move-result v12

    invoke-virtual {v11, v8, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 127
    .end local v8    # "tf":Landroid/graphics/Typeface;
    :cond_4
    const-string v11, "false"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 128
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->mCr:Landroid/widget/TextView;

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-object v13, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    # getter for: Lcom/zam/statusbar/profile/Cr;->tfC:I
    invoke-static {v13}, Lcom/zam/statusbar/profile/Cr;->access$1(Lcom/zam/statusbar/profile/Cr;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 130
    :cond_5
    return-void

    .line 91
    .end local v4    # "mySize":F
    :cond_6
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->mCr:Landroid/widget/TextView;

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 99
    .restart local v4    # "mySize":F
    :catch_0
    move-exception v6

    .line 100
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "angka tidak valid"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 106
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    :cond_7
    iget-object v11, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v11, v11, Lcom/zam/statusbar/profile/Cr;->mCr:Landroid/widget/TextView;

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_2
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/zam/statusbar/profile/Cr$DataObserver;->listen()V

    .line 73
    return-void
.end method

.method register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v1, p0, Lcom/zam/statusbar/profile/Cr$DataObserver;->this$0:Lcom/zam/statusbar/profile/Cr;

    iget-object v1, v1, Lcom/zam/statusbar/profile/Cr;->ct:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 58
    .local v0, "mResolve":Landroid/content/ContentResolver;
    sget-object v1, Lcom/zam/statusbar/profile/A;->caHeader:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 59
    sget-object v1, Lcom/zam/statusbar/profile/A;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    sget-object v1, Lcom/zam/statusbar/profile/A;->warnaN:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 61
    sget-object v1, Lcom/zam/statusbar/profile/A;->sizeN:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    sget-object v1, Lcom/zam/statusbar/profile/A;->typeN:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    sget-object v1, Lcom/zam/statusbar/profile/A;->enableN:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    sget-object v1, Lcom/zam/statusbar/profile/A;->fontN:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    invoke-virtual {p0}, Lcom/zam/statusbar/profile/Cr$DataObserver;->listen()V

    .line 66
    return-void
.end method
