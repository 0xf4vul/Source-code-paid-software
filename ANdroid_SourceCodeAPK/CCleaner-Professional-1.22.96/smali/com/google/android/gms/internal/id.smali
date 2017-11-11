.class public Lcom/google/android/gms/internal/id;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hw$a;
.implements Lcom/google/android/gms/internal/ic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/id$b;,
        Lcom/google/android/gms/internal/id$d;,
        Lcom/google/android/gms/internal/id$f;,
        Lcom/google/android/gms/internal/id$e;,
        Lcom/google/android/gms/internal/id$c;,
        Lcom/google/android/gms/internal/id$a;
    }
.end annotation


# static fields
.field static final synthetic i:Z

.field private static j:J


# instance fields
.field private A:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private B:J

.field private C:Z

.field final a:Lcom/google/android/gms/internal/ic$a;

.field final b:Lcom/google/android/gms/internal/ia;

.field c:Ljava/lang/String;

.field d:Lcom/google/android/gms/internal/hw;

.field e:Lcom/google/android/gms/internal/id$b;

.field f:Ljava/lang/String;

.field final g:Lcom/google/android/gms/internal/hy;

.field h:Ljava/lang/String;

.field private k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:J

.field private n:J

.field private o:J

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/id$a;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/id$d;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/id$f;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/id$c;",
            "Lcom/google/android/gms/internal/id$e;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private final u:Lcom/google/android/gms/internal/hx;

.field private final v:Ljava/util/concurrent/ScheduledExecutorService;

.field private final w:Lcom/google/android/gms/internal/lc;

.field private final x:Lcom/google/android/gms/internal/ih;

.field private y:J

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/id;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/id;->i:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/id;->j:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/hy;Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/internal/ic$a;)V
    .locals 15

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/id;->k:Ljava/util/HashSet;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/id;->l:Z

    sget-object v2, Lcom/google/android/gms/internal/id$b;->a:Lcom/google/android/gms/internal/id$b;

    iput-object v2, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/id;->n:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/id;->o:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/id;->y:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/id;->z:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/id;->A:Ljava/util/concurrent/ScheduledFuture;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/google/android/gms/internal/id;->a:Lcom/google/android/gms/internal/ic$a;

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/google/android/gms/internal/id;->g:Lcom/google/android/gms/internal/hy;

    .line 1000
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/hy;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 0
    iput-object v2, p0, Lcom/google/android/gms/internal/id;->v:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2000
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/hy;->b:Lcom/google/android/gms/internal/hx;

    .line 0
    iput-object v2, p0, Lcom/google/android/gms/internal/id;->u:Lcom/google/android/gms/internal/hx;

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/google/android/gms/internal/id;->b:Lcom/google/android/gms/internal/ia;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/id;->s:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/id;->p:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/id;->r:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/id;->q:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/ih$a;

    iget-object v3, p0, Lcom/google/android/gms/internal/id;->v:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3000
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/ld;

    .line 0
    const-string/jumbo v5, "ConnectionRetryHelper"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ih$a;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ld;Ljava/lang/String;)V

    .line 4000
    const-wide/16 v4, 0x3e8

    iput-wide v4, v2, Lcom/google/android/gms/internal/ih$a;->b:J

    .line 5000
    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v4, v2, Lcom/google/android/gms/internal/ih$a;->e:D

    .line 6000
    const-wide/16 v4, 0x7530

    iput-wide v4, v2, Lcom/google/android/gms/internal/ih$a;->d:J

    .line 7000
    const-wide v4, 0x3fe6666666666666L    # 0.7

    iput-wide v4, v2, Lcom/google/android/gms/internal/ih$a;->c:D

    .line 8000
    new-instance v3, Lcom/google/android/gms/internal/ih;

    iget-object v4, v2, Lcom/google/android/gms/internal/ih$a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, v2, Lcom/google/android/gms/internal/ih$a;->f:Lcom/google/android/gms/internal/lc;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ih$a;->b:J

    iget-wide v8, v2, Lcom/google/android/gms/internal/ih$a;->d:J

    iget-wide v10, v2, Lcom/google/android/gms/internal/ih$a;->e:D

    iget-wide v12, v2, Lcom/google/android/gms/internal/ih$a;->c:D

    const/4 v14, 0x0

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ih;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/lc;JJDDB)V

    .line 0
    iput-object v3, p0, Lcom/google/android/gms/internal/id;->x:Lcom/google/android/gms/internal/ih;

    sget-wide v2, Lcom/google/android/gms/internal/id;->j:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/google/android/gms/internal/id;->j:J

    new-instance v4, Lcom/google/android/gms/internal/lc;

    .line 9000
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/ld;

    .line 0
    const-string/jumbo v6, "PersistentConnection"

    const/16 v7, 0x17

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v7, "pc_"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v6, v2}, Lcom/google/android/gms/internal/lc;-><init>(Lcom/google/android/gms/internal/ld;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/id;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->k()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/id;Lcom/google/android/gms/internal/id$b;)Lcom/google/android/gms/internal/id$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    return-object p1
.end method

