.class public Lcom/google/android/gms/internal/sn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/sn$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/sz;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/google/android/gms/internal/sg;

.field private final d:Lcom/google/android/gms/internal/sf;

.field private final e:Lcom/google/android/gms/internal/tl;

.field private final f:Lcom/google/android/gms/internal/vs;

.field private final g:Lcom/google/android/gms/internal/abv;

.field private final h:Lcom/google/android/gms/internal/zl;

.field private final i:Lcom/google/android/gms/internal/yy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/sg;Lcom/google/android/gms/internal/sf;Lcom/google/android/gms/internal/tl;Lcom/google/android/gms/internal/vs;Lcom/google/android/gms/internal/abv;Lcom/google/android/gms/internal/zl;Lcom/google/android/gms/internal/yy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/sn;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/sn;->c:Lcom/google/android/gms/internal/sg;

    iput-object p2, p0, Lcom/google/android/gms/internal/sn;->d:Lcom/google/android/gms/internal/sf;

    iput-object p3, p0, Lcom/google/android/gms/internal/sn;->e:Lcom/google/android/gms/internal/tl;

    iput-object p4, p0, Lcom/google/android/gms/internal/sn;->f:Lcom/google/android/gms/internal/vs;

    iput-object p5, p0, Lcom/google/android/gms/internal/sn;->g:Lcom/google/android/gms/internal/abv;

    iput-object p6, p0, Lcom/google/android/gms/internal/sn;->h:Lcom/google/android/gms/internal/zl;

    iput-object p7, p0, Lcom/google/android/gms/internal/sn;->i:Lcom/google/android/gms/internal/yy;

    return-void
.end method

.method private static a()Lcom/google/android/gms/internal/sz;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Lcom/google/android/gms/internal/sn;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v2, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/os/IBinder;

    if-nez v2, :cond_0

    const-string/jumbo v0, "ClientApi class is not an instance of IBinder"

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->e(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/sz$a;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/sz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Failed to instantiate ClientApi class."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/sn;)Lcom/google/android/gms/internal/sz;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/sn;->b()Lcom/google/android/gms/internal/sz;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZLcom/google/android/gms/internal/sn$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/google/android/gms/internal/sn$a",
            "<TT;>;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    invoke-static {p0}, Lcom/google/android/gms/internal/aea;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Google Play Services is not available"

    invoke-static {v0}, Lcom/google/android/gms/internal/aeb;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/sn$a;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/sn$a;->c()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/sn$a;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/sn$a;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 0
    .line 1000
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "action"

    const-string/jumbo v1, "no_ads_fallback"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "flow"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    const-string/jumbo v2, "gmob-apps"

    .line 2000
    const/4 v1, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/gms/internal/aea$1;

    invoke-direct {v5}, Lcom/google/android/gms/internal/aea$1;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/aea;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLcom/google/android/gms/internal/aea$a;)V

    .line 0
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v1, "useClientJar flag not found in activity intent extras."

    invoke-static {v1}, Lcom/google/android/gms/internal/aeb;->c(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/sn;)Lcom/google/android/gms/internal/sg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->c:Lcom/google/android/gms/internal/sg;

    return-object v0
.end method

.method private b()Lcom/google/android/gms/internal/sz;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/sn;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->a:Lcom/google/android/gms/internal/sz;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/sn;->a()Lcom/google/android/gms/internal/sz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/sn;->a:Lcom/google/android/gms/internal/sz;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->a:Lcom/google/android/gms/internal/sz;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/sn;)Lcom/google/android/gms/internal/sf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->d:Lcom/google/android/gms/internal/sf;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/sn;)Lcom/google/android/gms/internal/tl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->e:Lcom/google/android/gms/internal/tl;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/sn;)Lcom/google/android/gms/internal/vs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->f:Lcom/google/android/gms/internal/vs;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/sn;)Lcom/google/android/gms/internal/abv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->g:Lcom/google/android/gms/internal/abv;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/sn;)Lcom/google/android/gms/internal/zl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->h:Lcom/google/android/gms/internal/zl;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/sn;)Lcom/google/android/gms/internal/yy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->i:Lcom/google/android/gms/internal/yy;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ya;)Lcom/google/android/gms/internal/abr;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/sn$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/sn$7;-><init>(Lcom/google/android/gms/internal/sn;Landroid/content/Context;Lcom/google/android/gms/internal/ya;)V

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/sn$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/abr;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/tb;
    .locals 2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/internal/sn$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/sn$5;-><init>(Lcom/google/android/gms/internal/sn;Landroid/content/Context;)V

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/sn;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/sn$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/tb;

    return-object v0
.end method
