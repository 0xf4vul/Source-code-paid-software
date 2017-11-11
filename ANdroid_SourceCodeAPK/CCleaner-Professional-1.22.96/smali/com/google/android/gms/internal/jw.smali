.class public Lcom/google/android/gms/internal/jw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/jz;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/google/android/gms/internal/ka;

.field private final c:Lcom/google/android/gms/internal/kd;

.field private final d:Lcom/google/android/gms/internal/lc;

.field private final e:Lcom/google/android/gms/internal/jv;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/jw;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/jw;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/in;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jv;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mn;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/jw;-><init>(Lcom/google/android/gms/internal/in;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jv;Lcom/google/android/gms/internal/mm;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/in;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jv;Lcom/google/android/gms/internal/mm;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/jw;->f:J

    iput-object p2, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    const-string/jumbo v0, "Persistence"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/in;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jw;->d:Lcom/google/android/gms/internal/lc;

    new-instance v0, Lcom/google/android/gms/internal/kd;

    iget-object v1, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    iget-object v2, p0, Lcom/google/android/gms/internal/jw;->d:Lcom/google/android/gms/internal/lc;

    invoke-direct {v0, v1, v2, p4}, Lcom/google/android/gms/internal/kd;-><init>(Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/lc;Lcom/google/android/gms/internal/mm;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    iput-object p3, p0, Lcom/google/android/gms/internal/jw;->e:Lcom/google/android/gms/internal/jv;

    return-void
.end method

.method private b()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 0
    iget-wide v2, p0, Lcom/google/android/gms/internal/jw;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/jw;->f:J

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->e:Lcom/google/android/gms/internal/jv;

    iget-wide v2, p0, Lcom/google/android/gms/internal/jw;->f:J

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/jv;->a(J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->d:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->d:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v2, "Reached prune check threshold."

    new-array v3, v1, [Ljava/lang/Object;

    .line 25000
    invoke-virtual {v0, v2, v8, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/jw;->f:J

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ka;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/jw;->d:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/jw;->d:Lcom/google/android/gms/internal/lc;

    const/16 v5, 0x20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Cache size: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    .line 26000
    invoke-virtual {v4, v5, v8, v6}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/jw;->e:Lcom/google/android/gms/internal/jv;

    iget-object v5, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    .line 27000
    sget-object v6, Lcom/google/android/gms/internal/kd;->c:Lcom/google/android/gms/internal/kf;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kf;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v6, v5

    .line 0
    invoke-interface {v4, v2, v3, v6, v7}, Lcom/google/android/gms/internal/jv;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    iget-object v3, p0, Lcom/google/android/gms/internal/jw;->e:Lcom/google/android/gms/internal/jv;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/jv;)Lcom/google/android/gms/internal/kb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/kb;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    invoke-static {}, Lcom/google/android/gms/internal/iu;->a()Lcom/google/android/gms/internal/iu;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/kb;)V

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ka;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/jw;->d:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/jw;->d:Lcom/google/android/gms/internal/lc;

    const/16 v5, 0x2c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Cache size after prune: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    .line 28000
    invoke-virtual {v4, v5, v8, v6}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 0
    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/ki;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/kd;->c(Lcom/google/android/gms/internal/kr;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/kd;->b(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kc;

    move-result-object v0

    .line 3000
    iget-object v1, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v1

    .line 0
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/kc;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    iget-wide v4, v0, Lcom/google/android/gms/internal/kc;->a:J

    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/internal/ka;->d(J)Ljava/util/Set;

    move-result-object v0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    .line 9000
    iget-object v5, p1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ls;

    move-result-object v4

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/internal/lk;->h()Lcom/google/android/gms/internal/lk;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lf;

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ls;->c(Lcom/google/android/gms/internal/lf;)Lcom/google/android/gms/internal/ls;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    .line 4000
    iget-object v1, p1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 5000
    sget-boolean v4, Lcom/google/android/gms/internal/kd;->h:Z

    if-nez v4, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kr;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/kd;->c(Lcom/google/android/gms/internal/kr;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Path is fully complete."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/kd;->b(Lcom/google/android/gms/internal/iu;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, Lcom/google/android/gms/internal/kd;->e:Lcom/google/android/gms/internal/ka;

    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/ka;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ke;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/internal/ke;->b:Lcom/google/android/gms/internal/hk;

    .line 5000
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/lf;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ke;

    .line 7000
    iget-object v6, v0, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 5000
    if-eqz v6, :cond_4

    sget-object v6, Lcom/google/android/gms/internal/kd;->a:Lcom/google/android/gms/internal/kf;

    .line 8000
    iget-object v0, v0, Lcom/google/android/gms/internal/ke;->a:Ljava/lang/Object;

    .line 5000
    check-cast v0, Ljava/util/Map;

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/kf;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move v1, v3

    move-object v0, v4

    .line 0
    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ki;

    .line 10000
    iget-object v4, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 11000
    iget-object v4, v4, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    .line 0
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;

    move-result-object v3

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/lm;ZZ)V

    :goto_3
    return-object v0

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ki;

    .line 12000
    iget-object v1, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 13000
    iget-object v1, v1, Lcom/google/android/gms/internal/kq;->g:Lcom/google/android/gms/internal/ll;

    .line 0
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/ll;)Lcom/google/android/gms/internal/lm;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ki;-><init>(Lcom/google/android/gms/internal/lm;ZZ)V

    goto :goto_3
.end method

.method public final a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ka;->d()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ka;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ka;->e()V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ka;->e()V

    throw v0
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ji;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ka;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ka;->a(J)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)V
    .locals 3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ik;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/iu;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/iu;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/iu;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ls;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/jw;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;J)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    sget-object v1, Lcom/google/android/gms/internal/kd;->b:Lcom/google/android/gms/internal/kf;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ke;->b(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/kf;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v6

    .line 0
    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    iget-object v8, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    .line 2000
    invoke-virtual {v8, p1}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/iu;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kr;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/kd;->b(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kc;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/kc;

    iget-wide v1, v8, Lcom/google/android/gms/internal/kd;->g:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    iput-wide v4, v8, Lcom/google/android/gms/internal/kd;->g:J

    iget-object v4, v8, Lcom/google/android/gms/internal/kd;->f:Lcom/google/android/gms/internal/mm;

    invoke-interface {v4}, Lcom/google/android/gms/internal/mm;->a()J

    move-result-wide v4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/kc;-><init>(JLcom/google/android/gms/internal/kr;JZZ)V

    :goto_1
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kc;)V

    .line 0
    :cond_0
    return-void

    :cond_1
    move v0, v7

    .line 1000
    goto :goto_0

    .line 2000
    :cond_2
    sget-boolean v1, Lcom/google/android/gms/internal/kd;->h:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/google/android/gms/internal/kc;->d:Z

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "This should have been handled above!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kc;->a()Lcom/google/android/gms/internal/kc;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;J)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/kr;Lcom/google/android/gms/internal/ls;)V
    .locals 2

    .prologue
    .line 0
    .line 14000
    iget-object v0, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    .line 15000
    iget-object v1, p1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jw;->d(Lcom/google/android/gms/internal/kr;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jw;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    .line 16000
    iget-object v1, p1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/ka;->b(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ls;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/kr;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kr;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/lf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/jw;->a:Z

    if-nez v0, :cond_0

    .line 23000
    iget-object v0, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "We should only track keys for filtered queries."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/kd;->b(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kc;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/gms/internal/jw;->a:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/kc;->e:Z

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "We only expect tracked keys for currently-active queries."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    iget-wide v2, v0, Lcom/google/android/gms/internal/kc;->a:J

    invoke-interface {v1, v2, v3, p2}, Lcom/google/android/gms/internal/ka;->a(JLjava/util/Set;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/kr;Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kr;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/lf;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/lf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/jw;->a:Z

    if-nez v0, :cond_0

    .line 24000
    iget-object v0, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "We should only track keys for filtered queries."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/kd;->b(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kc;

    move-result-object v0

    sget-boolean v1, Lcom/google/android/gms/internal/jw;->a:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/kc;->e:Z

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "We only expect tracked keys for currently-active queries."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    iget-wide v2, v0, Lcom/google/android/gms/internal/kc;->a:J

    invoke-interface {v1, v2, v3, p2, p3}, Lcom/google/android/gms/internal/ka;->a(JLjava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->b:Lcom/google/android/gms/internal/ka;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/ik;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/jw;->b()V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/kr;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    .line 17000
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kr;Z)V

    .line 0
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/kr;)V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    .line 18000
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kr;Z)V

    .line 0
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/kr;)V
    .locals 3

    .prologue
    .line 0
    .line 19000
    iget-object v0, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    .line 20000
    iget-object v1, p1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 21000
    iget-object v2, v0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ke;->c(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ke;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/kd$5;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/kd$5;-><init>(Lcom/google/android/gms/internal/kd;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/ke$a;)V

    .line 0
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jw;->c:Lcom/google/android/gms/internal/kd;

    .line 22000
    invoke-static {p1}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/kd;->b(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kc;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/google/android/gms/internal/kc;->d:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kc;->a()Lcom/google/android/gms/internal/kc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kc;)V

    goto :goto_0
.end method
