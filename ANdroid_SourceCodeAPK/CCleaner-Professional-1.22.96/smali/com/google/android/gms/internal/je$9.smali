.class final Lcom/google/android/gms/internal/je$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/ip;Lcom/google/firebase/database/b;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/gms/internal/km;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/kr;

.field final synthetic c:Lcom/google/android/gms/internal/ip;

.field final synthetic d:Lcom/google/firebase/database/b;

.field final synthetic e:Lcom/google/android/gms/internal/je;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/je;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/je$9;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/ip;Lcom/google/firebase/database/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    iput-object p2, p0, Lcom/google/android/gms/internal/je$9;->b:Lcom/google/android/gms/internal/kr;

    iput-object p3, p0, Lcom/google/android/gms/internal/je$9;->c:Lcom/google/android/gms/internal/ip;

    iput-object p4, p0, Lcom/google/android/gms/internal/je$9;->d:Lcom/google/firebase/database/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/je$9;->b:Lcom/google/android/gms/internal/kr;

    .line 2000
    iget-object v8, v0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v0}, Lcom/google/android/gms/internal/je;->d(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ke;->e(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jd;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/je$9;->b:Lcom/google/android/gms/internal/kr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kr;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/je$9;->b:Lcom/google/android/gms/internal/kr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/jd;->b(Lcom/google/android/gms/internal/kr;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/je$9;->b:Lcom/google/android/gms/internal/kr;

    iget-object v2, p0, Lcom/google/android/gms/internal/je$9;->c:Lcom/google/android/gms/internal/ip;

    iget-object v3, p0, Lcom/google/android/gms/internal/je$9;->d:Lcom/google/firebase/database/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/jd;->a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/ip;Lcom/google/firebase/database/b;)Lcom/google/android/gms/internal/ms;

    move-result-object v1

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 1000
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    iget-object v2, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v2}, Lcom/google/android/gms/internal/je;->d(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/ke;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ke;->d(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ke;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/ke;)Lcom/google/android/gms/internal/ke;

    .line 4000
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ms;->a:Ljava/lang/Object;

    .line 1000
    check-cast v0, Ljava/util/List;

    .line 5000
    iget-object v1, v1, Lcom/google/android/gms/internal/ms;->b:Ljava/lang/Object;

    .line 1000
    check-cast v1, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/kr;

    iget-object v7, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v7}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/jz;

    move-result-object v7

    iget-object v9, p0, Lcom/google/android/gms/internal/je$9;->b:Lcom/google/android/gms/internal/kr;

    invoke-interface {v7, v9}, Lcom/google/android/gms/internal/jz;->c(Lcom/google/android/gms/internal/kr;)V

    if-nez v3, :cond_2

    .line 6000
    iget-object v2, v2, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v2

    .line 1000
    if-eqz v2, :cond_3

    :cond_2
    move v2, v5

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v2}, Lcom/google/android/gms/internal/je;->d(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/ke;

    move-result-object v6

    .line 7000
    iget-object v2, v6, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 1000
    if-eqz v2, :cond_8

    .line 8000
    iget-object v2, v6, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 1000
    check-cast v2, Lcom/google/android/gms/internal/jd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/jd;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    :goto_2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/iu;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v6

    move v6, v2

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/lf;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ke;

    move-result-object v7

    if-nez v6, :cond_5

    .line 9000
    iget-object v2, v7, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 1000
    if-eqz v2, :cond_9

    .line 10000
    iget-object v2, v7, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 1000
    check-cast v2, Lcom/google/android/gms/internal/jd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/jd;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_5
    move v2, v5

    :goto_4
    if-nez v2, :cond_6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ke;->b()Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_6
    move v6, v2

    :cond_7
    if-eqz v3, :cond_a

    if-nez v6, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v2}, Lcom/google/android/gms/internal/je;->d(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/ke;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ke;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ke;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ke;->b()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/je;->b(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/ke;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ks;

    new-instance v5, Lcom/google/android/gms/internal/je$c;

    iget-object v7, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    invoke-direct {v5, v7, v2}, Lcom/google/android/gms/internal/je$c;-><init>(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/ks;)V

    .line 11000
    iget-object v2, v2, Lcom/google/android/gms/internal/ks;->a:Lcom/google/android/gms/internal/kr;

    .line 1000
    iget-object v7, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v7}, Lcom/google/android/gms/internal/je;->h(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/je$d;

    move-result-object v7

    invoke-static {v2}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;

    move-result-object v2

    .line 12000
    iget-object v8, v5, Lcom/google/android/gms/internal/je$c;->a:Lcom/google/android/gms/internal/jf;

    .line 1000
    invoke-interface {v7, v2, v8, v5, v5}, Lcom/google/android/gms/internal/je$d;->a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/jf;Lcom/google/android/gms/internal/ib;Lcom/google/android/gms/internal/je$a;)V

    goto :goto_5

    :cond_8
    move v2, v4

    goto :goto_2

    :cond_9
    move v2, v4

    goto :goto_4

    :cond_a
    if-nez v6, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/je$9;->d:Lcom/google/firebase/database/b;

    if-nez v2, :cond_b

    if-eqz v3, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v2}, Lcom/google/android/gms/internal/je;->h(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/je$d;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/je$9;->b:Lcom/google/android/gms/internal/kr;

    invoke-static {v3}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/je$d;->a(Lcom/google/android/gms/internal/kr;)V

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Ljava/util/List;)V

    .line 0
    :cond_c
    return-object v1

    .line 1000
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/kr;

    iget-object v4, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/je;Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/jf;

    move-result-object v4

    sget-boolean v5, Lcom/google/android/gms/internal/je$9;->a:Z

    if-nez v5, :cond_e

    if-nez v4, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iget-object v4, p0, Lcom/google/android/gms/internal/je$9;->e:Lcom/google/android/gms/internal/je;

    invoke-static {v4}, Lcom/google/android/gms/internal/je;->h(Lcom/google/android/gms/internal/je;)Lcom/google/android/gms/internal/je$d;

    move-result-object v4

    invoke-static {v2}, Lcom/google/android/gms/internal/je;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/je$d;->a(Lcom/google/android/gms/internal/kr;)V

    goto :goto_6

    :cond_f
    move v6, v2

    goto/16 :goto_3
.end method
