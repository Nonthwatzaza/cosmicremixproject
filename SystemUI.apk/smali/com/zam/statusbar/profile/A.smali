.class public Lcom/zam/statusbar/profile/A;
.super Ljava/lang/Object;
.source "A.java"


# static fields
.field public static final DIR:Ljava/lang/String; = "/UI_Editor/fonts/"

.field public static final MY_DATA:Ljava/lang/String; = "UI_Editor/data.json"

.field public static final MY_SHARED:Ljava/lang/String; = "MyStyle"

.field public static final TEMP_BG_BLUR_NAME:Ljava/lang/String; = "UI_Editor/bg_blur.jpg"

.field public static final TEMP_BG_FILE_NAME:Ljava/lang/String; = "UI_Editor/bg.jpg"

.field public static final TEMP_PHOTO_FILE_NAME:Ljava/lang/String; = "/UI_Editor/owner.png"

.field public static c:Ljava/lang/String;

.field public static caHeader:Ljava/lang/String;

.field public static coverBlurUri:Ljava/lang/String;

.field public static coverUri:Ljava/lang/String;

.field public static enableBlur:Ljava/lang/String;

.field public static enableC:Ljava/lang/String;

.field public static enableN:Ljava/lang/String;

.field public static enableQ:Ljava/lang/String;

.field public static final f:Ljava/io/File;

.field public static fontC:Ljava/lang/String;

.field public static fontN:Ljava/lang/String;

.field public static fontQ:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static sizeC:Ljava/lang/String;

.field public static sizeN:Ljava/lang/String;

.field public static sizeQ:Ljava/lang/String;

.field public static typeC:Ljava/lang/String;

.field public static typeN:Ljava/lang/String;

.field public static typeQ:Ljava/lang/String;

.field public static warnaBgEnable:Ljava/lang/String;

.field public static warnaC:Ljava/lang/String;

.field public static warnaN:Ljava/lang/String;

.field public static warnaQ:Ljava/lang/String;

.field public static warnaUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/zam/statusbar/profile/A;->f:Ljava/io/File;

    .line 28
    const-string v0, "ba"

    sput-object v0, Lcom/zam/statusbar/profile/A;->coverUri:Ljava/lang/String;

    .line 29
    const-string v0, "bb"

    sput-object v0, Lcom/zam/statusbar/profile/A;->coverBlurUri:Ljava/lang/String;

    .line 30
    const-string v0, "bc"

    sput-object v0, Lcom/zam/statusbar/profile/A;->warnaBgEnable:Ljava/lang/String;

    .line 31
    const-string v0, "bd"

    sput-object v0, Lcom/zam/statusbar/profile/A;->warnaUri:Ljava/lang/String;

    .line 33
    const-string v0, "a"

    sput-object v0, Lcom/zam/statusbar/profile/A;->enableBlur:Ljava/lang/String;

    .line 34
    const-string v0, "b"

    sput-object v0, Lcom/zam/statusbar/profile/A;->enableN:Ljava/lang/String;

    .line 35
    const-string v0, "c"

    sput-object v0, Lcom/zam/statusbar/profile/A;->enableQ:Ljava/lang/String;

    .line 36
    const-string v0, "d"

    sput-object v0, Lcom/zam/statusbar/profile/A;->typeN:Ljava/lang/String;

    .line 37
    const-string v0, "e"

    sput-object v0, Lcom/zam/statusbar/profile/A;->typeQ:Ljava/lang/String;

    .line 38
    const-string v0, "f"

    sput-object v0, Lcom/zam/statusbar/profile/A;->n:Ljava/lang/String;

    .line 39
    const-string v0, "g"

    sput-object v0, Lcom/zam/statusbar/profile/A;->q:Ljava/lang/String;

    .line 40
    const-string v0, "h"

    sput-object v0, Lcom/zam/statusbar/profile/A;->warnaN:Ljava/lang/String;

    .line 41
    const-string v0, "i"

    sput-object v0, Lcom/zam/statusbar/profile/A;->warnaQ:Ljava/lang/String;

    .line 42
    const-string v0, "j"

    sput-object v0, Lcom/zam/statusbar/profile/A;->sizeN:Ljava/lang/String;

    .line 43
    const-string v0, "k"

    sput-object v0, Lcom/zam/statusbar/profile/A;->sizeQ:Ljava/lang/String;

    .line 44
    const-string v0, "l"

    sput-object v0, Lcom/zam/statusbar/profile/A;->fontN:Ljava/lang/String;

    .line 45
    const-string v0, "m"

    sput-object v0, Lcom/zam/statusbar/profile/A;->fontQ:Ljava/lang/String;

    .line 46
    const-string v0, "n"

    sput-object v0, Lcom/zam/statusbar/profile/A;->caHeader:Ljava/lang/String;

    .line 48
    const-string v0, "o"

    sput-object v0, Lcom/zam/statusbar/profile/A;->enableC:Ljava/lang/String;

    .line 49
    const-string v0, "p"

    sput-object v0, Lcom/zam/statusbar/profile/A;->typeC:Ljava/lang/String;

    .line 50
    const-string v0, "q"

    sput-object v0, Lcom/zam/statusbar/profile/A;->c:Ljava/lang/String;

    .line 51
    const-string v0, "r"

    sput-object v0, Lcom/zam/statusbar/profile/A;->warnaC:Ljava/lang/String;

    .line 52
    const-string v0, "s"

    sput-object v0, Lcom/zam/statusbar/profile/A;->sizeC:Ljava/lang/String;

    .line 53
    const-string v0, "t"

    sput-object v0, Lcom/zam/statusbar/profile/A;->fontC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    return-void
