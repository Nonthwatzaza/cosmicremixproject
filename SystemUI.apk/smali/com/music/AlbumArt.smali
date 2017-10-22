.class public Lcom/music/AlbumArt;
.super Landroid/widget/ImageView;
.source "AlbumArt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/music/AlbumArt$SettingsObserver;
    }
.end annotation


# instance fields
.field public mCachedBit:Landroid/graphics/Bitmap;

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public man:Landroid/media/AudioManager;

.field public final sArtworkUri:Landroid/net/Uri;

.field public final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v6, v0

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v7, v6, Lcom/music/AlbumArt;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    move-object v6, v0

    const-string v7, "content://media/external/audio/albumart"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v6, Lcom/music/AlbumArt;->sArtworkUri:Landroid/net/Uri;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/music/AlbumArt;->mCachedBit:Landroid/graphics/Bitmap;

    .line 34
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/music/AlbumArt;->mContext:Landroid/content/Context;

    .line 35
    move-object v6, v0

    new-instance v7, Landroid/os/Handler;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v7, v6, Lcom/music/AlbumArt;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v6, Lcom/music/AlbumArt$SettingsObserver;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/music/AlbumArt;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, v8, v9}, Lcom/music/AlbumArt$SettingsObserver;-><init>(Lcom/music/AlbumArt;Landroid/os/Handler;)V

    move-object v3, v6

    .line 37
    move-object v6, v3

    invoke-virtual {v6}, Lcom/music/AlbumArt$SettingsObserver;->observe()V

    .line 38
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/music/AlbumArt;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, v6, Lcom/music/AlbumArt;->man:Landroid/media/AudioManager;

    .line 39
    move-object v6, v0

    iget-object v6, v6, Lcom/music/AlbumArt;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "usb"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    move v4, v6

    .line 40
    move v6, v4

    const/4 v7, 0x0

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/music/AlbumArt;->man:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 41
    move-object v6, v0

    invoke-virtual {v6}, Lcom/music/AlbumArt;->updateInfo()V

    .line 43
    :goto_0
    return-void

    :cond_0
    move-object v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/music/AlbumArt;->setVisibility(I)V

    goto :goto_0
.end method

.method private getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 16

    .prologue
    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    const/4 v11, 0x0

    move-object v6, v11

    .line 152
    move-wide v11, v4

    const/4 v13, 0x0

    int-to-long v13, v13

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    move-wide v11, v2

    const/4 v13, 0x0

    int-to-long v13, v13

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    .line 153
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const-string v13, "Must specify an album or a song id"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 157
    :cond_0
    move-wide v11, v4

    const/4 v13, 0x0

    int-to-long v13, v13

    cmp-long v11, v11, v13

    if-gez v11, :cond_3

    .line 158
    :try_start_0
    new-instance v11, Ljava/lang/StringBuffer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/lang/StringBuffer;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "content://media/external/audio/media/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "/albumart"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object v7, v11

    .line 159
    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    move-object v12, v7

    const-string v13, "r"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    move-object v8, v11

    .line 160
    move-object v11, v8

    if-eqz v11, :cond_1

    .line 161
    move-object v11, v8

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    move-object v9, v11

    .line 162
    move-object v11, v9

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    move-object v6, v11

    .line 175
    :cond_1
    :goto_0
    move-object v11, v6

    if-eqz v11, :cond_2

    .line 176
    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Lcom/music/AlbumArt;->mCachedBit:Landroid/graphics/Bitmap;

    .line 178
    :cond_2
    move-object v11, v6

    move-object v0, v11

    return-object v0

    .line 165
    :cond_3
    move-object v11, v0

    :try_start_1
    iget-object v11, v11, Lcom/music/AlbumArt;->sArtworkUri:Landroid/net/Uri;

    move-wide v12, v4

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    move-object v7, v11

    .line 166
    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    move-object v12, v7

    const-string v13, "r"

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    move-object v8, v11

    .line 167
    move-object v11, v8

    if-eqz v11, :cond_1

    .line 168
    move-object v11, v8

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    move-object v9, v11

    .line 169
    move-object v11, v9

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    move-object v6, v11

    goto :goto_0

    :catch_0
    move-exception v11

    move-object v7, v11

    goto :goto_0

    :catch_1
    move-exception v11

    move-object v7, v11

    goto :goto_0
.end method

.method private getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 182
    move-object v0, p0

    move-object v1, p1

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v2, v4

    .line 183
    move-object v4, v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 184
    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0203b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v2

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method


# virtual methods
.method public getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-object v7, v0

    move-object v8, v1

    move-wide v9, v2

    move-wide v11, v4

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lcom/music/AlbumArt;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object v0, v7

    return-object v0
.end method

