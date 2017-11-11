.class public final Lcom/avast/a/b/a/a$g$a;
.super Lcom/google/a/g$a;
.source "SourceFile"

# interfaces
.implements Lcom/avast/a/b/a/a$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/a/b/a/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/a/g$a",
        "<",
        "Lcom/avast/a/b/a/a$g;",
        "Lcom/avast/a/b/a/a$g$a;",
        ">;",
        "Lcom/avast/a/b/a/a$h;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:I

.field private e:Lcom/google/a/c;

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avast/a/b/a/a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2504
    invoke-direct {p0}, Lcom/google/a/g$a;-><init>()V

    .line 2642
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$g$a;->b:Ljava/util/List;

    .line 2834
    sget-object v0, Lcom/google/a/c;->a:Lcom/google/a/c;

    iput-object v0, p0, Lcom/avast/a/b/a/a$g$a;->e:Lcom/google/a/c;

    .line 2940
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$g$a;->g:Ljava/util/List;

    .line 2506
    return-void
.end method

.method static synthetic e()Lcom/avast/a/b/a/a$g$a;
    .locals 1

    .prologue
    .line 5511
    new-instance v0, Lcom/avast/a/b/a/a$g$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$g$a;-><init>()V

    .line 2499
    return-object v0
.end method

.method private f()Lcom/avast/a/b/a/a$g$a;
    .locals 2

    .prologue
    .line 3511
    new-instance v0, Lcom/avast/a/b/a/a$g$a;

    invoke-direct {v0}, Lcom/avast/a/b/a/a$g$a;-><init>()V

    .line 2532
    invoke-direct {p0}, Lcom/avast/a/b/a/a$g$a;->g()Lcom/avast/a/b/a/a$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/a/b/a/a$g$a;->a(Lcom/avast/a/b/a/a$g;)Lcom/avast/a/b/a/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/avast/a/b/a/a$g;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2548
    new-instance v2, Lcom/avast/a/b/a/a$g;

    invoke-direct {v2, v1}, Lcom/avast/a/b/a/a$g;-><init>(C)V

    .line 2549
    iget v3, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    .line 2551
    iget v4, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_0

    .line 2552
    iget-object v4, p0, Lcom/avast/a/b/a/a$g$a;->b:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/avast/a/b/a/a$g$a;->b:Ljava/util/List;

    .line 2553
    iget v4, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    .line 2555
    :cond_0
    iget-object v4, p0, Lcom/avast/a/b/a/a$g$a;->b:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/avast/a/b/a/a$g;->a(Lcom/avast/a/b/a/a$g;Ljava/util/List;)Ljava/util/List;

    .line 2556
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 2559
    :goto_0
    iget-wide v4, p0, Lcom/avast/a/b/a/a$g$a;->c:J

    invoke-static {v2, v4, v5}, Lcom/avast/a/b/a/a$g;->a(Lcom/avast/a/b/a/a$g;J)J

    .line 2560
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 2561
    or-int/lit8 v0, v0, 0x2

    .line 2563
    :cond_1
    iget v1, p0, Lcom/avast/a/b/a/a$g$a;->d:I

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$g;->a(Lcom/avast/a/b/a/a$g;I)I

    .line 2564
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 2565
    or-int/lit8 v0, v0, 0x4

    .line 2567
    :cond_2
    iget-object v1, p0, Lcom/avast/a/b/a/a$g$a;->e:Lcom/google/a/c;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$g;->a(Lcom/avast/a/b/a/a$g;Lcom/google/a/c;)Lcom/google/a/c;

    .line 2568
    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    .line 2569
    or-int/lit8 v0, v0, 0x8

    .line 2571
    :cond_3
    iget v1, p0, Lcom/avast/a/b/a/a$g$a;->f:I

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$g;->b(Lcom/avast/a/b/a/a$g;I)I

    .line 2572
    iget v1, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    and-int/lit8 v1, v1, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4

    .line 2573
    iget-object v1, p0, Lcom/avast/a/b/a/a$g$a;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/avast/a/b/a/a$g$a;->g:Ljava/util/List;

    .line 2574
    iget v1, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    .line 2576
    :cond_4
    iget-object v1, p0, Lcom/avast/a/b/a/a$g$a;->g:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/avast/a/b/a/a$g;->b(Lcom/avast/a/b/a/a$g;Ljava/util/List;)Ljava/util/List;

    .line 2577
    invoke-static {v2, v0}, Lcom/avast/a/b/a/a$g;->c(Lcom/avast/a/b/a/a$g;I)I

    .line 2578
    return-object v2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 2644
    iget v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2645
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/a/b/a/a$g$a;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/a/b/a/a$g$a;->b:Ljava/util/List;

    .line 2646
    iget v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    .line 2648
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 2942
    iget v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 2943
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avast/a/b/a/a$g$a;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/avast/a/b/a/a$g$a;->g:Ljava/util/List;

    .line 2944
    iget v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    .line 2946
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/avast/a/b/a/a$g$a;
    .locals 3

    .prologue
    .line 2689
    invoke-direct {p0}, Lcom/avast/a/b/a/a$g$a;->h()V

    .line 2690
    iget-object v0, p0, Lcom/avast/a/b/a/a$g$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2692
    return-object p0
