.class Lcom/potato/systemui/clocks/Clock$1;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/systemui/clocks/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/potato/systemui/clocks/Clock;


# direct methods
.method constructor <init>(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    .line 195
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x0

    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v3}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 201
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const-string v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "tz":Ljava/lang/String;
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$0(Lcom/potato/systemui/clocks/Clock;Ljava/util/Calendar;)V

    .line 204
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # getter for: Lcom/potato/systemui/clocks/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$1(Lcom/potato/systemui/clocks/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # getter for: Lcom/potato/systemui/clocks/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$1(Lcom/potato/systemui/clocks/Clock;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # getter for: Lcom/potato/systemui/clocks/Clock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/potato/systemui/clocks/Clock;->access$2(Lcom/potato/systemui/clocks/Clock;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 247
    .end local v2    # "tz":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v3}, Lcom/potato/systemui/clocks/Clock;->updateClock()V

    .line 248
    return-void

    .line 208
    :cond_1
    const-string v3, "com.potato.clock"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 212
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_font"

    const/4 v6, 0x5

    .line 211
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$3(Lcom/potato/systemui/clocks/Clock;I)V

    .line 213
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 214
    const-string v5, "clock_color"

    .line 213
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$4(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V

    .line 215
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 216
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ampm"

    .line 215
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$5(Lcom/potato/systemui/clocks/Clock;I)V

    .line 217
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 218
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "day"

    .line 217
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$6(Lcom/potato/systemui/clocks/Clock;I)V

    .line 219
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 220
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    .line 219
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$7(Lcom/potato/systemui/clocks/Clock;I)V

    .line 221
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    .line 222
    const-string v4, "custom_date_format"

    .line 221
    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$8(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 224
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_size_custom"

    .line 223
    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$9(Lcom/potato/systemui/clocks/Clock;I)V

    .line 225
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 226
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "AMPM_size_custom"

    .line 225
    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$10(Lcom/potato/systemui/clocks/Clock;I)V

    .line 227
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    .line 228
    const-string v4, "custom_font"

    .line 227
    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$11(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 230
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ninja_clock_upper"

    .line 229
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$12(Lcom/potato/systemui/clocks/Clock;I)V

    .line 231
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 232
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_styleChoosah"

    const/4 v6, 0x1

    .line 231
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$13(Lcom/potato/systemui/clocks/Clock;I)V

    .line 233
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 234
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "normal_upper"

    .line 233
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$14(Lcom/potato/systemui/clocks/Clock;I)V

    .line 235
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    .line 236
    const-string v4, "custom_clock_format"

    .line 235
    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$15(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V

    .line 237
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v4}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 238
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "animate"

    .line 237
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/potato/systemui/clocks/Clock;->access$16(Lcom/potato/systemui/clocks/Clock;I)V

    .line 240
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->date_format()Ljava/lang/String;
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$17(Lcom/potato/systemui/clocks/Clock;)Ljava/lang/String;

    .line 241
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->setFont()V
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$18(Lcom/potato/systemui/clocks/Clock;)V

    .line 242
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->setColor()V
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$19(Lcom/potato/systemui/clocks/Clock;)V

    .line 243
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->setAMPM()V
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$20(Lcom/potato/systemui/clocks/Clock;)V

    .line 244
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    # invokes: Lcom/potato/systemui/clocks/Clock;->setDay()V
    invoke-static {v3}, Lcom/potato/systemui/clocks/Clock;->access$21(Lcom/potato/systemui/clocks/Clock;)V

    .line 245
    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock$1;->this$0:Lcom/potato/systemui/clocks/Clock;

    invoke-virtual {v3}, Lcom/potato/systemui/clocks/Clock;->updateClock()V

    goto/16 :goto_0
.end method