.method private a(Lcom/google/android/gms/internal/id$c;)Lcom/google/android/gms/internal/id$e;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "removing query "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 51018
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/id;->s:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x40

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Trying to remove listener for QuerySpec "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but no listener exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 51019
    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->s:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/id$e;

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->s:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->k()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/id;Lcom/google/android/gms/internal/id$c;)Lcom/google/android/gms/internal/id$e;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id$c;)Lcom/google/android/gms/internal/id$e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/lc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    return-object v0
.end method

.method private a(J)V
    .locals 9

    .prologue
    .line 0
    sget-boolean v0, Lcom/google/android/gms/internal/id;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->f()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "sendPut called when we can\'t send writes (we\'re disconnected or writes are paused)."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->r:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/id$f;

    .line 51037
    iget-object v7, v6, Lcom/google/android/gms/internal/id$f;->c:Lcom/google/android/gms/internal/if;

    .line 51038
    iget-object v3, v6, Lcom/google/android/gms/internal/id$f;->a:Ljava/lang/String;

    .line 51039
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/google/android/gms/internal/id$f;->d:Z

    .line 51040
    iget-object v0, v6, Lcom/google/android/gms/internal/id$f;->b:Ljava/util/Map;

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/id$4;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/id$4;-><init>(Lcom/google/android/gms/internal/id;Ljava/lang/String;JLcom/google/android/gms/internal/id$f;Lcom/google/android/gms/internal/if;)V

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/id$a;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/id$e;)V
    .locals 5

    .prologue
    .line 0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "p"

    .line 51041
    iget-object v2, p1, Lcom/google/android/gms/internal/id$e;->b:Lcom/google/android/gms/internal/id$c;

    .line 51042
    iget-object v2, v2, Lcom/google/android/gms/internal/id$c;->a:Ljava/util/List;

    .line 0
    invoke-static {v2}, Lcom/google/android/gms/internal/hz;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51043
    iget-object v0, p1, Lcom/google/android/gms/internal/id$e;->d:Ljava/lang/Long;

    .line 0
    if-eqz v0, :cond_0

    const-string/jumbo v2, "q"

    .line 51044
    iget-object v3, p1, Lcom/google/android/gms/internal/id$e;->b:Lcom/google/android/gms/internal/id$c;

    .line 51045
    iget-object v3, v3, Lcom/google/android/gms/internal/id$c;->b:Ljava/util/Map;

    .line 0
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "t"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51046
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/id$e;->c:Lcom/google/android/gms/internal/ib;

    .line 0
    const-string/jumbo v2, "h"

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->c()Lcom/google/android/gms/internal/hv;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 51047
    iget-object v0, v2, Lcom/google/android/gms/internal/hv;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "hs"

    .line 51048
    iget-object v2, v2, Lcom/google/android/gms/internal/hv;->b:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 0
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "ps"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "ch"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v0, "q"

    new-instance v2, Lcom/google/android/gms/internal/id$5;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/id$5;-><init>(Lcom/google/android/gms/internal/id;Lcom/google/android/gms/internal/id$e;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/id$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/id;Ljava/util/List;Lcom/google/android/gms/internal/id$c;)V
    .locals 5

    .prologue
    .line 51056
    const-string/jumbo v0, "no_index"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51057
    iget-object v0, p2, Lcom/google/android/gms/internal/id$c;->b:Ljava/util/Map;

    .line 51056
    const-string/jumbo v1, "i"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "\".indexOn\": \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    .line 51058
    iget-object v2, p2, Lcom/google/android/gms/internal/id$c;->a:Ljava/util/List;

    .line 51056
    invoke-static {v2}, Lcom/google/android/gms/internal/hz;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x76

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Using an unspecified index. Consider adding \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\' at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " to your security and Firebase Database rules for better performance"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;)V

    .line 0
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/if;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/if;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "p"

    invoke-static {p2}, Lcom/google/android/gms/internal/hz;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "d"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/id$2;

    invoke-direct {v1, p4}, Lcom/google/android/gms/internal/id$2;-><init>(Lcom/google/android/gms/internal/if;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/id$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/if;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/if;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51036
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "p"

    invoke-static {p2}, Lcom/google/android/gms/internal/hz;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "d"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    const-string/jumbo v1, "h"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/id;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/id;->n:J

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->r:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/id$f;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v0, p5, v6}, Lcom/google/android/gms/internal/id$f;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/if;B)V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/id;->a(J)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/id;->B:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->k()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/id$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/id$a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/id$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/id$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/id$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 0
    .line 51049
    iget-wide v0, p0, Lcom/google/android/gms/internal/id;->o:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/id;->o:J

    .line 0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "r"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "a"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "b"

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/id;->d:Lcom/google/android/gms/internal/hw;

    .line 51050
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "t"

    const-string/jumbo v6, "d"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "d"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51051
    iget v2, v3, Lcom/google/android/gms/internal/hw;->b:I

    sget v5, Lcom/google/android/gms/internal/hw$c;->b:I

    if-eq v2, v5, :cond_0

    iget-object v2, v3, Lcom/google/android/gms/internal/hw;->c:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v3, "Tried to send on an unconnected connection"

    new-array v4, v7, [Ljava/lang/Object;

    .line 51052
    invoke-virtual {v2, v3, v8, v4}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/id;->p:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 51051
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, v3, Lcom/google/android/gms/internal/hw;->c:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v5, "Sending data (contents hidden)"

    new-array v6, v7, [Ljava/lang/Object;

    .line 51053
    invoke-virtual {v2, v5, v8, v6}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 51051
    :goto_1
    iget-object v2, v3, Lcom/google/android/gms/internal/hw;->a:Lcom/google/android/gms/internal/ig;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ig;->a(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object v2, v3, Lcom/google/android/gms/internal/hw;->c:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v5, "Sending data: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v7

    .line 51054
    invoke-virtual {v2, v5, v8, v6}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 0
    .line 51020
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "removing all listens at path "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 51021
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 51020
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/id$c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/id$e;

    .line 51022
    iget-object v1, v1, Lcom/google/android/gms/internal/id$c;->a:Ljava/util/List;

    .line 51020
    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/id$e;

    iget-object v3, p0, Lcom/google/android/gms/internal/id;->s:Ljava/util/Map;

    .line 51023
    iget-object v0, v0, Lcom/google/android/gms/internal/id$e;->b:Lcom/google/android/gms/internal/id$c;

    .line 51020
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->k()V

    .line 0
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/id$e;

    .line 51024
    iget-object v0, v0, Lcom/google/android/gms/internal/id$e;->a:Lcom/google/android/gms/internal/if;

    .line 0
    const-string/jumbo v2, "permission_denied"

    invoke-interface {v0, v2, v4}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->e()Z

    move-result v0

    const-string/jumbo v3, "Must be connected to send auth, but was: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/hz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Auth token must be set to authenticate!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/hz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/id$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/id$3;-><init>(Lcom/google/android/gms/internal/id;Z)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/id;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/mk;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/mk;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v4, "cred"

    .line 51025
    iget-object v5, v3, Lcom/google/android/gms/internal/mk;->a:Ljava/lang/String;

    .line 0
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51026
    iget-object v4, v3, Lcom/google/android/gms/internal/mk;->b:Ljava/util/Map;

    .line 0
    if-eqz v4, :cond_0

    const-string/jumbo v4, "authvar"

    .line 51027
    iget-object v3, v3, Lcom/google/android/gms/internal/mk;->b:Ljava/util/Map;

    .line 0
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v3, "gauth"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/id$a;)V

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "cred"

    iget-object v4, p0, Lcom/google/android/gms/internal/id;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "auth"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;ZLjava/util/Map;Lcom/google/android/gms/internal/id$a;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/id$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/id;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/id;->y:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/id;->y:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/id;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/id;->y:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/id;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->h()V

    return-void
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    sget-object v1, Lcom/google/android/gms/internal/id$b;->d:Lcom/google/android/gms/internal/id$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    sget-object v1, Lcom/google/android/gms/internal/id$b;->e:Lcom/google/android/gms/internal/id$b;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/hx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->u:Lcom/google/android/gms/internal/hx;

    return-object v0
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    sget-object v1, Lcom/google/android/gms/internal/id$b;->e:Lcom/google/android/gms/internal/id$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/id;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/id;->z:I

    return v0
.end method

.method private g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->k:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/ic$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->a:Lcom/google/android/gms/internal/ic$a;

    return-object v0
.end method

.method private h()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    sget-object v3, Lcom/google/android/gms/internal/id$b;->a:Lcom/google/android/gms/internal/id$b;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Not in disconnected state: %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    aput-object v7, v6, v2

    invoke-static {v0, v3, v6}, Lcom/google/android/gms/internal/hz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/id;->t:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v6, "Scheduling connection attempt"

    new-array v7, v2, [Ljava/lang/Object;

    .line 51011
    invoke-virtual {v3, v6, v10, v7}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/id;->t:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/id;->x:Lcom/google/android/gms/internal/ih;

    new-instance v6, Lcom/google/android/gms/internal/id$1;

    invoke-direct {v6, p0, v0}, Lcom/google/android/gms/internal/id$1;-><init>(Lcom/google/android/gms/internal/id;Z)V

    .line 51012
    new-instance v0, Lcom/google/android/gms/internal/ih$1;

    invoke-direct {v0, v3, v6}, Lcom/google/android/gms/internal/ih$1;-><init>(Lcom/google/android/gms/internal/ih;Ljava/lang/Runnable;)V

    iget-object v6, v3, Lcom/google/android/gms/internal/ih;->h:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v6, :cond_0

    iget-object v6, v3, Lcom/google/android/gms/internal/ih;->b:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v7, "Cancelling previous scheduled retry"

    new-array v8, v2, [Ljava/lang/Object;

    .line 51013
    invoke-virtual {v6, v7, v10, v8}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 51012
    iget-object v6, v3, Lcom/google/android/gms/internal/ih;->h:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v6, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v10, v3, Lcom/google/android/gms/internal/ih;->h:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-boolean v6, v3, Lcom/google/android/gms/internal/ih;->j:Z

    if-eqz v6, :cond_3

    :goto_1
    iput-boolean v2, v3, Lcom/google/android/gms/internal/ih;->j:Z

    iget-object v6, v3, Lcom/google/android/gms/internal/ih;->b:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v7, "Scheduling retry in %dms"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v1, v2

    .line 51014
    invoke-virtual {v6, v7, v10, v1}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 51012
    iget-object v1, v3, Lcom/google/android/gms/internal/ih;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v4, v5, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/internal/ih;->h:Ljava/util/concurrent/ScheduledFuture;

    .line 0
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    .line 51012
    :cond_3
    iget-wide v6, v3, Lcom/google/android/gms/internal/ih;->i:J

    cmp-long v4, v6, v4

    if-nez v4, :cond_4

    iget-wide v4, v3, Lcom/google/android/gms/internal/ih;->c:J

    iput-wide v4, v3, Lcom/google/android/gms/internal/ih;->i:J

    :goto_2
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, v3, Lcom/google/android/gms/internal/ih;->e:D

    sub-double/2addr v4, v6

    iget-wide v6, v3, Lcom/google/android/gms/internal/ih;->i:J

    long-to-double v6, v6

    mul-double/2addr v4, v6

    iget-wide v6, v3, Lcom/google/android/gms/internal/ih;->e:D

    iget-wide v8, v3, Lcom/google/android/gms/internal/ih;->i:J

    long-to-double v8, v8

    mul-double/2addr v6, v8

    iget-object v8, v3, Lcom/google/android/gms/internal/ih;->g:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-long v4, v4

    goto :goto_1

    :cond_4
    iget-wide v4, v3, Lcom/google/android/gms/internal/ih;->i:J

    long-to-double v4, v4

    iget-wide v6, v3, Lcom/google/android/gms/internal/ih;->f:D

    mul-double/2addr v4, v6

    double-to-long v4, v4

    iget-wide v6, v3, Lcom/google/android/gms/internal/ih;->d:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gms/internal/ih;->i:J

    goto :goto_2
.end method

.method private i()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/id$f;

    .line 51015
    iget-object v2, v0, Lcom/google/android/gms/internal/id$f;->b:Ljava/util/Map;

    .line 0
    const-string/jumbo v3, "h"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51016
    iget-boolean v2, v0, Lcom/google/android/gms/internal/id$f;->d:Z

    .line 0
    if-eqz v2, :cond_0

    .line 51017
    iget-object v0, v0, Lcom/google/android/gms/internal/id$f;->c:Lcom/google/android/gms/internal/if;

    .line 0
    const-string/jumbo v2, "disconnected"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/google/android/gms/internal/id;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->j()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/gms/internal/id;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/id;->f:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    sget-object v3, Lcom/google/android/gms/internal/id$b;->e:Lcom/google/android/gms/internal/id$b;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    const-string/jumbo v3, "Should be connected if we\'re restoring state, but we are: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/hz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v1, "Restoring outstanding listens"

    new-array v3, v2, [Ljava/lang/Object;

    .line 51028
    invoke-virtual {v0, v1, v7, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/id$e;

    iget-object v3, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    .line 51029
    iget-object v4, v0, Lcom/google/android/gms/internal/id$e;->b:Lcom/google/android/gms/internal/id$c;

    .line 0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Restoring listen "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 51030
    invoke-virtual {v3, v4, v7, v5}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id$e;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v1, "Restoring writes."

    new-array v2, v2, [Ljava/lang/Object;

    .line 51031
    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->r:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/id;->a(J)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/id$d;

    .line 51032
    iget-object v2, v0, Lcom/google/android/gms/internal/id$d;->a:Ljava/lang/String;

    .line 51033
    iget-object v3, v0, Lcom/google/android/gms/internal/id$d;->b:Ljava/util/List;

    .line 51034
    iget-object v4, v0, Lcom/google/android/gms/internal/id$d;->c:Ljava/lang/Object;

    .line 51035
    iget-object v0, v0, Lcom/google/android/gms/internal/id$d;->d:Lcom/google/android/gms/internal/if;

    .line 0
    invoke-direct {p0, v2, v3, v4, v0}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/if;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->A:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->A:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->v:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/id$7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/id$7;-><init>(Lcom/google/android/gms/internal/id;)V

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/id;->A:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "connection_idle"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/id;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->l()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 51055
    :goto_1
    const-string/jumbo v2, ""

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/hz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 0
    const-string/jumbo v0, "connection_idle"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/id;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic k(Lcom/google/android/gms/internal/id;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/id;->t:Z

    return v0
.end method

.method static synthetic l(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/hw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->d:Lcom/google/android/gms/internal/hw;

    return-object v0
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/id;->C:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic m(Lcom/google/android/gms/internal/id;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/id;->z:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/id;->z:I

    return v0
.end method

.method static synthetic n(Lcom/google/android/gms/internal/id;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/id;->z:I

    return v0
.end method

.method static synthetic o(Lcom/google/android/gms/internal/id;)Lcom/google/android/gms/internal/ih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->x:Lcom/google/android/gms/internal/ih;

    return-object v0
.end method

.method static synthetic p(Lcom/google/android/gms/internal/id;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->r:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic q(Lcom/google/android/gms/internal/id;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->k()V

    return-void
.end method

.method static synthetic r(Lcom/google/android/gms/internal/id;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->s:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic s(Lcom/google/android/gms/internal/id;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/id;->A:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic t(Lcom/google/android/gms/internal/id;)Z
    .locals 6

    .prologue
    .line 51059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/id;->B:J

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 0
    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->h()V

    return-void
.end method

.method public final a(JLjava/lang/String;)V
    .locals 9

    .prologue
    const/16 v8, 0x2e

    const/16 v7, 0x2d

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v3, "onReady"

    new-array v4, v2, [Ljava/lang/Object;

    .line 10000
    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/id;->m:J

    .line 11000
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v3, "handling timestamp"

    new-array v4, v2, [Ljava/lang/Object;

    .line 12000
    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 11000
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "serverTimeOffset"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/id;->a:Lcom/google/android/gms/internal/ic$a;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ic$a;->a(Ljava/util/Map;)V

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/id;->l:Z

    if-eqz v0, :cond_4

    .line 13000
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/mj;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->g:Lcom/google/android/gms/internal/hy;

    .line 14000
    iget-boolean v0, v0, Lcom/google/android/gms/internal/hy;->d:Z

    .line 13000
    if-eqz v0, :cond_2

    const-string/jumbo v0, "persistence.android.enabled"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v4, "sdk.android."

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->g:Lcom/google/android/gms/internal/hy;

    .line 15000
    iget-object v0, v0, Lcom/google/android/gms/internal/hy;->e:Ljava/lang/String;

    .line 13000
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v4, "Sending first connection stats"

    new-array v5, v2, [Ljava/lang/Object;

    .line 18000
    invoke-virtual {v0, v4, v6, v5}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 19000
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "c"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "s"

    new-instance v4, Lcom/google/android/gms/internal/id$6;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/id$6;-><init>(Lcom/google/android/gms/internal/id;)V

    invoke-direct {p0, v3, v0, v4}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/id$a;)V

    .line 21000
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v3, "calling restore state"

    new-array v4, v2, [Ljava/lang/Object;

    .line 22000
    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 21000
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    sget-object v3, Lcom/google/android/gms/internal/id$b;->c:Lcom/google/android/gms/internal/id$b;

    if-ne v0, v3, :cond_c

    move v0, v1

    :goto_3
    const-string/jumbo v3, "Wanted to restore auth, but was in wrong state: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/hz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->f:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v1, "Not restoring auth because token is null."

    new-array v3, v2, [Ljava/lang/Object;

    .line 23000
    invoke-virtual {v0, v1, v6, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 21000
    :cond_6
    sget-object v0, Lcom/google/android/gms/internal/id$b;->e:Lcom/google/android/gms/internal/id$b;

    iput-object v0, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->j()V

    .line 0
    :goto_4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/id;->l:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/id;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->a:Lcom/google/android/gms/internal/ic$a;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ic$a;->a()V

    return-void

    .line 13000
    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    sget-boolean v0, Lcom/google/android/gms/internal/id;->i:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->g:Lcom/google/android/gms/internal/hy;

    .line 16000
    iget-boolean v0, v0, Lcom/google/android/gms/internal/hy;->d:Z

    .line 13000
    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Stats for persistence on JVM missing (persistence not yet supported)"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_9
    const-string/jumbo v4, "sdk.java."

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->g:Lcom/google/android/gms/internal/hy;

    .line 17000
    iget-object v0, v0, Lcom/google/android/gms/internal/hy;->e:Ljava/lang/String;

    .line 13000
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 19000
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v3, "Not sending stats because stats are empty"

    new-array v4, v2, [Ljava/lang/Object;

    .line 20000
    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_c
    move v0, v2

    .line 21000
    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v3, "Restoring auth."

    new-array v4, v2, [Ljava/lang/Object;

    .line 24000
    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 21000
    :cond_e
    sget-object v0, Lcom/google/android/gms/internal/id$b;->d:Lcom/google/android/gms/internal/id$b;

    iput-object v0, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    .line 25000
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/id;->a(Z)V

    goto :goto_4
.end method

.method public final a(Lcom/google/android/gms/internal/hw$b;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v3, "Got on disconnect due to "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hw$b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    .line 43000
    invoke-virtual {v2, v0, v5, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/id$b;->a:Lcom/google/android/gms/internal/id$b;

    iput-object v0, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    iput-object v5, p0, Lcom/google/android/gms/internal/id;->d:Lcom/google/android/gms/internal/hw;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/id;->C:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->i()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/id;->m:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/id;->m:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/hw$b;->a:Lcom/google/android/gms/internal/hw$b;

    if-eq p1, v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->x:Lcom/google/android/gms/internal/ih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ih;->a()V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->h()V

    :cond_3
    iput-wide v6, p0, Lcom/google/android/gms/internal/id;->m:J

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->a:Lcom/google/android/gms/internal/ic$a;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ic$a;->b()V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/id;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/google/android/gms/internal/if;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/if;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "oc"

    invoke-direct {p0, v0, p1, v3, p2}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/if;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->k()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/id;->q:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/id$d;

    const-string/jumbo v1, "oc"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/id$d;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/if;B)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/if;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/if;",
            ")V"
        }
    .end annotation

    const-string/jumbo v1, "p"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/if;)V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/if;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/if;",
            ")V"
        }
    .end annotation

    const-string/jumbo v1, "p"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/if;)V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/id$c;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/id$c;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "unlistening on "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 45000
    invoke-virtual {v1, v2, v5, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id$c;)Lcom/google/android/gms/internal/id$e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46000
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "p"

    .line 47000
    iget-object v3, v0, Lcom/google/android/gms/internal/id$e;->b:Lcom/google/android/gms/internal/id$c;

    .line 48000
    iget-object v3, v3, Lcom/google/android/gms/internal/id$c;->a:Ljava/util/List;

    .line 46000
    invoke-static {v3}, Lcom/google/android/gms/internal/hz;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49000
    iget-object v2, v0, Lcom/google/android/gms/internal/id$e;->d:Ljava/lang/Long;

    .line 46000
    if-eqz v2, :cond_1

    const-string/jumbo v3, "q"

    .line 50000
    iget-object v0, v0, Lcom/google/android/gms/internal/id$e;->b:Lcom/google/android/gms/internal/id$c;

    .line 51000
    iget-object v0, v0, Lcom/google/android/gms/internal/id$c;->b:Ljava/util/Map;

    .line 46000
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "t"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/id$a;)V

    .line 0
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->k()V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/ib;Ljava/lang/Long;Lcom/google/android/gms/internal/if;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/ib;",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/internal/if;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 0
    new-instance v2, Lcom/google/android/gms/internal/id$c;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/id$c;-><init>(Ljava/util/List;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Listening on "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    .line 26000
    invoke-virtual {v0, v1, v6, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->s:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "listen() called twice for same QuerySpec."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/hz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Adding listen query: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    .line 27000
    invoke-virtual {v0, v1, v6, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/id$e;

    move-object v1, p5

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/id$e;-><init>(Lcom/google/android/gms/internal/if;Lcom/google/android/gms/internal/id$c;Ljava/lang/Long;Lcom/google/android/gms/internal/ib;B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->s:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/id;->a(Lcom/google/android/gms/internal/id$e;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->k()V

    return-void

    :cond_3
    move v0, v5

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/if;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/if;",
            ")V"
        }
    .end annotation

    const-string/jumbo v1, "m"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/if;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 0
    const-string/jumbo v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "r"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/id;->p:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/id$a;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "b"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/id$a;->a(Ljava/util/Map;)V

    .line 32000
    :cond_0
    :goto_0
    return-void

    .line 0
    :cond_1
    const-string/jumbo v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "a"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "b"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 32000
    iget-object v2, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x16

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "handleServerMessage: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v10, [Ljava/lang/Object;

    .line 33000
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 32000
    :cond_2
    const-string/jumbo v2, "d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    const-string/jumbo v2, "m"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v0, "p"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v5, "t"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/hz;->a(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v3, :cond_5

    instance-of v1, v2, Ljava/util/Map;

    if-eqz v1, :cond_5

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v2, "ignoring empty merge for path "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v2, v10, [Ljava/lang/Object;

    .line 34000
    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 32000
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->a:Lcom/google/android/gms/internal/ic$a;

    invoke-interface {v1, v0, v2, v3, v5}, Lcom/google/android/gms/internal/ic$a;->a(Ljava/util/List;Ljava/lang/Object;ZLjava/lang/Long;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "rm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v0, "p"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "t"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/hz;->a(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v7

    move-object v1, v2

    check-cast v1, Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string/jumbo v2, "s"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "e"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/google/android/gms/internal/hz;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    :goto_3
    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/google/android/gms/internal/hz;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_4
    const-string/jumbo v3, "m"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ie;

    invoke-direct {v3, v5, v2, v1}, Lcom/google/android/gms/internal/ie;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v5, v4

    goto :goto_3

    :cond_8
    move-object v2, v4

    goto :goto_4

    :cond_9
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v2, "Ignoring empty range merge for path "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    new-array v2, v10, [Ljava/lang/Object;

    .line 35000
    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 32000
    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->a:Lcom/google/android/gms/internal/ic$a;

    invoke-interface {v0, v6, v8, v7}, Lcom/google/android/gms/internal/ic$a;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v0, "p"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/id;->a(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "ac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v0, "s"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "d"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36000
    iget-object v2, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Auth token revoked: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/id;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/id;->t:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->a:Lcom/google/android/gms/internal/ic$a;

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/ic$a;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->d:Lcom/google/android/gms/internal/hw;

    .line 37000
    sget-object v1, Lcom/google/android/gms/internal/hw$b;->b:Lcom/google/android/gms/internal/hw$b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hw;->a(Lcom/google/android/gms/internal/hw$b;)V

    goto/16 :goto_0

    .line 32000
    :cond_e
    const-string/jumbo v2, "sd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 38000
    iget-object v4, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v0, "msg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 39000
    iget-object v0, v4, Lcom/google/android/gms/internal/lc;->a:Lcom/google/android/gms/internal/ld;

    sget-object v1, Lcom/google/android/gms/internal/ld$a;->b:Lcom/google/android/gms/internal/ld$a;

    iget-object v2, v4, Lcom/google/android/gms/internal/lc;->b:Ljava/lang/String;

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 40000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 39000
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ld;->b(Lcom/google/android/gms/internal/ld$a;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 32000
    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v2, "Unrecognized action from server: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    new-array v2, v10, [Ljava/lang/Object;

    .line 41000
    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 32000
    :cond_10
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 0
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Ignoring unknown message: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    .line 42000
    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 1

    const-string/jumbo v0, "shutdown"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/id;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v2, "Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 44000
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    const-string/jumbo v0, "server_kill"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/id;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/if;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/if;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/id;->C:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "o"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/if;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->k()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/id;->q:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/id$d;

    const-string/jumbo v1, "o"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/id$d;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/if;B)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final b(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/if;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/if;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/id;->C:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "om"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/if;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->k()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/id;->q:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/id$d;

    const-string/jumbo v1, "om"

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/id$d;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/gms/internal/if;B)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v1, "Auth token refresh requested"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 51007
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    const-string/jumbo v0, "token_refresh"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/id;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "token_refresh"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/id;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v2, "Auth token refreshed."

    new-array v3, v1, [Ljava/lang/Object;

    .line 51008
    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/id;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 51009
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/id;->a(Z)V

    .line 0
    :cond_0
    :goto_0
    return-void

    .line 51010
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->e()Z

    move-result v0

    const-string/jumbo v2, "Must be connected to send unauth."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/hz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v2, "Auth token must not be set."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/hz;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "unauth"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/gms/internal/id;->a(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/id$a;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/id$f;

    .line 28000
    iget-object v2, v0, Lcom/google/android/gms/internal/id$f;->c:Lcom/google/android/gms/internal/if;

    .line 0
    if-eqz v2, :cond_0

    .line 29000
    iget-object v0, v0, Lcom/google/android/gms/internal/id$f;->c:Lcom/google/android/gms/internal/if;

    .line 0
    const-string/jumbo v2, "write_canceled"

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/id$d;

    .line 30000
    iget-object v2, v0, Lcom/google/android/gms/internal/id$d;->d:Lcom/google/android/gms/internal/if;

    .line 0
    if-eqz v2, :cond_2

    .line 31000
    iget-object v0, v0, Lcom/google/android/gms/internal/id$d;->d:Lcom/google/android/gms/internal/if;

    .line 0
    const-string/jumbo v2, "write_canceled"

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->e()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/id;->C:Z

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->k()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v2, "Connection interrupted for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v5, [Ljava/lang/Object;

    .line 51001
    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->d:Lcom/google/android/gms/internal/hw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->d:Lcom/google/android/gms/internal/hw;

    .line 51002
    sget-object v1, Lcom/google/android/gms/internal/hw$b;->b:Lcom/google/android/gms/internal/hw$b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hw;->a(Lcom/google/android/gms/internal/hw$b;)V

    .line 0
    iput-object v4, p0, Lcom/google/android/gms/internal/id;->d:Lcom/google/android/gms/internal/hw;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->x:Lcom/google/android/gms/internal/ih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ih;->a()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->x:Lcom/google/android/gms/internal/ih;

    .line 51003
    iget-object v1, v0, Lcom/google/android/gms/internal/ih;->h:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/ih;->b:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v2, "Cancelling existing retry attempt"

    new-array v3, v5, [Ljava/lang/Object;

    .line 51004
    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 51003
    iget-object v1, v0, Lcom/google/android/gms/internal/ih;->h:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v4, v0, Lcom/google/android/gms/internal/ih;->h:Ljava/util/concurrent/ScheduledFuture;

    :goto_2
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ih;->i:J

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/id$b;->a:Lcom/google/android/gms/internal/id$b;

    iput-object v0, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    goto :goto_1

    .line 51003
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ih;->b:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v2, "No existing retry attempt to cancel"

    new-array v3, v5, [Ljava/lang/Object;

    .line 51005
    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/id;->w:Lcom/google/android/gms/internal/lc;

    const-string/jumbo v2, "Connection no longer interrupted for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 51006
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/id;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->e:Lcom/google/android/gms/internal/id$b;

    sget-object v1, Lcom/google/android/gms/internal/id$b;->a:Lcom/google/android/gms/internal/id$b;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/id;->h()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/id;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