.end method

.method public final a(J)Lcom/avast/a/b/a/a$g$a;
    .locals 1

    .prologue
    .line 2765
    iget v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    .line 2766
    iput-wide p1, p0, Lcom/avast/a/b/a/a$g$a;->c:J

    .line 2768
    return-object p0
.end method

.method public final a(Lcom/avast/a/b/a/a$g;)Lcom/avast/a/b/a/a$g$a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2582
    invoke-static {}, Lcom/avast/a/b/a/a$g;->a()Lcom/avast/a/b/a/a$g;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 2615
    :cond_0
    :goto_0
    return-object p0

    .line 2583
    :cond_1
    invoke-static {p1}, Lcom/avast/a/b/a/a$g;->a(Lcom/avast/a/b/a/a$g;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2584
    iget-object v2, p0, Lcom/avast/a/b/a/a$g$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2585
    invoke-static {p1}, Lcom/avast/a/b/a/a$g;->a(Lcom/avast/a/b/a/a$g;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/avast/a/b/a/a$g$a;->b:Ljava/util/List;

    .line 2586
    iget v2, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    .line 5194
    :cond_2
    :goto_1
    iget v2, p1, Lcom/avast/a/b/a/a$g;->b:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_8

    move v2, v0

    .line 2593
    :goto_2
    if-eqz v2, :cond_3

    .line 5204
    iget-wide v2, p1, Lcom/avast/a/b/a/a$g;->d:J

    .line 2594
    invoke-virtual {p0, v2, v3}, Lcom/avast/a/b/a/a$g$a;->a(J)Lcom/avast/a/b/a/a$g$a;

    .line 5218
    :cond_3
    iget v2, p1, Lcom/avast/a/b/a/a$g;->b:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    move v2, v0

    .line 2596
    :goto_3
    if-eqz v2, :cond_4

    .line 5228
    iget v2, p1, Lcom/avast/a/b/a/a$g;->e:I

    .line 2597
    invoke-virtual {p0, v2}, Lcom/avast/a/b/a/a$g$a;->b(I)Lcom/avast/a/b/a/a$g$a;

    .line 5243
    :cond_4
    iget v2, p1, Lcom/avast/a/b/a/a$g;->b:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    move v2, v0

    .line 2599
    :goto_4
    if-eqz v2, :cond_5

    .line 5254
    iget-object v2, p1, Lcom/avast/a/b/a/a$g;->f:Lcom/google/a/c;

    .line 2600
    invoke-virtual {p0, v2}, Lcom/avast/a/b/a/a$g$a;->a(Lcom/google/a/c;)Lcom/avast/a/b/a/a$g$a;

    .line 5268
    :cond_5
    iget v2, p1, Lcom/avast/a/b/a/a$g;->b:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_b

    .line 2602
    :goto_5
    if-eqz v0, :cond_6

    .line 5278
    iget v0, p1, Lcom/avast/a/b/a/a$g;->g:I

    .line 2603
    invoke-virtual {p0, v0}, Lcom/avast/a/b/a/a$g$a;->c(I)Lcom/avast/a/b/a/a$g$a;

    .line 2605
    :cond_6
    invoke-static {p1}, Lcom/avast/a/b/a/a$g;->b(Lcom/avast/a/b/a/a$g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2606
    iget-object v0, p0, Lcom/avast/a/b/a/a$g$a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2607
    invoke-static {p1}, Lcom/avast/a/b/a/a$g;->b(Lcom/avast/a/b/a/a$g;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/b/a/a$g$a;->g:Ljava/util/List;

    .line 2608
    iget v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    goto :goto_0

    .line 2588
    :cond_7
    invoke-direct {p0}, Lcom/avast/a/b/a/a$g$a;->h()V

    .line 2589
    iget-object v2, p0, Lcom/avast/a/b/a/a$g$a;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/a/b/a/a$g;->a(Lcom/avast/a/b/a/a$g;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_8
    move v2, v1

    .line 5194
    goto :goto_2

    :cond_9
    move v2, v1

    .line 5218
    goto :goto_3

    :cond_a
    move v2, v1

    .line 5243
    goto :goto_4

    :cond_b
    move v0, v1

    .line 5268
    goto :goto_5

    .line 2610
    :cond_c
    invoke-direct {p0}, Lcom/avast/a/b/a/a$g$a;->i()V

    .line 2611
    iget-object v0, p0, Lcom/avast/a/b/a/a$g$a;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/avast/a/b/a/a$g;->b(Lcom/avast/a/b/a/a$g;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/a/c;)Lcom/avast/a/b/a/a$g$a;
    .locals 1

    .prologue
    .line 2866
    if-nez p1, :cond_0

    .line 2867
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2869
    :cond_0
    iget v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    .line 2870
    iput-object p1, p0, Lcom/avast/a/b/a/a$g$a;->e:Lcom/google/a/c;

    .line 2872
    return-object p0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/avast/a/b/a/a$g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/avast/a/b/a/a$g$a;"
        }
    .end annotation

    .prologue
    .line 2716
    invoke-direct {p0}, Lcom/avast/a/b/a/a$g$a;->h()V

    .line 2717
    iget-object v0, p0, Lcom/avast/a/b/a/a$g$a;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/a/g$a;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2719
    return-object p0
.end method

.method public final a()Lcom/avast/a/b/a/a$g;
    .locals 2

    .prologue
    .line 2540
    invoke-direct {p0}, Lcom/avast/a/b/a/a$g$a;->g()Lcom/avast/a/b/a/a$g;

    move-result-object v0

    .line 2541
    invoke-virtual {v0}, Lcom/avast/a/b/a/a$g;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4306
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    .line 2542
    throw v0

    .line 2544
    :cond_0
    return-object v0
.end method

.method public final b(I)Lcom/avast/a/b/a/a$g$a;
    .locals 1

    .prologue
    .line 2814
    iget v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    .line 2815
    iput p1, p0, Lcom/avast/a/b/a/a$g$a;->d:I

    .line 2817
    return-object p0
.end method

.method public final b(Ljava/lang/Iterable;)Lcom/avast/a/b/a/a$g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/avast/a/b/a/a$c;",
            ">;)",
            "Lcom/avast/a/b/a/a$g$a;"
        }
    .end annotation

    .prologue
    .line 3079
    invoke-direct {p0}, Lcom/avast/a/b/a/a$g$a;->i()V

    .line 3080
    iget-object v0, p0, Lcom/avast/a/b/a/a$g$a;->g:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/a/g$a;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3082
    return-object p0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 2619
    const/4 v0, 0x1

    return v0
.end method

.method public final c(I)Lcom/avast/a/b/a/a$g$a;
    .locals 1

    .prologue
    .line 2919
    iget v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/avast/a/b/a/a$g$a;->a:I

    .line 2920
    iput p1, p0, Lcom/avast/a/b/a/a$g$a;->f:I

    .line 2922
    return-object p0
.end method

.method public final synthetic c()Lcom/google/a/g$a;
    .locals 1

    .prologue
    .line 2499
    invoke-direct {p0}, Lcom/avast/a/b/a/a$g$a;->f()Lcom/avast/a/b/a/a$g$a;

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
    .line 2499
    invoke-direct {p0}, Lcom/avast/a/b/a/a$g$a;->f()Lcom/avast/a/b/a/a$g$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lcom/google/a/a$a;
    .locals 1

    .prologue
    .line 2499
    invoke-direct {p0}, Lcom/avast/a/b/a/a$g$a;->f()Lcom/avast/a/b/a/a$g$a;

    move-result-object v0

    return-object v0
.end method
