.class public final Lcom/piriform/ccleaner/cleaning/advanced/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/cleaning/advanced/ai;


# instance fields
.field private final converter:Lcom/piriform/ccleaner/cleaning/advanced/n;

.field private final deliveryScheduler:Lf/g;

.field private final ioScheduler:Lf/g;

.field private final stepsDataSource:Lcom/piriform/ccleaner/cleaning/advanced/ah;


# direct methods
.method public constructor <init>(Lf/g;Lf/g;Lcom/piriform/ccleaner/cleaning/advanced/ah;Lcom/piriform/ccleaner/cleaning/advanced/n;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/w;->ioScheduler:Lf/g;

    .line 26
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/w;->deliveryScheduler:Lf/g;

    .line 27
    iput-object p3, p0, Lcom/piriform/ccleaner/cleaning/advanced/w;->stepsDataSource:Lcom/piriform/ccleaner/cleaning/advanced/ah;

    .line 28
    iput-object p4, p0, Lcom/piriform/ccleaner/cleaning/advanced/w;->converter:Lcom/piriform/ccleaner/cleaning/advanced/n;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/piriform/ccleaner/cleaning/advanced/w;)Lcom/piriform/ccleaner/cleaning/advanced/n;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/w;->converter:Lcom/piriform/ccleaner/cleaning/advanced/n;

    return-object v0
.end method

.method private toNodeActions()Lf/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/c/e",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/StepValue;",
            ">;",
            "Lcom/piriform/ccleaner/cleaning/advanced/ab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/w$1;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/cleaning/advanced/w$1;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/w;)V

    return-object v0
.end method


# virtual methods
.method public final clearFailures(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/w;->stepsDataSource:Lcom/piriform/ccleaner/cleaning/advanced/ah;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/ah;->deleteLogsByUserId(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public final fetch()Lf/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/ab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/w;->stepsDataSource:Lcom/piriform/ccleaner/cleaning/advanced/ah;

    invoke-interface {v0}, Lcom/piriform/ccleaner/cleaning/advanced/ah;->remoteStepValues()Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/w;->stepsDataSource:Lcom/piriform/ccleaner/cleaning/advanced/ah;

    .line 34
    invoke-interface {v1}, Lcom/piriform/ccleaner/cleaning/advanced/ah;->defaultStepValues()Lf/d;

    move-result-object v1

    .line 9059
    new-instance v2, Lf/d/a/z;

    new-instance v3, Lf/d/a/z$2;

    invoke-direct {v3, v1}, Lf/d/a/z$2;-><init>(Lf/d;)V

    invoke-direct {v2, v3}, Lf/d/a/z;-><init>(Lf/c/e;)V

    .line 9018
    invoke-virtual {v0, v2}, Lf/d;->a(Lf/d$b;)Lf/d;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/w;->stepsDataSource:Lcom/piriform/ccleaner/cleaning/advanced/ah;

    .line 35
    invoke-interface {v1}, Lcom/piriform/ccleaner/cleaning/advanced/ah;->defaultStepValues()Lf/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->b(Lf/d;)Lf/d;

    move-result-object v0

    .line 36
    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/advanced/w;->toNodeActions()Lf/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->c(Lf/c/e;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/w;->ioScheduler:Lf/g;

    .line 37
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/w;->deliveryScheduler:Lf/g;

    .line 38
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v0

    return-object v0
.end method

.method public final update(Ljava/util/List;Ljava/lang/String;Lcom/piriform/ccleaner/cleaning/advanced/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/cleaning/advanced/y;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/piriform/ccleaner/cleaning/advanced/u;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/w;->stepsDataSource:Lcom/piriform/ccleaner/cleaning/advanced/ah;

    invoke-interface {v0, p2}, Lcom/piriform/ccleaner/cleaning/advanced/ah;->deleteLogsByUserId(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/w;->stepsDataSource:Lcom/piriform/ccleaner/cleaning/advanced/ah;

    invoke-interface {v0, p1, p2, p3}, Lcom/piriform/ccleaner/cleaning/advanced/ah;->insertLogsByUserId(Ljava/util/List;Ljava/lang/String;Lcom/piriform/ccleaner/cleaning/advanced/u;)V

    .line 54
    return-void
.end method
