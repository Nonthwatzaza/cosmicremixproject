.class public final Lwanam/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwanam/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RotarySelector:[I

.field public static final RotarySelector_orientation:I = 0x0

.field public static final SequenceView:[I

.field public static final SequenceView_layout_maxHeight:I = 0x0

.field public static final SlidingTab:[I

.field public static final SlidingTab_orientation:I = 0x0

.field public static final SweepBar:[I

.field public static final SweepBar_leftDrawable:I = 0x2

.field public static final SweepBar_leftText:I = 0x0

.field public static final SweepBar_rightDrawable:I = 0x3

.field public static final SweepBar_rightText:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x5010000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 659
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lwanam/R$styleable;->RotarySelector:[I

    .line 689
    new-array v0, v3, [I

    const v1, 0x5010005

    aput v1, v0, v2

    sput-object v0, Lwanam/R$styleable;->SequenceView:[I

    .line 718
    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lwanam/R$styleable;->SlidingTab:[I

    .line 756
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lwanam/R$styleable;->SweepBar:[I

    return-void

    :array_0
    .array-data 4
        0x5010001
        0x5010002
        0x5010003
        0x5010004
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
