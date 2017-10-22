.class Lcom/zam/statusbar/Text1$2;
.super Landroid/content/BroadcastReceiver;
.source "Text1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zam/statusbar/Text1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zam/statusbar/Text1;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zam/statusbar/Text1;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iput-object p2, p0, Lcom/zam/statusbar/Text1$2;->val$context:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 117
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "/UI_Editor/fonts/carrier1.ttf"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 118
    .local v5, "type1":Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    const-string v7, "AZMI1"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/zam/statusbar/Text1;->textsatu:Ljava/lang/String;

    .line 119
    const-string v6, "style1"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "fos1":Ljava/lang/String;
    const-string v6, "AZMI1color"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "cl1":Ljava/lang/String;
    const-string v6, "AZMI1size"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "sz1":Ljava/lang/String;
    const-string v6, "Bold"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v6, v6, Lcom/zam/statusbar/Text1;->textview1:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 140
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v6, v6, Lcom/zam/statusbar/Text1;->clr1:Ljava/lang/String;

    if-nez v6, :cond_8

    .line 141
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v6, v6, Lcom/zam/statusbar/Text1;->textview1:Landroid/widget/TextView;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    :goto_1
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v6, v6, Lcom/zam/statusbar/Text1;->textview1:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v7, v7, Lcom/zam/statusbar/Text1;->textsatu:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v6, v6, Lcom/zam/statusbar/Text1;->textview1:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 149
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->val$context:Landroid/content/Context;

    const-string v7, "EvoPrefsFile"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 150
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 151
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "text1"

    iget-object v7, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v7, v7, Lcom/zam/statusbar/Text1;->textsatu:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v6, "text1size"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    const-string v6, "font1style"

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    const-string v6, "color1"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    return-void

    .line 125
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    const-string v6, "Italic"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v6, v6, Lcom/zam/statusbar/Text1;->textview1:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 127
    :cond_2
    const-string v6, "Bold Italic"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 128
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v6, v6, Lcom/zam/statusbar/Text1;->textview1:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 129
    :cond_3
    const-string v6, "Regular"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 130
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v6, v6, Lcom/zam/statusbar/Text1;->textview1:Landroid/widget/TextView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 131
    :cond_4
    const-string v6, "Cstm Bold"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 132
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v6, v6, Lcom/zam/statusbar/Text1;->textview1:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 133
    :cond_5
    const-string v6, "Cstm Italic"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 134
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v6, v6, Lcom/zam/statusbar/Text1;->textview1:Landroid/widget/TextView;

    const/4 v7, 0x2

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 135
    :cond_6
    const-string v6, "Cstm Bold Italic"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 136
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v6, v6, Lcom/zam/statusbar/Text1;->textview1:Landroid/widget/TextView;

    const/4 v7, 0x3

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 137
    :cond_7
    const-string v6, "Cstm Regular"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v6, v6, Lcom/zam/statusbar/Text1;->textview1:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_0

    .line 143
    :cond_8
    iget-object v6, p0, Lcom/zam/statusbar/Text1$2;->this$0:Lcom/zam/statusbar/Text1;

    iget-object v6, v6, Lcom/zam/statusbar/Text1;->textview1:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method
