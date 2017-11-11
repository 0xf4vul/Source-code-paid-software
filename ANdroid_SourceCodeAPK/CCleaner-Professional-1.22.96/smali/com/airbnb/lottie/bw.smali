.class final Lcom/airbnb/lottie/bw;
.super Lcom/airbnb/lottie/o;
.source "SourceFile"


# instance fields
.field private final g:Lcom/airbnb/lottie/x;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/au;)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/o;-><init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/au;)V

    .line 18
    new-instance v0, Lcom/airbnb/lottie/bu;

    .line 1101
    iget-object v1, p2, Lcom/airbnb/lottie/au;->b:Ljava/lang/String;

    .line 1133
    iget-object v2, p2, Lcom/airbnb/lottie/au;->a:Ljava/util/List;

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/bu;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 19
    new-instance v1, Lcom/airbnb/lottie/x;

    invoke-direct {v1, p1, p0, v0}, Lcom/airbnb/lottie/x;-><init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/o;Lcom/airbnb/lottie/bu;)V

    iput-object v1, p0, Lcom/airbnb/lottie/bw;->g:Lcom/airbnb/lottie/x;

    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/bw;->g:Lcom/airbnb/lottie/x;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/x;->a(Ljava/util/List;Ljava/util/List;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/o;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 29
    iget-object v0, p0, Lcom/airbnb/lottie/bw;->g:Lcom/airbnb/lottie/x;

    iget-object v1, p0, Lcom/airbnb/lottie/bw;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1}, Lcom/airbnb/lottie/x;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    .line 30
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/lottie/bw;->g:Lcom/airbnb/lottie/x;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/x;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    .line 35
    return-void
.end method

.method final b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/bw;->g:Lcom/airbnb/lottie/x;

    invoke-virtual {v0, p1, p2, p3}, Lcom/airbnb/lottie/x;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 25
    return-void
.end method
