.class public Lcom/android/settings/NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatusReceiver.java"


# static fields
.field private static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkDualSimMode(Landroid/content/Context;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 127
    const/4 v2, 0x1

    .line 128
    .local v2, "PhoneOnMode2":Z
    const-string v3, "gsm.sim.state"

    .line 129
    .local v3, "SIM_STATE":Ljava/lang/String;
    const-string v4, "gsm.sim.state_1"

    .line 130
    .local v4, "SIM_STATE_1":Ljava/lang/String;
    const-string v0, "ril.MSIMM"

    .line 132
    .local v0, "MSIMM_TYPE":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "phone1_on"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_1

    move v1, v8

    .line 133
    .local v1, "PhoneOnMode1":Z
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "phone2_on"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_2

    move v2, v8

    .line 134
    :goto_1
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "SimState_1":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "SimState_2":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "SimMaster":Ljava/lang/String;
    const-string v10, "NetworkStatusReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PhoneOnMode1 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " PhoneOnMode2 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SimState_1 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SimState_2 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SimMaster : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v10, "1"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_0
    :goto_2
    move v8, v9

    .line 175
    :goto_3
    return v8

    .end local v1    # "PhoneOnMode1":Z
    .end local v5    # "SimMaster":Ljava/lang/String;
    .end local v6    # "SimState_1":Ljava/lang/String;
    .end local v7    # "SimState_2":Ljava/lang/String;
    :cond_1
    move v1, v9

    .line 132
    goto :goto_0

    .restart local v1    # "PhoneOnMode1":Z
    :cond_2
    move v2, v9

    .line 133
    goto :goto_1

    .line 145
    .restart local v5    # "SimMaster":Ljava/lang/String;
    .restart local v6    # "SimState_1":Ljava/lang/String;
    .restart local v7    # "SimState_2":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 147
    const-string v10, "ABSENT"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "ABSENT"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_3

    .line 156
    :cond_4
    if-nez v1, :cond_0

    .line 159
    if-eqz v2, :cond_0

    .line 161
    const-string v8, "ABSENT"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ABSENT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2
.end method

.method private checkInterChangedSIM(Landroid/content/Context;)Z
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const-wide/16 v8, 0x0

    .line 181
    .local v8, "sim1_value":J
    const-wide/16 v10, 0x0

    .line 182
    .local v10, "sim2_value":J
    const-wide/16 v0, 0x0

    .line 183
    .local v0, "Sim1OperatorVal":J
    const-wide/16 v2, 0x0

    .line 185
    .local v2, "Sim2OperatorVal":J
    const-string v12, "DSDS"

    invoke-static {v12}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/plugin/dsds/PlugInDsdsService;

    .line 187
    .local v4, "dsdsService":Landroid/plugin/dsds/PlugInDsdsService;
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/plugin/dsds/PlugInDsdsService;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "imsiSIM1":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/plugin/dsds/PlugInDsdsService;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, "imsiSIM2":Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v6, "0"

    .line 191
    :cond_0
    if-nez v7, :cond_1

    const-string v7, "0"

    .line 194
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    .line 195
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 197
    sget-boolean v12, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v12, :cond_2

    .line 198
    const-string v12, "NetworkStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkInterChangedSIM : Sim1OperatorVal:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    .line 206
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 208
    sget-boolean v12, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v12, :cond_3

    .line 209
    const-string v12, "NetworkStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkInterChangedSIM : Sim2OperatorVal:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dsa_sim1_value"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v8

    .line 221
    :goto_2
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dsa_sim2_value"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v10

    .line 226
    :goto_3
    sget-boolean v12, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v12, :cond_4

    .line 228
    const-string v12, "NetworkStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkInterChangedSIM :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v12, "NetworkStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkInterChangedSIM :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_4
    cmp-long v12, v0, v10

    if-nez v12, :cond_5

    cmp-long v12, v2, v8

    if-nez v12, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-eqz v12, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_5

    .line 234
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "checkInterChangedSIM : Each sim interchanged"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dsa_sim1_value"

    invoke-static {v12, v13, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dsa_sim2_value"

    invoke-static {v12, v13, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 238
    const/4 v12, 0x1

    .line 245
    :goto_4
    return v12

    .line 200
    :catch_0
    move-exception v5

    .line 201
    .local v5, "e":Ljava/lang/Exception;
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "checkInterChangedSIM : imsiSIM1 invalid!"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 211
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 212
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "checkInterChangedSIM : imsiSIM2 invalid!"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 217
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 218
    .local v5, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v5}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 222
    .end local v5    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_3
    move-exception v5

    .line 223
    .restart local v5    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v5}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 242
    .end local v5    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dsa_sim1_value"

    invoke-static {v12, v13, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dsa_sim2_value"

    invoke-static {v12, v13, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 245
    const/4 v12, 0x0

    goto :goto_4
.end method

.method private checkSimIMSIDetails(Landroid/content/Context;)Z
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    const-wide/16 v8, 0x0

    .line 253
    .local v8, "sim1_value":J
    const-wide/16 v10, 0x0

    .line 254
    .local v10, "sim2_value":J
    const-wide/16 v0, 0x0

    .line 255
    .local v0, "Sim1OperatorVal":J
    const-wide/16 v2, 0x0

    .line 257
    .local v2, "Sim2OperatorVal":J
    const-string v12, "DSDS"

    invoke-static {v12}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/plugin/dsds/PlugInDsdsService;

    .line 259
    .local v4, "dsdsService":Landroid/plugin/dsds/PlugInDsdsService;
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/plugin/dsds/PlugInDsdsService;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, "imsiSIM1":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/plugin/dsds/PlugInDsdsService;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "imsiSIM2":Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v6, "0"

    .line 263
    :cond_0
    if-nez v7, :cond_1

    const-string v7, "0"

    .line 271
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_2

    .line 272
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 274
    sget-boolean v12, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v12, :cond_2

    .line 275
    const-string v12, "NetworkStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Network Status Receiver:getSimOperator : Sim1OperatorVal:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    .line 283
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 285
    sget-boolean v12, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v12, :cond_3

    .line 286
    const-string v12, "NetworkStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Network Status Receiver:getSimOperator : Sim2OperatorVal:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "sim1_value"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v8

    .line 298
    :goto_2
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "sim2_value"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v10

    .line 303
    :goto_3
    sget-boolean v12, Lcom/android/settings/NetworkStatusReceiver;->DEBUG:Z

    if-eqz v12, :cond_4

    .line 304
    const-string v12, "NetworkStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Network Status Receiver:Initial sim1_value:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v12, "NetworkStatusReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Network Status Receiver:Initial sim2_value:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_4
    cmp-long v12, v0, v8

    if-eqz v12, :cond_5

    cmp-long v12, v0, v10

    if-nez v12, :cond_7

    :cond_5
    cmp-long v12, v2, v8

    if-eqz v12, :cond_6

    cmp-long v12, v2, v10

    if-nez v12, :cond_7

    :cond_6
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-eqz v12, :cond_7

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_7

    .line 311
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "Network Status Receiver:sim interchanged"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v12, 0x1

    .line 363
    :goto_4
    return v12

    .line 277
    :catch_0
    move-exception v5

    .line 278
    .local v5, "e":Ljava/lang/Exception;
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "checkSimIMSIDetails : imsiSIM1 invalid!"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 288
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 289
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "checkSimIMSIDetails : imsiSIM2 invalid!"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 295
    .local v5, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v5}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 299
    .end local v5    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_3
    move-exception v5

    .line 300
    .restart local v5    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v5}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 315
    .end local v5    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_7
    cmp-long v12, v0, v8

    if-eqz v12, :cond_8

    cmp-long v12, v0, v10

    if-nez v12, :cond_9

    :cond_8
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-nez v12, :cond_9

    .line 317
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "Network Status Receiver:Old Sim1 No Sim2 "

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v12, 0x1

    goto :goto_4

    .line 321
    :cond_9
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-nez v12, :cond_b

    cmp-long v12, v2, v8

    if-eqz v12, :cond_a

    cmp-long v12, v2, v10

    if-nez v12, :cond_b

    .line 323
    :cond_a
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "Network Status Receiver:Old Sim2 No Sim1"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v12, 0x1

    goto :goto_4

    .line 327
    :cond_b
    cmp-long v12, v0, v8

    if-eqz v12, :cond_d

    cmp-long v12, v0, v10

    if-eqz v12, :cond_d

    cmp-long v12, v2, v10

    if-eqz v12, :cond_d

    cmp-long v12, v2, v10

    if-eqz v12, :cond_d

    .line 329
    const-string v12, "0"

    if-ne v6, v12, :cond_c

    const-string v12, "0"

    if-ne v7, v12, :cond_c

    .line 330
    const/4 v12, 0x1

    goto :goto_4

    .line 334
    :cond_c
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "Network Status Receiver:checkSimDetails :Sim1 and Sim2 updating"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "sim1_value"

    invoke-static {v12, v13, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 336
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "sim2_value"

    invoke-static {v12, v13, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 337
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "Network Status Receiver:checkSimDetails :Sim1 and Sim2 updated"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 342
    :cond_d
    cmp-long v12, v0, v8

    if-eqz v12, :cond_f

    cmp-long v12, v0, v10

    if-eqz v12, :cond_f

    cmp-long v12, v2, v10

    if-eqz v12, :cond_e

    cmp-long v12, v2, v8

    if-nez v12, :cond_f

    .line 344
    :cond_e
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "Network Status Receiver:checkSimDetails :Sim1  updating"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "sim1_value"

    invoke-static {v12, v13, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 346
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "Network Status Receiver:checkSimDetails :Sim1 updated"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 350
    :cond_f
    cmp-long v12, v2, v10

    if-eqz v12, :cond_11

    cmp-long v12, v2, v8

    if-eqz v12, :cond_11

    cmp-long v12, v0, v8

    if-eqz v12, :cond_10

    cmp-long v12, v0, v10

    if-nez v12, :cond_11

    .line 352
    :cond_10
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "Network Status Receiver:checkSimDetails :Sim2  updating"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "sim2_value"

    invoke-static {v12, v13, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 354
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "Network Status Receiver:checkSimDetails :Sim2 updated"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 358
    :cond_11
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-nez v12, :cond_12

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-nez v12, :cond_12

    .line 359
    const-string v12, "NetworkStatusReceiver"

    const-string v13, "Network Status Receiver:checkSimDetails :No SIM cards"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v12, 0x1

    goto/16 :goto_4

    .line 363
    :cond_12
    const/4 v12, 0x1

    goto/16 :goto_4
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "NetworkStatusReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v1, "com.android.settings.networkmanagement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/NetworkStatusReceiver;->checkInterChangedSIM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsa_inter_change"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/NetworkStatusReceiver;->checkSimIMSIDetails(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    const-string v0, "NetworkStatusReceiver"

    const-string v1, "Network Management about to start"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/NetworkManagement;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string v1, "NetworkStatusReceiver"

    const-string v2, "Network Management calling startActivity"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v1, "com.android.settings.networkmanagement"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/NetworkStatusReceiver;->checkDualSimMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "extra_changed_imsi"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    :cond_1
    return-void

    .line 70
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsa_inter_change"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
