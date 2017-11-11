.class public Lcom/google/firebase/crash/FirebaseCrash;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile e:Lcom/google/firebase/crash/FirebaseCrash;


# instance fields
.field public b:Z

.field public c:Lcom/google/android/gms/internal/hb;

.field public d:Lcom/google/android/gms/internal/gy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/firebase/crash/FirebaseCrash;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/b;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Z

    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string/jumbo v3, "Application context is missing, disabling api"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Z

    :cond_0
    iget-boolean v2, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Z

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/google/firebase/b;->c()Lcom/google/firebase/e;

    move-result-object v2

    .line 1000
    iget-object v2, v2, Lcom/google/firebase/e;->a:Ljava/lang/String;

    .line 0
    invoke-virtual {p1}, Lcom/google/firebase/b;->c()Lcom/google/firebase/e;

    move-result-object v3

    .line 2000
    iget-object v3, v3, Lcom/google/firebase/e;->b:Ljava/lang/String;

    .line 0
    new-instance v4, Lcom/google/android/gms/internal/zzbnn;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/zzbnn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/hc;->a()Lcom/google/android/gms/internal/hc;

    move-result-object v2

    .line 3000
    const-class v3, Lcom/google/android/gms/internal/hc;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, v2, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/dynamite/DynamiteModule;

    if-eqz v5, :cond_1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/hc;->a()Lcom/google/android/gms/internal/hc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/hc;->b()Lcom/google/android/gms/internal/hb;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/crash/FirebaseCrash;->c:Lcom/google/android/gms/internal/hb;

    iget-object v2, p0, Lcom/google/firebase/crash/FirebaseCrash;->c:Lcom/google/android/gms/internal/hb;

    invoke-static {v0}, Lcom/google/android/gms/a/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/a/a;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/a/a;Lcom/google/android/gms/internal/zzbnn;)V

    new-instance v2, Lcom/google/android/gms/internal/gy;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/gy;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/firebase/crash/FirebaseCrash;->d:Lcom/google/android/gms/internal/gy;

    .line 5000
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 4000
    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "FirebaseCrash reporting may only be initialized on the main thread (preferably in your app\'s Application.onCreate)"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 0
    :catch_0
    move-exception v0

    sget-object v2, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string/jumbo v3, "Failed to initialize crash reporting: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/google/firebase/crash/FirebaseCrash;->b:Z

    :goto_3
    return-void

    .line 3000
    :cond_1
    :try_start_3
    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->c:Lcom/google/android/gms/dynamite/DynamiteModule$b;

    const-string/jumbo v6, "com.google.android.gms.crash"

    invoke-static {v0, v5, v6}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$b;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gms/internal/hc;->a:Lcom/google/android/gms/dynamite/DynamiteModule;
    :try_end_3
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move-exception v0

    :try_start_6
    new-instance v2, Lcom/google/android/gms/internal/hc$a;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/internal/hc$a;-><init>(Ljava/lang/Throwable;B)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_2
    move v0, v1

    .line 5000
    goto :goto_1

    .line 4000
    :cond_3
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/hd;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/internal/hd;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/google/firebase/crash/FirebaseCrash;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 0
    sget-object v2, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string/jumbo v3, "FirebaseCrash reporting initialized "

    invoke-static {}, Lcom/google/android/gms/internal/hc;->a()Lcom/google/android/gms/internal/hc;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string/jumbo v1, "Crash reporting is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/firebase/iid/c;->a()Lcom/google/firebase/iid/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 0
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->b()Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    .line 12000
    iget-boolean v1, v0, Lcom/google/firebase/crash/FirebaseCrash;->b:Z

    .line 11000
    if-nez v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/gz;

    const-string/jumbo v1, "Firebase Crash Reporting is disabled."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gz;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/gz; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11000
    :cond_0
    :goto_0
    return-void

    .line 13000
    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/google/firebase/crash/FirebaseCrash;->c:Lcom/google/android/gms/internal/hb;
    :try_end_1
    .catch Lcom/google/android/gms/internal/gz; {:try_start_1 .. :try_end_1} :catch_0

    .line 11000
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    :try_start_2
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/hb;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/internal/gz; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string/jumbo v2, "log remoting failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lcom/google/android/gms/internal/gz; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 0
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crash/FirebaseCrash;->b()Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    .line 15000
    iget-boolean v1, v0, Lcom/google/firebase/crash/FirebaseCrash;->b:Z

    .line 14000
    if-nez v1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/gz;

    const-string/jumbo v1, "Firebase Crash Reporting is disabled."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gz;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/gz; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gz;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14000
    :cond_0
    :goto_0
    return-void

    .line 16000
    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/google/firebase/crash/FirebaseCrash;->c:Lcom/google/android/gms/internal/hb;
    :try_end_1
    .catch Lcom/google/android/gms/internal/gz; {:try_start_1 .. :try_end_1} :catch_0

    .line 14000
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    :try_start_2
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/hb;->a(Ljava/lang/String;JLandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/internal/gz; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string/jumbo v2, "log remoting failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lcom/google/android/gms/internal/gz; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private static b()Lcom/google/firebase/crash/FirebaseCrash;
    .locals 2

    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/firebase/crash/FirebaseCrash;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/b;->d()Lcom/google/firebase/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crash/FirebaseCrash;->getInstance(Lcom/google/firebase/b;)Lcom/google/firebase/crash/FirebaseCrash;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Lcom/google/firebase/b;)Lcom/google/firebase/crash/FirebaseCrash;
    .locals 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/he;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/he;->a:Lcom/google/android/gms/internal/cc;

    .line 6000
    invoke-static {}, Lcom/google/android/gms/internal/cg;->b()Lcom/google/android/gms/internal/ce;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ce;->a(Lcom/google/android/gms/internal/cc;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Lcom/google/firebase/crash/FirebaseCrash;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/crash/FirebaseCrash;-><init>(Lcom/google/firebase/b;Z)V

    const-class v2, Lcom/google/firebase/crash/FirebaseCrash;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;

    if-nez v0, :cond_0

    sput-object v1, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->e:Lcom/google/firebase/crash/FirebaseCrash;

    .line 8000
    iget-boolean v3, v0, Lcom/google/firebase/crash/FirebaseCrash;->b:Z

    .line 7000
    if-nez v3, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/gz;

    const-string/jumbo v3, "Firebase Crash Reporting is disabled."

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/gz;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/gz; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/google/firebase/crash/FirebaseCrash;->a:Ljava/lang/String;

    const-string/jumbo v3, "Cannot register Firebase Analytics listener since Firebase Crash Reporting is not enabled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    .line 7000
    :cond_1
    :try_start_3
    iget-object v0, v0, Lcom/google/firebase/crash/FirebaseCrash;->d:Lcom/google/android/gms/internal/gy;
    :try_end_3
    .catch Lcom/google/android/gms/internal/gz; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9000
    :try_start_4
    iget-boolean v3, v0, Lcom/google/android/gms/internal/gy;->a:Z

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/gy;->b:Lcom/google/android/gms/measurement/AppMeasurement;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/gy;->b:Lcom/google/android/gms/measurement/AppMeasurement;

    iget-object v4, v0, Lcom/google/android/gms/internal/gy;->c:Lcom/google/android/gms/measurement/AppMeasurement$c;

    .line 10000
    iget-object v3, v3, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/internal/dq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/dq;->h()Lcom/google/android/gms/internal/dv;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/dv;->a(Lcom/google/android/gms/measurement/AppMeasurement$c;)V

    .line 9000
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/gms/internal/gy;->a:Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gms/internal/gz; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    const-string/jumbo v0, "FirebaseCrashAnalytics"

    const-string/jumbo v3, "Firebase Analytics breadcrumbs is not supported"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lcom/google/android/gms/internal/gz; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method
