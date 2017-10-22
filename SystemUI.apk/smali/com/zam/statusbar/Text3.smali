.class public Lcom/zam/statusbar/Text3;
.super Landroid/widget/TextView;
.source "Text3.java"


# instance fields
.field clr3:Ljava/lang/String;

.field fs3:Ljava/lang/String;

.field size3:Ljava/lang/String;

.field textsatu:Ljava/lang/String;

.field textview3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const v6, 0x7f0e01ef

    invoke-virtual {p0, v6}, Lcom/zam/statusbar/Text3;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/zam/statusbar/Text3;->textview3:Landroid/widget/TextView;

    .line 27
    const-string v6, "EvoPrefsFile"

    invoke-virtual {p1, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 28
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v6, "text3"

    const-string v7, "view text 3"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zam/statusbar/Text3;->textsatu:Ljava/lang/String;

    .line 29
    const-string v6, "text3size"

    const-string v7, "null"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zam/statusbar/Text3;->size3:Ljava/lang/String;

    .line 30
    const-string v6, "font3style"

    const-string v7, "Regular"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zam/statusbar/Text3;->fs3:Ljava/lang/String;

    .line 31
    const-string v6, "color3"

    const-string v7, "null"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zam/statusbar/Text3;->clr3:Ljava/lang/String;

    .line 33
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->fs3:Ljava/lang/String;

    const-string v7, "Bold"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 34
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->textview3:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 42
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 44
    .local v3, "mySize":F
    :try_start_0
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->size3:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v3, v6

    .line 49
    :goto_1
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->size3:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 50
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->textview3:Landroid/widget/TextView;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    :goto_2
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->textview3:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zam/statusbar/Text3;->textsatu:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->clr3:Ljava/lang/String;

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 58
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->textview3:Landroid/widget/TextView;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    :goto_3
    new-instance v1, Lcom/zam/statusbar/Text3$1;

    invoke-direct {v1, p0, p1}, Lcom/zam/statusbar/Text3$1;-><init>(Lcom/zam/statusbar/Text3;Landroid/content/Context;)V

    .line 113
    .local v1, "mMediaReceiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Lcom/zam/statusbar/Text3$2;

    invoke-direct {v2, p0, p1}, Lcom/zam/statusbar/Text3$2;-><init>(Lcom/zam/statusbar/Text3;Landroid/content/Context;)V

    .line 159
    .local v2, "mReceiver":Landroid/content/BroadcastReceiver;
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.zam.statusbar.CHANGE_TEXT3_LABEL"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, "fil":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v6, "file"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    return-void

    .line 35
    .end local v0    # "fil":Landroid/content/IntentFilter;
    .end local v1    # "mMediaReceiver":Landroid/content/BroadcastReceiver;
    .end local v2    # "mReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "mySize":F
    :cond_1
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->fs3:Ljava/lang/String;

    const-string v7, "Italic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 36
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->textview3:Landroid/widget/TextView;

    const/4 v7, 0x2

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 37
    :cond_2
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->fs3:Ljava/lang/String;

    const-string v7, "Bold Italic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 38
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->textview3:Landroid/widget/TextView;

    const/4 v7, 0x3

    invoke-virtual {v6, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 39
    :cond_3
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->fs3:Ljava/lang/String;

    const-string v7, "Regular"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 40
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->textview3:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 45
    .restart local v3    # "mySize":F
    :catch_0
    move-exception v4

    .line 46
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "angka tidak valid"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 52
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :cond_4
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->textview3:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_2

    .line 60
    :cond_5
    iget-object v6, p0, Lcom/zam/statusbar/Text3;->textview3:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zam/statusbar/Text3;->clr3:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3
.end method
