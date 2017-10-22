.class public final enum Lcom/zam/viewpager/transformer/SetTransformer$TransformType;
.super Ljava/lang/Enum;
.source "SetTransformer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zam/viewpager/transformer/SetTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransformType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zam/viewpager/transformer/SetTransformer$TransformType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Accordi:Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

.field public static final enum Default:Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

.field private static final synthetic ENUM$VALUES:[Lcom/zam/viewpager/transformer/SetTransformer$TransformType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    const-string v1, "Accordi"

    invoke-direct {v0, v1, v2}, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;->Accordi:Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    .line 19
    new-instance v0, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    const-string v1, "Default"

    invoke-direct {v0, v1, v3}, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;->Default:Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    sget-object v1, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;->Accordi:Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;->Default:Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;->ENUM$VALUES:[Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zam/viewpager/transformer/SetTransformer$TransformType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    return-object v0
.end method

.method public static values()[Lcom/zam/viewpager/transformer/SetTransformer$TransformType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;->ENUM$VALUES:[Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    array-length v1, v0

    new-array v2, v1, [Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