.method public getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;
    .locals 26

    .prologue
    .line 100
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-wide/from16 v20, v6

    const/16 v22, 0x0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_2

    .line 103
    move-wide/from16 v20, v4

    const/16 v22, 0x0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_0

    .line 104
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    const/16 v24, -0x1

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-direct/range {v20 .. v25}, Lcom/music/AlbumArt;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v9, v20

    .line 105
    move-object/from16 v20, v9

    if-eqz v20, :cond_0

    .line 106
    move-object/from16 v20, v9

    move-object/from16 v2, v20

    .line 146
    :goto_0
    return-object v2

    .line 109
    :cond_0
    move/from16 v20, v8

    if-eqz v20, :cond_1

    .line 110
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Lcom/music/AlbumArt;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v2, v20

    goto :goto_0

    .line 112
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v2, v20

    goto :goto_0

    .line 115
    :cond_2
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v9, v20

    .line 116
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/music/AlbumArt;->sArtworkUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    move-wide/from16 v21, v6

    invoke-static/range {v20 .. v22}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v10, v20

    .line 117
    move-object/from16 v20, v10

    if-eqz v20, :cond_9

    .line 118
    const/16 v20, 0x0

    move-object/from16 v11, v20

    .line 120
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    :try_start_0
    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v11, v20

    .line 121
    move-object/from16 v20, v11

    const/16 v21, 0x0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/music/AlbumArt;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    move-object/from16 v14, v20

    .line 138
    move-object/from16 v20, v11

    if-eqz v20, :cond_3

    .line 139
    move-object/from16 v20, v11

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    move-object/from16 v20, v14

    move-object/from16 v2, v20

    goto :goto_0

    :catch_0
    move-exception v20

    move-object/from16 v18, v20

    goto :goto_1

    :catch_1
    move-exception v20

    move-object/from16 v16, v20

    .line 124
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    :try_start_2
    invoke-direct/range {v20 .. v25}, Lcom/music/AlbumArt;->getArtworkFromFile(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v17, v20

    .line 125
    move-object/from16 v20, v17

    if-eqz v20, :cond_7

    .line 126
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v20

    if-nez v20, :cond_5

    .line 127
    move-object/from16 v20, v17

    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    move-object/from16 v17, v20

    .line 128
    move-object/from16 v20, v17

    if-nez v20, :cond_5

    move/from16 v20, v8

    if-eqz v20, :cond_5

    .line 129
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v21}, Lcom/music/AlbumArt;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v20

    move-object/from16 v14, v20

    .line 138
    move-object/from16 v20, v11

    if-eqz v20, :cond_4

    .line 139
    move-object/from16 v20, v11

    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_2
    move-object/from16 v20, v14

    move-object/from16 v2, v20

    goto/16 :goto_0

    :catch_2
    move-exception v20

    move-object/from16 v18, v20

    goto :goto_2

    .line 135
    :cond_5
    :goto_3
    move-object/from16 v20, v17

    move-object/from16 v14, v20

    .line 138
    move-object/from16 v20, v11

    if-eqz v20, :cond_6

    .line 139
    move-object/from16 v20, v11

    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :goto_4
    move-object/from16 v20, v14

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 132
    :cond_7
    move/from16 v20, v8

    if-eqz v20, :cond_5

    .line 133
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    :try_start_5
    invoke-direct/range {v20 .. v21}, Lcom/music/AlbumArt;->getDefaultArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v20

    move-object/from16 v17, v20

    goto :goto_3

    .line 139
    :catch_3
    move-exception v20

    move-object/from16 v18, v20

    goto :goto_4

    :catchall_0
    move-exception v20

    move-object/from16 v12, v20

    .line 138
    move-object/from16 v20, v11

    if-eqz v20, :cond_8

    .line 139
    move-object/from16 v20, v11

    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_8
    :goto_5
    move-object/from16 v20, v12

    throw v20

    :catch_4
    move-exception v20

    move-object/from16 v18, v20

    goto :goto_5

    .line 146
    :cond_9
    const/16 v20, 0x0

    move-object/from16 v2, v20

    goto/16 :goto_0
.end method

.method public updateInfo()V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 71
    move-object/from16 v0, p0

    move-object v9, v0

    iget-object v9, v9, Lcom/music/AlbumArt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "external"

    invoke-static {v10}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    const-string v14, "album_id"

    aput-object v14, v12, v13

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    move-object v1, v9

    .line 72
    move-object v9, v0

    iget-object v9, v9, Lcom/music/AlbumArt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "id"

    const/4 v11, 0x0

    int-to-long v11, v11

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    move-wide v2, v9

    .line 73
    move-object v9, v1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 75
    move-object v9, v1

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-long v9, v9

    move-wide v4, v9

    .line 76
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/music/AlbumArt;->mContext:Landroid/content/Context;

    move-wide v11, v2

    move-wide v13, v4

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/music/AlbumArt;->getArtwork(Landroid/content/Context;JJZ)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v6, v9

    .line 77
    move-object v9, v6

    if-nez v9, :cond_0

    .line 78
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/music/AlbumArt;->mContext:Landroid/content/Context;

    move-wide v11, v2

    const/4 v13, -0x1

    int-to-long v13, v13

    invoke-virtual/range {v9 .. v14}, Lcom/music/AlbumArt;->getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v6, v9

    .line 81
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/music/AlbumArt;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "hidealbumart"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    move v7, v9

    .line 82
    move v9, v7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 83
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/music/AlbumArt;->setVisibility(I)V

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    move-object v9, v6

    if-eqz v9, :cond_1

    .line 86
    move-object v9, v0

    move-object v10, v6

    invoke-virtual {v9, v10}, Lcom/music/AlbumArt;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/music/AlbumArt;->setVisibility(I)V

    goto :goto_0
.end method
