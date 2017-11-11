.class public Lcom/google/android/gms/internal/kw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ky;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/google/android/gms/internal/ll;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/kw;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/kw;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ll;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/kw;->b:Lcom/google/android/gms/internal/ll;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ky;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ky$a;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;
    .locals 4

    .prologue
    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/kw;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kw;->b:Lcom/google/android/gms/internal/ll;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ll;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "The index must match the filter"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1000
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v1

    invoke-interface {v1, p4}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v2

    invoke-interface {p3, p4}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v3

    if-ne v2, v3, :cond_2

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    if-eqz p6, :cond_3

    invoke-interface {p3}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/kk;->b(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/kk;)V

    :cond_3
    :goto_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_4
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object p1

    goto :goto_0

    :cond_5
    sget-boolean v1, Lcom/google/android/gms/internal/kw;->a:Z

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->e()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "A child remove without an old child only makes sense on a leaf node"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/kk;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/kk;)V

    goto :goto_1

    :cond_7
    invoke-static {p2, p3, v1}, Lcom/google/android/gms/internal/kk;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;

    move-result-object v1

    invoke-virtual {p6, v1}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/kk;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/lm;
    .locals 4

    .prologue
    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/kw;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kw;->b:Lcom/google/android/gms/internal/ll;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ll;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Can\'t use IndexedNode that doesn\'t have filter\'s index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    if-eqz p3, :cond_5

    .line 2000
    iget-object v0, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    .line 3000
    iget-object v2, p2, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 4000
    iget-object v3, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 0
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5000
    iget-object v2, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/kk;->b(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/kk;)V

    goto :goto_0

    .line 7000
    :cond_2
    iget-object v0, p2, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->e()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8000
    iget-object v0, p2, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lr;

    .line 9000
    iget-object v2, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 10000
    iget-object v3, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 0
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11000
    iget-object v2, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 12000
    iget-object v3, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 0
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v2

    .line 13000
    iget-object v3, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 14000
    iget-object v3, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 15000
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/kk;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/kk;)V

    goto :goto_1

    .line 16000
    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/lr;->a:Lcom/google/android/gms/internal/lf;

    .line 17000
    iget-object v0, v0, Lcom/google/android/gms/internal/lr;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/kk;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/kk;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/kv;->a(Lcom/google/android/gms/internal/kk;)V

    goto :goto_1

    :cond_5
    return-object p2
.end method

.method public final a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;
    .locals 1

    .prologue
    .line 0
    .line 18000
    iget-object v0, p1, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/internal/ls;

    .line 0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ls;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/lm;->b(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/lm;

    move-result-object p1

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/internal/ll;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kw;->b:Lcom/google/android/gms/internal/ll;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
