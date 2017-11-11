.class public Lcom/google/firebase/database/k;
.super Ljava/lang/Object;


# static fields
.field static final synthetic d:Z


# instance fields
.field protected final a:Lcom/google/android/gms/internal/iw;

.field protected final b:Lcom/google/android/gms/internal/iu;

.field protected final c:Lcom/google/android/gms/internal/kq;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/firebase/database/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/firebase/database/k;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/gms/internal/iw;Lcom/google/android/gms/internal/iu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/k;->a:Lcom/google/android/gms/internal/iw;

    iput-object p2, p0, Lcom/google/firebase/database/k;->b:Lcom/google/android/gms/internal/iu;

    sget-object v0, Lcom/google/android/gms/internal/kq;->a:Lcom/google/android/gms/internal/kq;

    iput-object v0, p0, Lcom/google/firebase/database/k;->c:Lcom/google/android/gms/internal/kq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/database/k;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/database/n;)V
    .locals 6

    .prologue
    .line 0
    new-instance v1, Lcom/google/android/gms/internal/jk;

    iget-object v0, p0, Lcom/google/firebase/database/k;->a:Lcom/google/android/gms/internal/iw;

    new-instance v2, Lcom/google/firebase/database/k$1;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/database/k$1;-><init>(Lcom/google/firebase/database/k;Lcom/google/firebase/database/n;)V

    invoke-virtual {p0}, Lcom/google/firebase/database/k;->f()Lcom/google/android/gms/internal/kr;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/jk;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/firebase/database/n;Lcom/google/android/gms/internal/kr;)V

    .line 1000
    invoke-static {}, Lcom/google/android/gms/internal/jo;->a()Lcom/google/android/gms/internal/jo;

    move-result-object v2

    .line 2000
    iget-object v3, v2, Lcom/google/android/gms/internal/jo;->a:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, v2, Lcom/google/android/gms/internal/jo;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Lcom/google/android/gms/internal/jo;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ip;->a()Lcom/google/android/gms/internal/kr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kr;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ip;->a()Lcom/google/android/gms/internal/kr;

    move-result-object v0

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 2000
    invoke-static {v0}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ip;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/ip;

    move-result-object v4

    iget-object v0, v2, Lcom/google/android/gms/internal/jo;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v2, Lcom/google/android/gms/internal/jo;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4000
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ip;->c:Z

    .line 5000
    sget-boolean v0, Lcom/google/android/gms/internal/ip;->d:Z

    if-nez v0, :cond_3

    .line 6000
    iget-object v0, v1, Lcom/google/android/gms/internal/ip;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 5000
    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2000
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5000
    :cond_3
    :try_start_1
    sget-boolean v0, Lcom/google/android/gms/internal/ip;->d:Z

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/internal/ip;->b:Lcom/google/android/gms/internal/iq;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    iput-object v2, v1, Lcom/google/android/gms/internal/ip;->b:Lcom/google/android/gms/internal/iq;

    .line 2000
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1000
    iget-object v0, p0, Lcom/google/firebase/database/k;->a:Lcom/google/android/gms/internal/iw;

    new-instance v2, Lcom/google/firebase/database/k$3;

    invoke-direct {v2, p0, v1}, Lcom/google/firebase/database/k$3;-><init>(Lcom/google/firebase/database/k;Lcom/google/android/gms/internal/ip;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/iw;->a(Ljava/lang/Runnable;)V

    .line 0
    return-void
.end method

.method public final b(Lcom/google/firebase/database/n;)V
    .locals 3

    .prologue
    .line 0
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/jk;

    iget-object v1, p0, Lcom/google/firebase/database/k;->a:Lcom/google/android/gms/internal/iw;

    invoke-virtual {p0}, Lcom/google/firebase/database/k;->f()Lcom/google/android/gms/internal/kr;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/jk;-><init>(Lcom/google/android/gms/internal/iw;Lcom/google/firebase/database/n;Lcom/google/android/gms/internal/kr;)V

    .line 7000
    invoke-static {}, Lcom/google/android/gms/internal/jo;->a()Lcom/google/android/gms/internal/jo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/jo;->b(Lcom/google/android/gms/internal/ip;)V

    iget-object v1, p0, Lcom/google/firebase/database/k;->a:Lcom/google/android/gms/internal/iw;

    new-instance v2, Lcom/google/firebase/database/k$2;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/database/k$2;-><init>(Lcom/google/firebase/database/k;Lcom/google/android/gms/internal/ip;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/iw;->a(Ljava/lang/Runnable;)V

    .line 0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/k;->b:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/k;->b:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/lf;->d()Lcom/google/android/gms/internal/lf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/c;

    const-string/jumbo v1, "Can\'t call keepSynced() on .info paths."

    invoke-direct {v0, v1}, Lcom/google/firebase/database/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/k;->a:Lcom/google/android/gms/internal/iw;

    new-instance v1, Lcom/google/firebase/database/k$4;

    invoke-direct {v1, p0}, Lcom/google/firebase/database/k$4;-><init>(Lcom/google/firebase/database/k;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/iw;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()Lcom/google/android/gms/internal/iu;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/k;->b:Lcom/google/android/gms/internal/iu;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/kr;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/kr;

    iget-object v1, p0, Lcom/google/firebase/database/k;->b:Lcom/google/android/gms/internal/iu;

    iget-object v2, p0, Lcom/google/firebase/database/k;->c:Lcom/google/android/gms/internal/kq;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/kr;-><init>(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/kq;)V

    return-object v0
.end method
