.class public final Lcom/avast/a/b/a/a$e$a;
.super Lcom/google/a/g$a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/g$a",
        "<",
        "Lcom/avast/a/b/a/a$e;",
        "Lcom/avast/a/b/a/a$e$a;",
        ">;",
        "Lcom/avast/a/b/a/a$f;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$o;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/google/a/g$a;-><init>()V

    .line 568
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    .line 486
    return-void
.end method

.method static synthetic g()Lcom/avast/a/b/a/a$e$a;
    .locals 1

    .prologue
    .line 2491
    new-instance v0, Lcom/avast/a/b/a/a$e$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$e$a;-><init>()V

    .line 479
    return-object v0
.end method

.method private h()Lcom/avast/a/b/a/a$e$a;
    .locals 2

    .prologue
    .line 1491
    new-instance v0, Lcom/avast/a/b/a/a$e$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$e$a;-><init>()V

    .line 502
    invoke-direct {p0}, Lcom/avast/a/b/a/a$e$a;->i()Lcom/avast/a/b/a/a$e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/b/a/a$e$a;->a(Lcom/avast/a/b/a/a$e;)Lcom/avast/a/b/a/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method private i()Lcom/avast/a/b/a/a$e;
    .locals 3

    .prologue
    .line 518
    new-instance v0, Lcom/avast/a/b/a/a$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/avast/a/b/a/a$e;-><init>(C)V

    .line 520
    iget v1, p0, Lcom/avast/a/b/a/a$e$a;->b:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 521
    iget-object v1, p0, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    .line 522
    iget v1, p0, Lcom/avast/a/b/a/a$e$a;->b:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/avast/a/b/a/a$e$a;->b:I

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/avast/a/b/a/a$e;->a(Lcom/avast/a/b/a/a$e;Ljava/util/List;)Ljava/util/List;

    .line 525
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/avast/a/b/a/a$e;)Lcom/avast/a/b/a/a$e$a;
    .locals 2

    .prologue
    .line 529
    invoke-static {}, Lcom/avast/a/b/a/a$e;->a()Lcom/avast/a/b/a/a$e;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-object p0

    .line 530
    :cond_1
    invoke-static {p1}, Lcom/avast/a/b/a/a$e;->a(Lcom/avast/a/b/a/a$e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    invoke-static {p1}, Lcom/avast/a/b/a/a$e;->a(Lcom/avast/a/b/a/a$e;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    .line 533
    iget v0, p0, Lcom/avast/a/b/a/a$e$a;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/avast/a/b/a/a$e$a;->b:I

    goto :goto_0

    .line 535
    :cond_2
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$e$a;->e()V

    .line 536
    iget-object v0, p0, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/a/b/a/a$e;->a(Lcom/avast/a/b/a/a$e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/avast/a/b/a/a$e$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/avast/a/b/a/a$o;",
            ">;)",
            "Lcom/avast/a/b/a/a$e$a;"
        }
    .end annotation

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/avast/a/b/a/a$e$a;->e()V

    .line 708
    iget-object v0, p0, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/a/g$a;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 710
    return-object p0
.end method

.method public final a()Lcom/avast/a/b/a/a$e;
    .locals 2

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/avast/a/b/a/a$e$a;->i()Lcom/avast/a/b/a/a$e;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$e;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2306
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    .line 512
    throw v0

    .line 514
    :cond_0
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic c()Lcom/google/a/g$a;
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/avast/a/b/a/a$e$a;->h()Lcom/avast/a/b/a/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/avast/a/b/a/a$e$a;->h()Lcom/avast/a/b/a/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/avast/a/b/a/a$e$a;->h()Lcom/avast/a/b/a/a$e$a;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 570
    iget v0, p0, Lcom/avast/a/b/a/a$e$a;->b:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    .line 572
    iget v0, p0, Lcom/avast/a/b/a/a$e$a;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/b/a/a$e$a;->b:I

    .line 574
    :cond_0
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/avast/a/b/a/a$e$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
