.class public Lcom/zam/viewpager/transformer/SetTransformer;
.super Ljava/lang/Object;
.source "SetTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zam/viewpager/transformer/SetTransformer$TransformType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$zam$viewpager$transformer$SetTransformer$TransformType:[I


# instance fields
.field mContext:Landroid/content/Context;

.field private final mTransformType:Lcom/zam/viewpager/transformer/SetTransformer$TransformType;


# direct methods
.method static synthetic $SWITCH_TABLE$com$zam$viewpager$transformer$SetTransformer$TransformType()[I
    .locals 3

    .prologue
    .line 15
    sget-object v0, Lcom/zam/viewpager/transformer/SetTransformer;->$SWITCH_TABLE$com$zam$viewpager$transformer$SetTransformer$TransformType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;->values()[Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;->Accordi:Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    invoke-virtual {v1}, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;->Default:Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    invoke-virtual {v1}, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/zam/viewpager/transformer/SetTransformer;->$SWITCH_TABLE$com$zam$viewpager$transformer$SetTransformer$TransformType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/zam/viewpager/transformer/SetTransformer$TransformType;)V
    .locals 0
    .param p1, "transformType"    # Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/zam/viewpager/transformer/SetTransformer;->mTransformType:Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    .line 27
    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    .line 35
    invoke-static {}, Lcom/zam/viewpager/transformer/SetTransformer;->$SWITCH_TABLE$com$zam$viewpager$transformer$SetTransformer$TransformType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/zam/viewpager/transformer/SetTransformer;->mTransformType:Lcom/zam/viewpager/transformer/SetTransformer$TransformType;

    invoke-virtual {v1}, Lcom/zam/viewpager/transformer/SetTransformer$TransformType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 45
    :pswitch_0
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
