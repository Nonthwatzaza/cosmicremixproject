.class Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettingPanel8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;->mButtonCnt:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 237
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;->isExist:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    .line 238
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;->mQuickSettingButton:[Landroid/view/View;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 235
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "STATUSBAR-QuickSettingPanel"

    const-string v4, "NoSuchMethodException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 243
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "STATUSBAR-QuickSettingPanel"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 246
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "STATUSBAR-QuickSettingPanel"

    const-string v4, "InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 251
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "i":I
    :cond_1
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 252
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;->mButtonCnt:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 254
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;->isExist:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_2

    .line 255
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel8;->mQuickSettingButton:[Landroid/view/View;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    .line 252
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 257
    :catch_3
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "STATUSBAR-QuickSettingPanel"

    const-string v4, "IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 260
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "STATUSBAR-QuickSettingPanel"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 263
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "STATUSBAR-QuickSettingPanel"

    const-string v4, "InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3

    .line 269
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "i":I
    :cond_3
    return-void
.end method
