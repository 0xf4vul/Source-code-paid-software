.class public abstract Lc/a/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lc/a/a/a/i;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Lc/a/a/a/c;

.field protected g:Lc/a/a/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/a/h",
            "<TResult;>;"
        }
    .end annotation
.end field

.field public h:Landroid/content/Context;

.field i:Lc/a/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/a/f",
            "<TResult;>;"
        }
    .end annotation
.end field

.field protected j:Lc/a/a/a/a/b/o;

.field final k:Lc/a/a/a/a/c/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lc/a/a/a/h;

    invoke-direct {v0, p0}, Lc/a/a/a/h;-><init>(Lc/a/a/a/i;)V

    iput-object v0, p0, Lc/a/a/a/i;->g:Lc/a/a/a/h;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lc/a/a/a/a/c/d;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/c/d;

    iput-object v0, p0, Lc/a/a/a/i;->k:Lc/a/a/a/a/c/d;

    .line 47
    return-void
.end method

.method private a(Lc/a/a/a/i;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-direct {p0}, Lc/a/a/a/i;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lc/a/a/a/i;->k:Lc/a/a/a/a/c/d;

    invoke-interface {v1}, Lc/a/a/a/a/c/d;->a()[Ljava/lang/Class;

    move-result-object v2

    .line 165
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    const/4 v0, 0x1

    .line 171
    :cond_0
    return v0

    .line 165
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lc/a/a/a/i;->k:Lc/a/a/a/a/c/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method final a(Landroid/content/Context;Lc/a/a/a/c;Lc/a/a/a/f;Lc/a/a/a/a/b/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/a/a/a/c;",
            "Lc/a/a/a/f",
            "<TResult;>;",
            "Lc/a/a/a/a/b/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    iput-object p2, p0, Lc/a/a/a/i;->f:Lc/a/a/a/c;

    .line 60
    new-instance v0, Lc/a/a/a/d;

    invoke-virtual {p0}, Lc/a/a/a/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lc/a/a/a/i;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lc/a/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lc/a/a/a/i;->i:Lc/a/a/a/f;

    .line 62
    iput-object p4, p0, Lc/a/a/a/i;->j:Lc/a/a/a/a/b/o;

    .line 63
    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c_()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 33
    check-cast p1, Lc/a/a/a/i;

    .line 3145
    invoke-direct {p0, p1}, Lc/a/a/a/i;->a(Lc/a/a/a/i;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3152
    :cond_0
    :goto_0
    return v0

    .line 3147
    :cond_1
    invoke-direct {p1, p0}, Lc/a/a/a/i;->a(Lc/a/a/a/i;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 3148
    goto :goto_0

    .line 3149
    :cond_2
    invoke-direct {p0}, Lc/a/a/a/i;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p1}, Lc/a/a/a/i;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3151
    :cond_3
    invoke-direct {p0}, Lc/a/a/a/i;->e()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p1}, Lc/a/a/a/i;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 3152
    goto :goto_0

    .line 3154
    :cond_4
    const/4 v0, 0x0

    .line 33
    goto :goto_0
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method final j()V
    .locals 5

    .prologue
    .line 69
    iget-object v0, p0, Lc/a/a/a/i;->g:Lc/a/a/a/h;

    iget-object v1, p0, Lc/a/a/a/i;->f:Lc/a/a/a/c;

    .line 1500
    iget-object v1, v1, Lc/a/a/a/c;->c:Ljava/util/concurrent/ExecutorService;

    .line 69
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 2042
    new-instance v3, Lc/a/a/a/a/c/f$a;

    invoke-direct {v3, v1, v0}, Lc/a/a/a/a/c/f$a;-><init>(Ljava/util/concurrent/Executor;Lc/a/a/a/a/c/f;)V

    .line 2596
    iget v1, v0, Lc/a/a/a/a/c/a;->f:I

    sget v4, Lc/a/a/a/a/c/a$d;->a:I

    if-eq v1, v4, :cond_0

    .line 2597
    sget-object v1, Lc/a/a/a/a/c/a$4;->a:[I

    iget v4, v0, Lc/a/a/a/a/c/a;->f:I

    add-int/lit8 v4, v4, -0x1

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 2609
    :cond_0
    sget v1, Lc/a/a/a/a/c/a$d;->b:I

    iput v1, v0, Lc/a/a/a/a/c/a;->f:I

    .line 2611
    invoke-virtual {v0}, Lc/a/a/a/a/c/a;->b()V

    .line 2613
    iget-object v1, v0, Lc/a/a/a/a/c/a;->d:Lc/a/a/a/a/c/a$e;

    iput-object v2, v1, Lc/a/a/a/a/c/a$e;->b:[Ljava/lang/Object;

    .line 2614
    iget-object v0, v0, Lc/a/a/a/a/c/a;->e:Ljava/util/concurrent/FutureTask;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void

    .line 2599
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2602
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".Fabric"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/a/a/a/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
