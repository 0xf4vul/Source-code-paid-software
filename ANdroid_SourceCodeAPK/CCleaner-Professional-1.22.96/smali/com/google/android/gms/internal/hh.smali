.class public final Lcom/google/android/gms/internal/hh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/iv;


# instance fields
.field final a:Landroid/content/Context;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/firebase/b;


# direct methods
.method public constructor <init>(Lcom/google/firebase/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hh;->b:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/hh;->c:Lcom/google/firebase/b;

    iget-object v0, p0, Lcom/google/android/gms/internal/hh;->c:Lcom/google/firebase/b;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FirebaseDatabase"

    const-string/jumbo v1, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FirebaseDatabase"

    const-string/jumbo v1, "ERROR: You must call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FirebaseDatabase"

    const-string/jumbo v1, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "You need to call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hh;->c:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hh;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/in;Lcom/google/android/gms/internal/hy;Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/internal/ic$a;)Lcom/google/android/gms/internal/ic;
    .locals 6

    .prologue
    .line 0
    new-instance v0, Lcom/google/firebase/database/connection/idl/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/in;->d()Lcom/google/android/gms/internal/ld$a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/in;->f()Z

    move-result v3

    invoke-static {}, Lcom/google/firebase/database/f;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/in;->j()Ljava/lang/String;

    move-result-object v5

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/connection/idl/zzc;-><init>(Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/internal/ld$a;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/hh;->a:Landroid/content/Context;

    .line 2000
    iget-object v2, p2, Lcom/google/android/gms/internal/hy;->b:Lcom/google/android/gms/internal/hx;

    .line 3000
    iget-object v3, p2, Lcom/google/android/gms/internal/hy;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1000
    invoke-static {v1, v0, v2, v3, p4}, Lcom/google/firebase/database/connection/idl/IPersistentConnectionImpl;->loadDynamic(Landroid/content/Context;Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/android/gms/internal/hx;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ic$a;)Lcom/google/firebase/database/connection/idl/h;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/connection/idl/c;

    invoke-direct {v1, v0}, Lcom/google/firebase/database/connection/idl/c;-><init>(Lcom/google/firebase/database/connection/idl/h;)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/hh;->c:Lcom/google/firebase/b;

    new-instance v2, Lcom/google/android/gms/internal/hh$2;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/hh$2;-><init>(Lcom/google/android/gms/internal/ic;)V

    .line 4000
    invoke-virtual {v0}, Lcom/google/firebase/b;->e()V

    iget-object v3, v0, Lcom/google/firebase/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/e;->a()Lcom/google/android/gms/internal/e;

    move-result-object v3

    .line 5000
    iget-object v3, v3, Lcom/google/android/gms/internal/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 4000
    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/google/firebase/b$b;->a(Z)V

    :cond_0
    iget-object v0, v0, Lcom/google/firebase/b;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 0
    return-object v1
.end method

.method public final a(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ij;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/hf;

    iget-object v1, p0, Lcom/google/android/gms/internal/hh;->c:Lcom/google/firebase/b;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/hf;-><init>(Lcom/google/firebase/b;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public final a()Lcom/google/android/gms/internal/ir;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hg;-><init>()V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/in;)Lcom/google/android/gms/internal/iz;
    .locals 2

    const-string/jumbo v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/in;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/lc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/hh$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/hh$1;-><init>(Lcom/google/android/gms/internal/hh;Lcom/google/android/gms/internal/lc;)V

    return-object v1
.end method

.method public final a(Lcom/google/android/gms/internal/in;Ljava/lang/String;)Lcom/google/android/gms/internal/jz;
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/in;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/hh;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/google/firebase/database/c;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "SessionPersistenceKey \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' has already been used."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/database/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hh;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/hi;

    iget-object v2, p0, Lcom/google/android/gms/internal/hh;->a:Landroid/content/Context;

    invoke-direct {v0, v2, p1, v1}, Lcom/google/android/gms/internal/hi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/in;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/jx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/in;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/jx;-><init>(J)V

    new-instance v2, Lcom/google/android/gms/internal/jw;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/internal/jw;-><init>(Lcom/google/android/gms/internal/in;Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/jv;)V

    return-object v2
.end method

.method public final a(Lcom/google/android/gms/internal/ld$a;)Lcom/google/android/gms/internal/ld;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ld$a;",
            ")",
            "Lcom/google/android/gms/internal/ld;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/la;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/la;-><init>(Lcom/google/android/gms/internal/ld$a;Ljava/util/List;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
