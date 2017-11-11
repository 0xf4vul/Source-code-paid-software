.class public final Lcom/piriform/ccleaner/k/a/h;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/a/a/d;",
        ">;",
        "Ljava/lang/Float;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/piriform/ccleaner/core/e;"
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/k/a/a/b;

.field private b:F

.field private c:F


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/k/a/a/b;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/piriform/ccleaner/k/a/h;->a:Lcom/piriform/ccleaner/k/a/a/b;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 4

    .prologue
    .line 94
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 95
    iget v1, p0, Lcom/piriform/ccleaner/k/a/h;->b:F

    iget v2, p0, Lcom/piriform/ccleaner/k/a/h;->c:F

    iget v3, p0, Lcom/piriform/ccleaner/k/a/h;->b:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 96
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/k/a/h;->publishProgress([Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 12
    check-cast p1, [Ljava/util/List;

    .line 2028
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2029
    if-nez v0, :cond_0

    .line 2030
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2032
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    .line 2034
    aget-object v6, p1, v3

    .line 2070
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 2071
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->e()V

    goto :goto_0

    .line 2037
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v4, v3

    .line 2038
    :goto_1
    if-ge v4, v7, :cond_4

    .line 2039
    int-to-float v0, v4

    int-to-float v1, v7

    div-float/2addr v0, v1

    iput v0, p0, Lcom/piriform/ccleaner/k/a/h;->b:F

    .line 2040
    int-to-float v0, v4

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    int-to-float v1, v7

    div-float/2addr v0, v1

    iput v0, p0, Lcom/piriform/ccleaner/k/a/h;->c:F

    .line 2042
    new-array v0, v2, [Ljava/lang/Float;

    iget v1, p0, Lcom/piriform/ccleaner/k/a/h;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/k/a/h;->publishProgress([Ljava/lang/Object;)V

    .line 2044
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 3066
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->n()Lcom/piriform/ccleaner/a/a/d$c;

    move-result-object v1

    sget-object v8, Lcom/piriform/ccleaner/a/a/d$c;->d:Lcom/piriform/ccleaner/a/a/d$c;

    if-ne v1, v8, :cond_3

    move v1, v2

    .line 2045
    :goto_2
    if-nez v1, :cond_2

    .line 4060
    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/core/e;)V

    .line 4061
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->d()V

    .line 4062
    invoke-interface {v0, v9}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/core/e;)V

    .line 2049
    :cond_2
    invoke-virtual {p0}, Lcom/piriform/ccleaner/k/a/h;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2052
    new-array v0, v2, [Ljava/lang/Float;

    iget v1, p0, Lcom/piriform/ccleaner/k/a/h;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/k/a/h;->publishProgress([Ljava/lang/Object;)V

    .line 2038
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    move v1, v3

    .line 3066
    goto :goto_2

    .line 2055
    :cond_4
    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    .line 12
    return-object v9
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 12
    .line 1087
    invoke-virtual {p0}, Lcom/piriform/ccleaner/k/a/h;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/piriform/ccleaner/k/a/h;->a:Lcom/piriform/ccleaner/k/a/a/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/k/a/a/b;->b()V

    .line 12
    :cond_0
    return-void
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 12
    check-cast p1, [Ljava/lang/Float;

    .line 1077
    invoke-virtual {p0}, Lcom/piriform/ccleaner/k/a/h;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1082
    iget-object v1, p0, Lcom/piriform/ccleaner/k/a/h;->a:Lcom/piriform/ccleaner/k/a/a/b;

    invoke-interface {v1, v0}, Lcom/piriform/ccleaner/k/a/a/b;->a(F)V

    .line 12
    :cond_0
    return-void
.end method
