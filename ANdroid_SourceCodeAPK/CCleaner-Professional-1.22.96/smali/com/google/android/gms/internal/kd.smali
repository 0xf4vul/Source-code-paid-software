.class public Lcom/google/android/gms/internal/kd;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/android/gms/internal/kf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kf",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/kq;",
            "Lcom/google/android/gms/internal/kc;",
            ">;>;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/android/gms/internal/kf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kf",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/kq;",
            "Lcom/google/android/gms/internal/kc;",
            ">;>;"
        }
    .end annotation
.end field

.field static final c:Lcom/google/android/gms/internal/kf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kf",
            "<",
            "Lcom/google/android/gms/internal/kc;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic h:Z

.field private static final i:Lcom/google/android/gms/internal/kf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kf",
            "<",
            "Lcom/google/android/gms/internal/kc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field d:Lcom/google/android/gms/internal/ke;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ke",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/kq;",
            "Lcom/google/android/gms/internal/kc;",
            ">;>;"
        }
    .end annotation
.end field

.field final e:Lcom/google/android/gms/internal/ka;

.field final f:Lcom/google/android/gms/internal/mm;

.field g:J

.field private final j:Lcom/google/android/gms/internal/lc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/kd;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/kd;->h:Z

    new-instance v0, Lcom/google/android/gms/internal/kd$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kd$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kd;->a:Lcom/google/android/gms/internal/kf;

    new-instance v0, Lcom/google/android/gms/internal/kd$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kd$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kd;->b:Lcom/google/android/gms/internal/kf;

    new-instance v0, Lcom/google/android/gms/internal/kd$3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kd$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kd;->c:Lcom/google/android/gms/internal/kf;

    new-instance v0, Lcom/google/android/gms/internal/kd$4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kd$4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kd;->i:Lcom/google/android/gms/internal/kf;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ka;Lcom/google/android/gms/internal/lc;Lcom/google/android/gms/internal/mm;)V
    .locals 6

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/kd;->g:J

    iput-object p1, p0, Lcom/google/android/gms/internal/kd;->e:Lcom/google/android/gms/internal/ka;

    iput-object p2, p0, Lcom/google/android/gms/internal/kd;->j:Lcom/google/android/gms/internal/lc;

    iput-object p3, p0, Lcom/google/android/gms/internal/kd;->f:Lcom/google/android/gms/internal/mm;

    new-instance v0, Lcom/google/android/gms/internal/ke;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ke;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    .line 3000
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->e:Lcom/google/android/gms/internal/ka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ka;->d()V

    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->e:Lcom/google/android/gms/internal/ka;

    iget-object v1, p0, Lcom/google/android/gms/internal/kd;->f:Lcom/google/android/gms/internal/mm;

    invoke-interface {v1}, Lcom/google/android/gms/internal/mm;->a()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ka;->c(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->e:Lcom/google/android/gms/internal/ka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ka;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->e:Lcom/google/android/gms/internal/ka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ka;->e()V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->e:Lcom/google/android/gms/internal/ka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ka;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kc;

    iget-wide v2, v0, Lcom/google/android/gms/internal/kc;->a:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/kd;->g:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/kd;->g:J

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kd;->b(Lcom/google/android/gms/internal/kc;)V

    goto :goto_0

    .line 3000
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/kd;->e:Lcom/google/android/gms/internal/ka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ka;->e()V

    throw v0

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/internal/kf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kd;->c:Lcom/google/android/gms/internal/kf;

    return-object v0
.end method

.method static a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;
    .locals 1

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-static {v0}, Lcom/google/android/gms/internal/kr;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kr;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/kd;Lcom/google/android/gms/internal/kc;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kc;)V

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/kc;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 0
    iget-object v0, p1, Lcom/google/android/gms/internal/kc;->b:Lcom/google/android/gms/internal/kr;

    .line 25000
    iget-object v3, v0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v3

    .line 24000
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kr;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v3, "Can\'t have tracked non-default query that loads all data"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/mv;->a(ZLjava/lang/String;)V

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    iget-object v3, p1, Lcom/google/android/gms/internal/kc;->b:Lcom/google/android/gms/internal/kr;

    .line 26000
    iget-object v3, v3, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ke;->e(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    iget-object v4, p1, Lcom/google/android/gms/internal/kc;->b:Lcom/google/android/gms/internal/kr;

    .line 27000
    iget-object v4, v4, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/iu;Ljava/lang/Object;)Lcom/google/android/gms/internal/ke;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    move-object v3, v0

    :goto_1
    iget-object v0, p1, Lcom/google/android/gms/internal/kc;->b:Lcom/google/android/gms/internal/kr;

    .line 28000
    iget-object v0, v0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 0
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kc;

    if-eqz v0, :cond_1

    iget-wide v4, v0, Lcom/google/android/gms/internal/kc;->a:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/kc;->a:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/mv;->a(Z)V

    iget-object v0, p1, Lcom/google/android/gms/internal/kc;->b:Lcom/google/android/gms/internal/kr;

    .line 29000
    iget-object v0, v0, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 0
    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    move v0, v1

    .line 24000
    goto :goto_0

    :cond_4
    move-object v3, v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/jv;)Lcom/google/android/gms/internal/kb;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/kd;->c:Lcom/google/android/gms/internal/kf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kf;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    .line 13000
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1}, Lcom/google/android/gms/internal/jv;->a()F

    move-result v5

    sub-float/2addr v2, v5

    long-to-float v5, v0

    mul-float/2addr v2, v5

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-interface {p1}, Lcom/google/android/gms/internal/jv;->b()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long v6, v0, v6

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/kb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/kb;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->j:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->j:Lcom/google/android/gms/internal/lc;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v5, 0x50

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Pruning old queries.  Prunable: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " Count to prune: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    .line 14000
    invoke-virtual {v0, v2, v12, v5}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/kd$6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kd$6;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v3

    :goto_0
    int-to-long v8, v2

    cmp-long v0, v8, v6

    if-gez v0, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kc;

    iget-object v5, v0, Lcom/google/android/gms/internal/kc;->b:Lcom/google/android/gms/internal/kr;

    .line 15000
    iget-object v5, v5, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/kb;->a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kb;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/kc;->b:Lcom/google/android/gms/internal/kr;

    .line 16000
    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/kd;->b(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kc;

    move-result-object v0

    sget-boolean v8, Lcom/google/android/gms/internal/kd;->h:Z

    if-nez v8, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Query must exist to be removed."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iget-object v8, p0, Lcom/google/android/gms/internal/kd;->e:Lcom/google/android/gms/internal/ka;

    iget-wide v10, v0, Lcom/google/android/gms/internal/kc;->a:J

    invoke-interface {v8, v10, v11}, Lcom/google/android/gms/internal/ka;->b(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    .line 17000
    iget-object v8, v5, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 16000
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ke;->e(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 18000
    iget-object v8, v5, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 16000
    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    .line 19000
    iget-object v5, v5, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 16000
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ke;->d(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    .line 0
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    long-to-int v0, v6

    move-object v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kc;

    iget-object v0, v0, Lcom/google/android/gms/internal/kc;->b:Lcom/google/android/gms/internal/kr;

    .line 20000
    iget-object v0, v0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/kb;->b(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kb;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/kd;->i:Lcom/google/android/gms/internal/kf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kf;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/kd;->j:Lcom/google/android/gms/internal/lc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/lc;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/kd;->j:Lcom/google/android/gms/internal/lc;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Unprunable queries: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    .line 21000
    invoke-virtual {v1, v4, v12, v3}, Lcom/google/android/gms/internal/lc;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 0
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kc;

    iget-object v0, v0, Lcom/google/android/gms/internal/kc;->b:Lcom/google/android/gms/internal/kr;

    .line 22000
    iget-object v0, v0, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/kb;->b(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/kb;

    move-result-object v2

    goto :goto_2

    :cond_6
    return-object v2
.end method

.method final a(Lcom/google/android/gms/internal/kf;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/kf",
            "<",
            "Lcom/google/android/gms/internal/kc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/kc;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ke;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kc;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/kf;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method final a(Lcom/google/android/gms/internal/kc;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/kd;->b(Lcom/google/android/gms/internal/kc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->e:Lcom/google/android/gms/internal/ka;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/kc;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/kr;Z)V
    .locals 9

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/kd;->b(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kc;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->f:Lcom/google/android/gms/internal/mm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mm;->a()J

    move-result-wide v4

    if-eqz v7, :cond_0

    .line 6000
    new-instance v0, Lcom/google/android/gms/internal/kc;

    iget-wide v1, v7, Lcom/google/android/gms/internal/kc;->a:J

    iget-object v3, v7, Lcom/google/android/gms/internal/kc;->b:Lcom/google/android/gms/internal/kr;

    iget-boolean v6, v7, Lcom/google/android/gms/internal/kc;->d:Z

    iget-boolean v7, v7, Lcom/google/android/gms/internal/kc;->e:Z

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/kc;-><init>(JLcom/google/android/gms/internal/kr;JZZ)V

    .line 7000
    new-instance v8, Lcom/google/android/gms/internal/kc;

    iget-wide v1, v0, Lcom/google/android/gms/internal/kc;->a:J

    iget-object v3, v0, Lcom/google/android/gms/internal/kc;->b:Lcom/google/android/gms/internal/kr;

    iget-wide v4, v0, Lcom/google/android/gms/internal/kc;->c:J

    iget-boolean v6, v0, Lcom/google/android/gms/internal/kc;->d:Z

    move-object v0, v8

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/kc;-><init>(JLcom/google/android/gms/internal/kr;JZZ)V

    move-object v0, v8

    .line 0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kc;)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/google/android/gms/internal/kd;->h:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "If we\'re setting the query to inactive, we should already be tracking it!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/kc;

    iget-wide v1, p0, Lcom/google/android/gms/internal/kd;->g:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    iput-wide v6, p0, Lcom/google/android/gms/internal/kd;->g:J

    const/4 v6, 0x0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/kc;-><init>(JLcom/google/android/gms/internal/kr;JZZ)V

    goto :goto_0
.end method

.method final a(Lcom/google/android/gms/internal/iu;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    sget-object v1, Lcom/google/android/gms/internal/kd;->a:Lcom/google/android/gms/internal/kf;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/iu;Lcom/google/android/gms/internal/kf;)Lcom/google/android/gms/internal/iu;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kc;
    .locals 3

    .prologue
    .line 0
    invoke-static {p1}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kr;)Lcom/google/android/gms/internal/kr;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    .line 4000
    iget-object v2, v1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ke;->e(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 5000
    iget-object v1, v1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kc;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Lcom/google/android/gms/internal/iu;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/iu;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ke;->e(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kc;

    iget-object v3, v0, Lcom/google/android/gms/internal/kc;->b:Lcom/google/android/gms/internal/kr;

    .line 23000
    iget-object v3, v3, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v3

    .line 0
    if-nez v3, :cond_0

    iget-wide v4, v0, Lcom/google/android/gms/internal/kc;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final c(Lcom/google/android/gms/internal/kr;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 0
    .line 8000
    iget-object v0, p1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/iu;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    .line 9000
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/kq;->f()Z

    move-result v0

    .line 0
    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/kd;->d:Lcom/google/android/gms/internal/ke;

    .line 10000
    iget-object v3, p1, Lcom/google/android/gms/internal/kr;->a:Lcom/google/android/gms/internal/iu;

    .line 0
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ke;->e(Lcom/google/android/gms/internal/iu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 11000
    iget-object v3, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 0
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12000
    iget-object v3, p1, Lcom/google/android/gms/internal/kr;->b:Lcom/google/android/gms/internal/kq;

    .line 0
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/kc;->d:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
