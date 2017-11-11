.class public abstract Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/mz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/FirebaseAuth$a;
    }
.end annotation


# static fields
.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/google/firebase/auth/FirebaseAuth;


# instance fields
.field public a:Lcom/google/firebase/b;

.field public b:Lcom/google/android/gms/internal/fr;

.field public c:Lcom/google/firebase/auth/i;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/gw;

.field private f:Lcom/google/android/gms/internal/gx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/h/a;

    invoke-direct {v0}, Landroid/support/v4/h/a;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/FirebaseAuth;->g:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/b;)V
    .locals 5

    .prologue
    .line 0
    .line 3000
    new-instance v0, Lcom/google/android/gms/internal/ga$a$a;

    invoke-virtual {p1}, Lcom/google/firebase/b;->c()Lcom/google/firebase/e;

    move-result-object v1

    .line 4000
    iget-object v1, v1, Lcom/google/firebase/e;->a:Ljava/lang/String;

    .line 3000
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ga$a$a;-><init>(Ljava/lang/String;)V

    .line 5000
    new-instance v1, Lcom/google/android/gms/internal/ga$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/ga$a$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ga$a;-><init>(Ljava/lang/String;B)V

    .line 3000
    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ga;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ga$a;)Lcom/google/android/gms/internal/fr;

    move-result-object v0

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/gw;

    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/fw;->a()Lcom/google/android/gms/internal/np;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/gw;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/np;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;-><init>(Lcom/google/firebase/b;Lcom/google/android/gms/internal/fr;Lcom/google/android/gms/internal/gw;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/b;Lcom/google/android/gms/internal/fr;Lcom/google/android/gms/internal/gw;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/b;

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/b;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fr;

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Lcom/google/android/gms/internal/fr;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gw;

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/gw;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/internal/gx;->a()Lcom/google/android/gms/internal/gx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/android/gms/internal/gx;

    .line 6000
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/gw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gw;->a()Lcom/google/firebase/auth/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/gw;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    .line 7000
    invoke-static {v1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/firebase/auth/i;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/zzbmn;

    .line 8000
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 7000
    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/zzbmn;

    .line 6000
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    invoke-virtual {p0, v1, v0, v4}, Lcom/google/firebase/auth/FirebaseAuth;->a(Lcom/google/firebase/auth/i;Lcom/google/android/gms/internal/zzbmn;Z)V

    .line 0
    :cond_0
    return-void

    .line 8000
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/np;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/np;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    .prologue
    .line 0
    invoke-static {}, Lcom/google/firebase/b;->d()Lcom/google/firebase/b;

    move-result-object v0

    .line 1000
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->a(Lcom/google/firebase/b;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method private static declared-synchronized a(Lcom/google/firebase/b;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 4

    .prologue
    .line 0
    const-class v2, Lcom/google/firebase/auth/FirebaseAuth;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/firebase/auth/FirebaseAuth;->g:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/gu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gu;-><init>(Lcom/google/firebase/b;)V

    .line 25000
    invoke-static {v1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mz;

    iput-object v0, p0, Lcom/google/firebase/b;->e:Lcom/google/android/gms/internal/mz;

    .line 0
    sget-object v0, Lcom/google/firebase/auth/FirebaseAuth;->h:Lcom/google/firebase/auth/FirebaseAuth;

    if-nez v0, :cond_0

    sput-object v1, Lcom/google/firebase/auth/FirebaseAuth;->h:Lcom/google/firebase/auth/FirebaseAuth;

    :cond_0
    sget-object v0, Lcom/google/firebase/auth/FirebaseAuth;->g:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/firebase/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :cond_1
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic a(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/b;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/b;

    return-object v0
.end method

.method static synthetic b(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/b;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 0
    .line 2000
    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->a(Lcom/google/firebase/b;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 0
    return-object v0
.end method


# virtual methods
.method public final a(Z)Lcom/google/android/gms/b/e;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/b/e",
            "<",
            "Lcom/google/firebase/auth/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    .line 26000
    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4457

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/fu;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/b/h;->a(Ljava/lang/Exception;)Lcom/google/android/gms/b/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    invoke-virtual {v0}, Lcom/google/firebase/auth/i;->e()Lcom/google/android/gms/internal/zzbmn;

    move-result-object v2

    .line 27000
    iget-object v0, v2, Lcom/google/android/gms/internal/zzbmn;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v2, Lcom/google/android/gms/internal/zzbmn;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {}, Lcom/google/android/gms/common/util/f;->d()Lcom/google/android/gms/common/util/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v6

    const-wide/32 v8, 0x493e0

    add-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 26000
    :goto_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    new-instance v0, Lcom/google/firebase/auth/j;

    .line 28000
    iget-object v1, v2, Lcom/google/android/gms/internal/zzbmn;->c:Ljava/lang/String;

    .line 26000
    invoke-direct {v0, v1}, Lcom/google/firebase/auth/j;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/b/h;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/e;

    move-result-object v0

    goto :goto_0

    .line 27000
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 26000
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Lcom/google/android/gms/internal/fr;

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/b;

    .line 29000
    iget-object v2, v2, Lcom/google/android/gms/internal/zzbmn;->b:Ljava/lang/String;

    .line 26000
    new-instance v4, Lcom/google/firebase/auth/FirebaseAuth$2;

    invoke-direct {v4, p0}, Lcom/google/firebase/auth/FirebaseAuth$2;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 30000
    new-instance v5, Lcom/google/android/gms/internal/fr$a;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/fr$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/fr$a;->a(Lcom/google/firebase/b;)Lcom/google/android/gms/internal/gd;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gd;->a(Lcom/google/firebase/auth/i;)Lcom/google/android/gms/internal/gd;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/gd;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/gd;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/fr;->a(Lcom/google/android/gms/internal/gd;)Lcom/google/android/gms/internal/fr$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fr;->a(Lcom/google/android/gms/internal/as;)Lcom/google/android/gms/b/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/firebase/auth/i;Lcom/google/android/gms/internal/zzbmn;Z)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    invoke-virtual {v0}, Lcom/google/firebase/auth/i;->e()Lcom/google/android/gms/internal/zzbmn;

    move-result-object v0

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzbmn;->c:Ljava/lang/String;

    .line 10000
    iget-object v1, p2, Lcom/google/android/gms/internal/zzbmn;->c:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    invoke-virtual {v1}, Lcom/google/firebase/auth/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/auth/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move v4, v3

    .line 11000
    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    :goto_2
    if-eqz p3, :cond_5

    iget-object v7, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/gw;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    .line 12000
    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13000
    new-instance v8, Lcom/google/android/gms/internal/ny;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ny;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    check-cast v0, Lcom/google/android/gms/internal/gv;

    const-string/jumbo v1, "cachedTokenState"

    .line 14000
    iget-object v5, v0, Lcom/google/android/gms/internal/gv;->f:Lcom/google/android/gms/internal/np;

    iget-object v9, v0, Lcom/google/android/gms/internal/gv;->a:Lcom/google/android/gms/internal/zzbmn;

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/np;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 13000
    invoke-virtual {v8, v1, v5}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "applicationName"

    .line 15000
    iget-object v5, v0, Lcom/google/android/gms/internal/gv;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/firebase/b;->a(Ljava/lang/String;)Lcom/google/firebase/b;

    move-result-object v5

    .line 13000
    invoke-virtual {v5}, Lcom/google/firebase/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v1, v5}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    const-string/jumbo v5, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v8, v1, v5}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16000
    iget-object v1, v0, Lcom/google/android/gms/internal/gv;->c:Ljava/util/List;

    .line 13000
    if-eqz v1, :cond_4

    new-instance v9, Lcom/google/android/gms/internal/ns;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ns;-><init>()V

    .line 17000
    iget-object v10, v0, Lcom/google/android/gms/internal/gv;->c:Ljava/util/List;

    move v5, v3

    .line 13000
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_3

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gt;

    iget-object v11, v7, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/np;

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/np;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 18000
    new-instance v11, Lcom/google/android/gms/internal/oa;

    invoke-direct {v11}, Lcom/google/android/gms/internal/oa;-><init>()V

    invoke-static {v1}, Lcom/google/android/gms/internal/oa;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/nv;

    move-result-object v1

    .line 13000
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ns;->a(Lcom/google/android/gms/internal/nv;)V

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    :cond_0
    move v0, v3

    .line 0
    goto/16 :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    .line 11000
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    invoke-virtual {p1}, Lcom/google/firebase/auth/i;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/i;->a(Z)Lcom/google/firebase/auth/i;

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    invoke-virtual {p1}, Lcom/google/firebase/auth/i;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/i;->a(Ljava/util/List;)Lcom/google/firebase/auth/i;

    goto/16 :goto_2

    .line 13000
    :cond_3
    const-string/jumbo v1, "userInfos"

    invoke-virtual {v8, v1, v9}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;Lcom/google/android/gms/internal/nv;)V

    :cond_4
    const-string/jumbo v1, "anonymous"

    .line 19000
    iget-boolean v0, v0, Lcom/google/android/gms/internal/gv;->e:Z

    .line 13000
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 20000
    invoke-static {v0}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/nv;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;Lcom/google/android/gms/internal/nv;)V

    .line 13000
    const-string/jumbo v0, "version"

    const-string/jumbo v1, "2"

    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/ny;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ny;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12000
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "com.google.firebase.auth.FIREBASE_USER"

    .line 21000
    iget-object v5, v7, Lcom/google/android/gms/internal/gw;->a:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 0
    :cond_5
    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    invoke-virtual {v0, p2}, Lcom/google/firebase/auth/i;->a(Lcom/google/android/gms/internal/zzbmn;)V

    :cond_6
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    .line 22000
    if-eqz v0, :cond_b

    const-string/jumbo v1, "FirebaseAuth"

    invoke-virtual {v0}, Lcom/google/firebase/auth/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x24

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Notifying listeners about user ( "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " )."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/firebase/auth/i;->f()Ljava/lang/String;

    move-result-object v6

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/na;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/na;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/android/gms/internal/gx;

    new-instance v4, Lcom/google/firebase/auth/FirebaseAuth$1;

    invoke-direct {v4, p0, v0}, Lcom/google/firebase/auth/FirebaseAuth$1;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/android/gms/internal/na;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/gx;->execute(Ljava/lang/Runnable;)V

    .line 0
    :cond_8
    if-eqz p3, :cond_9

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/gw;

    .line 23000
    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/auth/i;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 24000
    iget-object v2, v0, Lcom/google/android/gms/internal/gw;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/gw;->b:Lcom/google/android/gms/internal/np;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/np;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 0
    :cond_9
    return-void

    :cond_a
    move-object v0, v6

    .line 13000
    goto/16 :goto_4

    .line 22000
    :cond_b
    const-string/jumbo v1, "FirebaseAuth"

    const-string/jumbo v4, "Notifying listeners about a sign-out event."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
