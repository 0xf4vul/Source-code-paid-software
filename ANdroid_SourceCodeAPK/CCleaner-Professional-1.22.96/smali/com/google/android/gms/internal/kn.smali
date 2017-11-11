.class public Lcom/google/android/gms/internal/kn;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/android/gms/internal/ll;

.field private final b:Lcom/google/android/gms/internal/kr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/kr;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kn;->b:Lcom/google/android/gms/internal/kr;

    .line 1000
    iget-object v0, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    .line 0
    iput-object v0, p0, Lcom/google/android/gms/internal/kn;->a:Lcom/google/android/gms/internal/ll;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/kn;)Lcom/google/android/gms/internal/ll;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kn;->a:Lcom/google/android/gms/internal/ll;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/util/List;Lcom/google/android/gms/internal/km$a;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/lm;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/kl;",
            ">;",
            "Lcom/google/android/gms/internal/km$a;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/kk;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ip;",
            ">;",
            "Lcom/google/android/gms/internal/lm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kk;

    .line 3000
    iget-object v3, v0, Lcom/google/android/gms/internal/kk;->a:Lcom/google/android/gms/internal/km$a;

    .line 0
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/km$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4000
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/kn$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kn$1;-><init>(Lcom/google/android/gms/internal/kn;)V

    .line 0
    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/kk;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ip;

    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ip;->a(Lcom/google/android/gms/internal/km$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6000
    iget-object v0, v7, Lcom/google/android/gms/internal/kk;->a:Lcom/google/android/gms/internal/km$a;

    .line 5000
    sget-object v1, Lcom/google/android/gms/internal/km$a;->e:Lcom/google/android/gms/internal/km$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/km$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7000
    iget-object v0, v7, Lcom/google/android/gms/internal/kk;->a:Lcom/google/android/gms/internal/km$a;

    .line 5000
    sget-object v1, Lcom/google/android/gms/internal/km$a;->a:Lcom/google/android/gms/internal/km$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/km$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move-object v0, v7

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/kn;->b:Lcom/google/android/gms/internal/kr;

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/internal/ip;->a(Lcom/google/android/gms/internal/kk;Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kl;

    move-result-object v0

    .line 0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8000
    :cond_5
    iget-object v0, v7, Lcom/google/android/gms/internal/kk;->d:Lcom/google/android/gms/internal/lf;

    .line 9000
    iget-object v1, v7, Lcom/google/android/gms/internal/kk;->b:Lcom/google/android/gms/internal/lm;

    .line 10000
    iget-object v1, v1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 5000
    iget-object v2, p0, Lcom/google/android/gms/internal/kn;->a:Lcom/google/android/gms/internal/ll;

    .line 11000
    iget-object v3, p5, Lcom/google/android/gms/internal/lm;->d:Lcom/google/android/gms/internal/ll;

    invoke-static {}, Lcom/google/android/gms/internal/ln;->d()Lcom/google/android/gms/internal/ln;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p5, Lcom/google/android/gms/internal/lm;->d:Lcom/google/android/gms/internal/ll;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Index not available in IndexedNode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {p5}, Lcom/google/android/gms/internal/lm;->a()V

    iget-object v2, p5, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    sget-object v3, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/hn;

    if-ne v2, v3, :cond_7

    iget-object v1, p5, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ls;->b(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/lf;

    move-result-object v4

    .line 14000
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/kk;

    iget-object v1, v7, Lcom/google/android/gms/internal/kk;->a:Lcom/google/android/gms/internal/km$a;

    iget-object v2, v7, Lcom/google/android/gms/internal/kk;->b:Lcom/google/android/gms/internal/lm;

    iget-object v3, v7, Lcom/google/android/gms/internal/kk;->d:Lcom/google/android/gms/internal/lf;

    iget-object v5, v7, Lcom/google/android/gms/internal/kk;->c:Lcom/google/android/gms/internal/lm;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/kk;-><init>(Lcom/google/android/gms/internal/km$a;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/lm;)V

    goto :goto_2

    .line 11000
    :cond_7
    iget-object v2, p5, Lcom/google/android/gms/internal/lm;->c:Lcom/google/android/gms/internal/hn;

    new-instance v3, Lcom/google/android/gms/internal/lr;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/lr;-><init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)V

    .line 12000
    iget-object v0, v2, Lcom/google/android/gms/internal/hn;->a:Lcom/google/android/gms/internal/hk;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/hk;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11000
    check-cast v0, Lcom/google/android/gms/internal/lr;

    if-eqz v0, :cond_8

    .line 13000
    iget-object v4, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    goto :goto_3

    .line 11000
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 0
    :cond_9
    return-void
.end method
