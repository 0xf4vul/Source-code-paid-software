.class abstract Lcom/airbnb/lottie/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/n$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:F

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/as",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field private e:Lcom/airbnb/lottie/as;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/as",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/airbnb/lottie/as",
            "<TK;>;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->a:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/n;->b:Z

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/n;->c:F

    .line 28
    iput-object p1, p0, Lcom/airbnb/lottie/n;->d:Ljava/util/List;

    .line 29
    return-void
.end method

.method private b()Lcom/airbnb/lottie/as;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/as",
            "<TK;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/airbnb/lottie/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There are no keyframes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/n;->e:Lcom/airbnb/lottie/as;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/n;->e:Lcom/airbnb/lottie/as;

    iget v2, p0, Lcom/airbnb/lottie/n;->c:F

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/as;->a(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/airbnb/lottie/n;->e:Lcom/airbnb/lottie/as;

    .line 77
    :goto_0
    return-object v0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/as;

    .line 67
    iget v2, p0, Lcom/airbnb/lottie/n;->c:F

    invoke-virtual {v0}, Lcom/airbnb/lottie/as;->a()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 68
    iput-object v0, p0, Lcom/airbnb/lottie/n;->e:Lcom/airbnb/lottie/as;

    goto :goto_0

    .line 72
    :cond_2
    :goto_1
    iget v2, p0, Lcom/airbnb/lottie/n;->c:F

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/as;->a(F)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/airbnb/lottie/n;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 73
    iget-object v0, p0, Lcom/airbnb/lottie/n;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/as;

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_3
    iput-object v0, p0, Lcom/airbnb/lottie/n;->e:Lcom/airbnb/lottie/as;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->b()Lcom/airbnb/lottie/as;

    move-result-object v2

    .line 2085
    iget-boolean v1, p0, Lcom/airbnb/lottie/n;->b:Z

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/airbnb/lottie/n;->a(Lcom/airbnb/lottie/as;F)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2089
    :cond_1
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->b()Lcom/airbnb/lottie/as;

    move-result-object v3

    .line 3075
    iget-object v1, v3, Lcom/airbnb/lottie/as;->c:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 2090
    :goto_1
    if-nez v1, :cond_0

    .line 2093
    iget v0, p0, Lcom/airbnb/lottie/n;->c:F

    invoke-virtual {v3}, Lcom/airbnb/lottie/as;->a()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2094
    invoke-virtual {v3}, Lcom/airbnb/lottie/as;->b()F

    move-result v1

    invoke-virtual {v3}, Lcom/airbnb/lottie/as;->a()F

    move-result v4

    sub-float/2addr v1, v4

    .line 2096
    iget-object v3, v3, Lcom/airbnb/lottie/as;->c:Landroid/view/animation/Interpolator;

    div-float/2addr v0, v1

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0

    .line 3075
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method abstract a(Lcom/airbnb/lottie/as;F)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/as",
            "<TK;>;F)TA;"
        }
    .end annotation
.end method

.method a(F)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 40
    .line 1101
    iget-object v0, p0, Lcom/airbnb/lottie/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 40
    :goto_0
    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    move p1, v1

    .line 46
    :cond_0
    :goto_1
    iget v0, p0, Lcom/airbnb/lottie/n;->c:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_5

    .line 54
    :cond_1
    return-void

    .line 1101
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/as;

    invoke-virtual {v0}, Lcom/airbnb/lottie/as;->a()F

    move-result v0

    goto :goto_0

    .line 1106
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 42
    :goto_2
    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    move p1, v2

    .line 43
    goto :goto_1

    .line 1106
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/n;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/airbnb/lottie/n;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/as;

    invoke-virtual {v0}, Lcom/airbnb/lottie/as;->b()F

    move-result v0

    goto :goto_2

    .line 49
    :cond_5
    iput p1, p0, Lcom/airbnb/lottie/n;->c:F

    move v1, v3

    .line 51
    :goto_3
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/n$a;

    invoke-interface {v0}, Lcom/airbnb/lottie/n$a;->a()V

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3
.end method

.method a(Lcom/airbnb/lottie/n$a;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method
