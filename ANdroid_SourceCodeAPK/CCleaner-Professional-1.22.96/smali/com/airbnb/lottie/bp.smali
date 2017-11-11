.class final Lcom/airbnb/lottie/bp;
.super Lcom/airbnb/lottie/at;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/at",
        "<",
        "Lcom/airbnb/lottie/bq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/as",
            "<",
            "Lcom/airbnb/lottie/bq;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/at;-><init>(Ljava/util/List;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/airbnb/lottie/as;F)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 7
    .line 1013
    iget-object v0, p1, Lcom/airbnb/lottie/as;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/airbnb/lottie/as;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1014
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing values for keyframe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_1
    iget-object v0, p1, Lcom/airbnb/lottie/as;->a:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/bq;

    .line 1017
    iget-object v1, p1, Lcom/airbnb/lottie/as;->b:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/bq;

    .line 1018
    new-instance v2, Lcom/airbnb/lottie/bq;

    .line 2019
    iget v3, v0, Lcom/airbnb/lottie/bq;->a:F

    .line 3019
    iget v4, v1, Lcom/airbnb/lottie/bq;->a:F

    .line 3042
    sub-float/2addr v4, v3

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 4023
    iget v0, v0, Lcom/airbnb/lottie/bq;->b:F

    .line 5023
    iget v1, v1, Lcom/airbnb/lottie/bq;->b:F

    .line 5042
    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 1020
    invoke-direct {v2, v3, v0}, Lcom/airbnb/lottie/bq;-><init>(FF)V

    .line 7
    return-object v2
.end method
