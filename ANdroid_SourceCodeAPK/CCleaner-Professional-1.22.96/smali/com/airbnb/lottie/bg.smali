.class final Lcom/airbnb/lottie/bg;
.super Lcom/airbnb/lottie/as;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/as",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field f:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/av;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p6}, Lcom/airbnb/lottie/as;-><init>(Lcom/airbnb/lottie/av;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 18
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/av;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;B)V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p6}, Lcom/airbnb/lottie/bg;-><init>(Lcom/airbnb/lottie/av;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/bg;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/airbnb/lottie/bg;->f:Landroid/graphics/Path;

    return-object p1
.end method
