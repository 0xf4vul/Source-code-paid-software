.class public final Lcom/piriform/ccleaner/k/a/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/core/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/piriform/ccleaner/a/a/d;",
        ">;",
        "Lcom/piriform/ccleaner/k/a/b;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/piriform/ccleaner/core/c;"
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/k/a/a/a;

.field private final b:Lcom/piriform/ccleaner/b/e;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:F

.field private volatile f:Lcom/piriform/ccleaner/a/a/d;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/k/a/a/a;Lcom/piriform/ccleaner/b/e;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/k/a/c;->c:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/piriform/ccleaner/k/a/c;->a:Lcom/piriform/ccleaner/k/a/a/a;

    .line 26
    iput-object p2, p0, Lcom/piriform/ccleaner/k/a/c;->b:Lcom/piriform/ccleaner/b/e;

    .line 27
    return-void
.end method

.method private varargs a([Ljava/util/List;)Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/a/a/d;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1068
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1069
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 42
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/piriform/ccleaner/k/a/b;

    const/4 v2, 0x0

    new-instance v4, Lcom/piriform/ccleaner/k/a/j;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/piriform/ccleaner/k/a/j;-><init>(F)V

    aput-object v4, v1, v2

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/k/a/c;->publishProgress([Ljava/lang/Object;)V

    .line 43
    const/4 v1, 0x0

    aget-object v4, p1, v1

    .line 1080
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1081
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/a/a/d;

    .line 1082
    instance-of v1, v1, Lcom/piriform/ccleaner/a/a/u;

    if-eqz v1, :cond_5

    .line 1083
    add-int/lit8 v1, v2, -0x1

    :goto_1
    move v2, v1

    .line 1085
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 2074
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/piriform/ccleaner/a/a/d;

    .line 2075
    invoke-interface {v1}, Lcom/piriform/ccleaner/a/a/d;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 60
    :catch_0
    move-exception v1

    .line 61
    iget-object v2, p0, Lcom/piriform/ccleaner/k/a/c;->b:Lcom/piriform/ccleaner/b/e;

    const-string/jumbo v3, "Ignored exception while performing analysis"

    invoke-interface {v2, v3, v1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 64
    return-object v8

    .line 46
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/piriform/ccleaner/k/a/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/piriform/ccleaner/k/a/c;->e:F

    move v1, v3

    .line 48
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 49
    int-to-float v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    int-to-float v6, v2

    div-float/2addr v5, v6

    .line 50
    iget-object v6, p0, Lcom/piriform/ccleaner/k/a/c;->c:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 53
    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0}, Lcom/piriform/ccleaner/k/a/c;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    iput v3, p0, Lcom/piriform/ccleaner/k/a/c;->d:I

    .line 55
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2092
    :try_start_2
    iput-object v2, p0, Lcom/piriform/ccleaner/k/a/c;->f:Lcom/piriform/ccleaner/a/a/d;

    .line 2093
    invoke-interface {v2, p0}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/core/c;)V

    .line 2094
    invoke-interface {v2}, Lcom/piriform/ccleaner/a/a/d;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2100
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v2, v1}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/core/c;)V

    .line 57
    :goto_5
    iget-object v1, p0, Lcom/piriform/ccleaner/k/a/c;->c:Ljava/util/List;

    iget v5, p0, Lcom/piriform/ccleaner/k/a/c;->d:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/piriform/ccleaner/k/a/c;->e:F

    .line 58
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/piriform/ccleaner/k/a/b;

    const/4 v5, 0x0

    new-instance v6, Lcom/piriform/ccleaner/k/a/i;

    iget v7, p0, Lcom/piriform/ccleaner/k/a/c;->e:F

    invoke-direct {v6, v2, v7}, Lcom/piriform/ccleaner/k/a/i;-><init>(Lcom/piriform/ccleaner/a/a/d;F)V

    aput-object v6, v1, v5

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/k/a/c;->publishProgress([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 53
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 2095
    :catch_1
    move-exception v1

    .line 2096
    :try_start_4
    sget v5, Lcom/piriform/ccleaner/a/a/d$a;->b:I

    invoke-interface {v2, v5}, Lcom/piriform/ccleaner/a/a/d;->a(I)V

    .line 2098
    iget-object v5, p0, Lcom/piriform/ccleaner/k/a/c;->b:Lcom/piriform/ccleaner/b/e;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Ignored exception while performing analysis: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/piriform/ccleaner/a/h;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2100
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v2, v1}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/core/c;)V

    goto :goto_5

    :catchall_0
    move-exception v1

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/piriform/ccleaner/a/a/d;->a(Lcom/piriform/ccleaner/core/c;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    move v1, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 31
    iget-object v0, p0, Lcom/piriform/ccleaner/k/a/c;->f:Lcom/piriform/ccleaner/a/a/d;

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->a()V

    .line 35
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 4

    .prologue
    .line 120
    iget v1, p0, Lcom/piriform/ccleaner/k/a/c;->e:F

    int-to-float v0, p1

    int-to-float v2, p2

    div-float v2, v0, v2

    iget-object v0, p0, Lcom/piriform/ccleaner/k/a/c;->c:Ljava/util/List;

    iget v3, p0, Lcom/piriform/ccleaner/k/a/c;->d:I

    .line 121
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v3, p0, Lcom/piriform/ccleaner/k/a/c;->e:F

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 122
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/piriform/ccleaner/k/a/b;

    const/4 v2, 0x0

    new-instance v3, Lcom/piriform/ccleaner/k/a/j;

    invoke-direct {v3, v0}, Lcom/piriform/ccleaner/k/a/j;-><init>(F)V

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/k/a/c;->publishProgress([Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/piriform/ccleaner/k/a/b;

    const/4 v1, 0x0

    new-instance v2, Lcom/piriform/ccleaner/k/a/a;

    invoke-direct {v2, p1}, Lcom/piriform/ccleaner/k/a/a;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/k/a/c;->publishProgress([Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    check-cast p1, [Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/piriform/ccleaner/k/a/c;->a([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 15
    .line 2127
    invoke-virtual {p0}, Lcom/piriform/ccleaner/k/a/c;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2128
    iget-object v0, p0, Lcom/piriform/ccleaner/k/a/c;->a:Lcom/piriform/ccleaner/k/a/a/a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/k/a/a/a;->b()V

    .line 15
    :cond_0
    return-void
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 15
    check-cast p1, [Lcom/piriform/ccleaner/k/a/b;

    .line 2106
    invoke-virtual {p0}, Lcom/piriform/ccleaner/k/a/c;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2109
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 2110
    iget-object v1, p0, Lcom/piriform/ccleaner/k/a/c;->a:Lcom/piriform/ccleaner/k/a/a/a;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/k/a/b;->a(Lcom/piriform/ccleaner/k/a/a/a;)V

    .line 15
    :cond_0
    return-void
.end method
