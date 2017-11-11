.class final Lcom/airbnb/lottie/ce;
.super Lcom/airbnb/lottie/p;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/airbnb/lottie/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/at",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/o;Lcom/airbnb/lottie/by;)V
    .locals 9

    .prologue
    .line 14
    .line 1137
    iget-object v0, p3, Lcom/airbnb/lottie/by;->g:Lcom/airbnb/lottie/by$b;

    .line 14
    invoke-virtual {v0}, Lcom/airbnb/lottie/by$b;->a()Landroid/graphics/Paint$Cap;

    move-result-object v3

    .line 1141
    iget-object v0, p3, Lcom/airbnb/lottie/by;->h:Lcom/airbnb/lottie/by$c;

    .line 15
    invoke-virtual {v0}, Lcom/airbnb/lottie/by$c;->a()Landroid/graphics/Paint$Join;

    move-result-object v4

    .line 2121
    iget-object v5, p3, Lcom/airbnb/lottie/by;->e:Lcom/airbnb/lottie/d;

    .line 2125
    iget-object v6, p3, Lcom/airbnb/lottie/by;->f:Lcom/airbnb/lottie/b;

    .line 2129
    iget-object v7, p3, Lcom/airbnb/lottie/by;->c:Ljava/util/List;

    .line 2133
    iget-object v8, p3, Lcom/airbnb/lottie/by;->b:Lcom/airbnb/lottie/b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/p;-><init>(Lcom/airbnb/lottie/aw;Lcom/airbnb/lottie/o;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lcom/airbnb/lottie/d;Lcom/airbnb/lottie/b;Ljava/util/List;Lcom/airbnb/lottie/b;)V

    .line 3113
    iget-object v0, p3, Lcom/airbnb/lottie/by;->a:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/airbnb/lottie/ce;->b:Ljava/lang/String;

    .line 3117
    iget-object v0, p3, Lcom/airbnb/lottie/by;->d:Lcom/airbnb/lottie/a;

    .line 18
    invoke-virtual {v0}, Lcom/airbnb/lottie/a;->a()Lcom/airbnb/lottie/at;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/ce;->c:Lcom/airbnb/lottie/at;

    .line 19
    iget-object v0, p0, Lcom/airbnb/lottie/ce;->c:Lcom/airbnb/lottie/at;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/at;->a(Lcom/airbnb/lottie/n$a;)V

    .line 20
    iget-object v0, p0, Lcom/airbnb/lottie/ce;->c:Lcom/airbnb/lottie/at;

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/o;->a(Lcom/airbnb/lottie/n;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/airbnb/lottie/ce;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/airbnb/lottie/ce;->c:Lcom/airbnb/lottie/at;

    invoke-virtual {v0}, Lcom/airbnb/lottie/at;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/p;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 32
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/ce;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 27
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/lottie/ce;->b:Ljava/lang/String;

    return-object v0
.end method
