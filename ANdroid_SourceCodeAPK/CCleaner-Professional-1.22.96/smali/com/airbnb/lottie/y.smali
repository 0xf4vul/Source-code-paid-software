.class final Lcom/airbnb/lottie/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/graphics/PointF;

.field final b:Landroid/graphics/PointF;

.field final c:Landroid/graphics/PointF;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/y;->a:Landroid/graphics/PointF;

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/y;->b:Landroid/graphics/PointF;

    .line 13
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/y;->c:Landroid/graphics/PointF;

    .line 14
    return-void
.end method

.method constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/airbnb/lottie/y;->a:Landroid/graphics/PointF;

    .line 18
    iput-object p2, p0, Lcom/airbnb/lottie/y;->b:Landroid/graphics/PointF;

    .line 19
    iput-object p3, p0, Lcom/airbnb/lottie/y;->c:Landroid/graphics/PointF;

    .line 20
    return-void
.end method
