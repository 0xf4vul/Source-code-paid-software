.class final Lcom/airbnb/lottie/cc;
.super Lcom/airbnb/lottie/at;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/at",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Landroid/graphics/PointF;

.field private final e:Lcom/airbnb/lottie/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/at",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/airbnb/lottie/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/at",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/at;Lcom/airbnb/lottie/at;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/at",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/airbnb/lottie/at",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/lottie/at;-><init>(Ljava/util/List;)V

    .line 8
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/cc;->d:Landroid/graphics/PointF;

    .line 16
    iput-object p1, p0, Lcom/airbnb/lottie/cc;->e:Lcom/airbnb/lottie/at;

    .line 17
    iput-object p2, p0, Lcom/airbnb/lottie/cc;->f:Lcom/airbnb/lottie/at;

    .line 18
    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    .line 2034
    iget-object v0, p0, Lcom/airbnb/lottie/cc;->d:Landroid/graphics/PointF;

    .line 7
    return-object v0
.end method

.method final bridge synthetic a(Lcom/airbnb/lottie/as;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    .line 1034
    iget-object v0, p0, Lcom/airbnb/lottie/cc;->d:Landroid/graphics/PointF;

    .line 7
    return-object v0
.end method

.method final a(F)V
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/cc;->e:Lcom/airbnb/lottie/at;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/at;->a(F)V

    .line 22
    iget-object v0, p0, Lcom/airbnb/lottie/cc;->f:Lcom/airbnb/lottie/at;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/at;->a(F)V

    .line 23
    iget-object v1, p0, Lcom/airbnb/lottie/cc;->d:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/airbnb/lottie/cc;->e:Lcom/airbnb/lottie/at;

    invoke-virtual {v0}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v0, p0, Lcom/airbnb/lottie/cc;->f:Lcom/airbnb/lottie/at;

    invoke-virtual {v0}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 24
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/cc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/cc;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/n$a;

    invoke-interface {v0}, Lcom/airbnb/lottie/n$a;->a()V

    .line 24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