.end method

.method public setDefaultBg(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 96
    const-string v0, "a"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "ba"

    const-string v1, "null"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "bb"

    const-string v1, "null"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "bc"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "bd"

    const-string v1, "#263238"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public setDefaultOwner(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 77
    const-string v0, "b"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "d"

    const-string v1, "[]"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "f"

    const-string v1, "Owner"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "h"

    const-string v1, "#FFFFFF"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "j"

    const-string v1, "18"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "l"

    const-string v1, "font1.ttf"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "n"

    const-string v1, "true"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setDefaultPh(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 104
    const-string v0, "ab"

    const-string v1, "null"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public setDefaultQuote(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 87
    const-string v0, "c"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "e"

    const-string v1, "[]"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "g"

    const-string v1, "....."

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "i"

    const-string v1, "#FFFFFF"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "k"

    const-string v1, "18"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "m"

    const-string v1, "font1.ttf"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setDefaultText1(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 108
    const-string v0, "mMsgtext1"

    const-string v1, "Text1 here.."

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "mSizetext1"

    const-string v1, "18"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "mWarnatext1"

    const-string v1, "#FFFFFF"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "mFonttext1"

    const-string v1, "font1.ttf"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "mCustFonttext1"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "mItalictext1"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "mBoldtext1"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setDefaultText2(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 118
    const-string v0, "mMsgtext2"

    const-string v1, "Text2 here.."

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "mSizetext2"

    const-string v1, "18"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "mWarnatext2"

    const-string v1, "#FFFFFF"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "mFonttext2"

    const-string v1, "font1.ttf"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "mCustFonttext2"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "mItalictext2"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "mBoldtext2"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public setDefaultText3(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 128
    const-string v0, "mMsgtext3"

    const-string v1, "Text3 here.."

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "mSizetext3"

    const-string v1, "18"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "mWarnatext3"

    const-string v1, "#FFFFFF"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "mFonttext3"

    const-string v1, "font1.ttf"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "mCustFonttext3"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "mItalictext3"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "mBoldtext3"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public setDefaultText4(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 138
    const-string v0, "mMsgtext4"

    const-string v1, "Text4 here.."

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "mSizetext4"

    const-string v1, "18"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "mWarnatext4"

    const-string v1, "#FFFFFF"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "mFonttext4"

    const-string v1, "font1.ttf"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "mCustFonttext4"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "mItalictext4"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "mBoldtext4"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public setDefaultText5(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 148
    const-string v0, "mMsgtext5"

    const-string v1, "Text5 here.."

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "mSizetext5"

    const-string v1, "18"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "mWarnatext5"

    const-string v1, "#FFFFFF"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "mFonttext5"

    const-string v1, "font1.ttf"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "mCustFonttext5"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "mItalictext5"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "mBoldtext5"

    const-string v1, "false"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public setDefaultpic1(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 158
    const-string v0, "mpic1"

    const-string v1, "null"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setDefaultpic2(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 161
    const-string v0, "mpic2"

    const-string v1, "null"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setDefaultpic3(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 164
    const-string v0, "mpic3"

    const-string v1, "null"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public setDefaultpic4(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 167
    const-string v0, "mpic4"

    const-string v1, "null"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public setDefaultpic5(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 170
    const-string v0, "mpic5"

    const-string v1, "null"

    invoke-virtual {p0, p1, v0, v1}, Lcom/zam/statusbar/profile/A;->apply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method
