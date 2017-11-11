.class public Lcom/b/a/a/a;
.super Lc/a/a/a/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/a/i",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/b/a/a/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lc/a/a/a/i;-><init>()V

    return-void
.end method

.method private e()Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 9055
    :try_start_0
    invoke-static {}, Lc/a/a/a/a/g/q$a;->a()Lc/a/a/a/a/g/q;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lc/a/a/a/a/g/q;->a()Lc/a/a/a/a/g/t;

    move-result-object v0

    .line 373
    if-nez v0, :cond_0

    .line 374
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "Answers"

    const-string/jumbo v2, "Failed to retrieve settings"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 378
    :cond_0
    iget-object v1, v0, Lc/a/a/a/a/g/t;->d:Lc/a/a/a/a/g/m;

    iget-boolean v1, v1, Lc/a/a/a/a/g/m;->d:Z

    if-eqz v1, :cond_1

    .line 379
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Analytics collection enabled"

    invoke-interface {v1, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/b/a/a/a;->a:Lcom/b/a/a/q;

    iget-object v0, v0, Lc/a/a/a/a/g/t;->e:Lc/a/a/a/a/g/b;

    .line 10116
    iget-object v2, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 9407
    const-string/jumbo v3, "com.crashlytics.ApiEndpoint"

    invoke-static {v2, v3}, Lc/a/a/a/a/b/i;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10138
    iget-object v3, v1, Lcom/b/a/a/q;->d:Lcom/b/a/a/g;

    iget-boolean v4, v0, Lc/a/a/a/a/g/b;->h:Z

    .line 11035
    iput-boolean v4, v3, Lcom/b/a/a/g;->c:Z

    .line 10139
    iget-object v1, v1, Lcom/b/a/a/q;->b:Lcom/b/a/a/b;

    .line 11066
    new-instance v3, Lcom/b/a/a/b$1;

    invoke-direct {v3, v1, v0, v2}, Lcom/b/a/a/b$1;-><init>(Lcom/b/a/a/b;Lc/a/a/a/a/g/b;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/b/a/a/b;->a(Ljava/lang/Runnable;)V

    .line 382
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_1
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "Answers"

    const-string/jumbo v2, "Analytics collection disabled"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/b/a/a/a;->a:Lcom/b/a/a/q;

    .line 11084
    iget-object v0, v1, Lcom/b/a/a/q;->c:Lc/a/a/a/a;

    .line 12076
    iget-object v2, v0, Lc/a/a/a/a;->a:Lc/a/a/a/a$a;

    if-eqz v2, :cond_2

    .line 12077
    iget-object v2, v0, Lc/a/a/a/a;->a:Lc/a/a/a/a$a;

    .line 12092
    iget-object v0, v2, Lc/a/a/a/a$a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 12093
    iget-object v4, v2, Lc/a/a/a/a$a;->b:Landroid/app/Application;

    invoke-virtual {v4, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 11085
    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/b/a/a/q;->b:Lcom/b/a/a/b;

    .line 13083
    new-instance v1, Lcom/b/a/a/b$2;

    invoke-direct {v1, v0}, Lcom/b/a/a/b$2;-><init>(Lcom/b/a/a/b;)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/b;->a(Ljava/lang/Runnable;)V

    .line 386
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    const-string/jumbo v0, "1.3.11.167"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    const-string/jumbo v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method

.method protected final c_()Z
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 341
    .line 1116
    :try_start_0
    iget-object v2, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 342
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 343
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 344
    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 345
    iget v0, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 346
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "0.0"

    move-object v3, v0

    .line 351
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v0, v7, :cond_2

    .line 352
    iget-wide v0, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide v10, v0

    .line 2109
    :goto_1
    iget-object v0, p0, Lc/a/a/a/i;->j:Lc/a/a/a/a/b/o;

    .line 3037
    new-instance v4, Lcom/b/a/a/v;

    invoke-direct {v4, v2, v0, v6, v3}, Lcom/b/a/a/v;-><init>(Landroid/content/Context;Lc/a/a/a/a/b/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    new-instance v3, Lcom/b/a/a/c;

    new-instance v0, Lc/a/a/a/a/f/b;

    invoke-direct {v0, p0}, Lc/a/a/a/a/f/b;-><init>(Lc/a/a/a/i;)V

    invoke-direct {v3, v2, v0}, Lcom/b/a/a/c;-><init>(Landroid/content/Context;Lc/a/a/a/a/f/a;)V

    .line 3041
    new-instance v5, Lc/a/a/a/a/e/b;

    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    invoke-direct {v5, v0}, Lc/a/a/a/a/e/b;-><init>(Lc/a/a/a/l;)V

    .line 3043
    new-instance v7, Lc/a/a/a/a;

    invoke-direct {v7, v2}, Lc/a/a/a/a;-><init>(Landroid/content/Context;)V

    .line 3044
    const-string/jumbo v0, "Answers Events Handler"

    .line 3058
    invoke-static {v0}, Lc/a/a/a/a/b/n;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 3059
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 3061
    invoke-static {v0, v6}, Lc/a/a/a/a/b/n;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 3046
    new-instance v12, Lcom/b/a/a/g;

    invoke-direct {v12, v6}, Lcom/b/a/a/g;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 3047
    new-instance v0, Lcom/b/a/a/b;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/b/a/a/b;-><init>(Lc/a/a/a/i;Landroid/content/Context;Lcom/b/a/a/c;Lcom/b/a/a/v;Lc/a/a/a/a/e/e;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 4033
    new-instance v1, Lc/a/a/a/a/f/d;

    const-string/jumbo v3, "settings"

    invoke-direct {v1, v2, v3}, Lc/a/a/a/a/f/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4034
    new-instance v5, Lcom/b/a/a/e;

    invoke-direct {v5, v1}, Lcom/b/a/a/e;-><init>(Lc/a/a/a/a/f/c;)V

    .line 3050
    new-instance v1, Lcom/b/a/a/q;

    move-object v2, v0

    move-object v3, v7

    move-object v4, v12

    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/b/a/a/q;-><init>(Lcom/b/a/a/b;Lc/a/a/a/a;Lcom/b/a/a/g;Lcom/b/a/a/e;J)V

    .line 358
    iput-object v1, p0, Lcom/b/a/a/a;->a:Lcom/b/a/a/q;

    .line 360
    iget-object v1, p0, Lcom/b/a/a/a;->a:Lcom/b/a/a/q;

    .line 4070
    iget-object v0, v1, Lcom/b/a/a/q;->b:Lcom/b/a/a/b;

    .line 4115
    new-instance v2, Lcom/b/a/a/b$4;

    invoke-direct {v2, v0}, Lcom/b/a/a/b$4;-><init>(Lcom/b/a/a/b;)V

    invoke-virtual {v0, v2}, Lcom/b/a/a/b;->a(Ljava/lang/Runnable;)V

    .line 4071
    iget-object v0, v1, Lcom/b/a/a/q;->c:Lc/a/a/a/a;

    new-instance v2, Lcom/b/a/a/d;

    iget-object v3, v1, Lcom/b/a/a/q;->d:Lcom/b/a/a/g;

    invoke-direct {v2, v1, v3}, Lcom/b/a/a/d;-><init>(Lcom/b/a/a/q;Lcom/b/a/a/g;)V

    invoke-virtual {v0, v2}, Lc/a/a/a/a;->a(Lc/a/a/a/a$b;)Z

    .line 4072
    iget-object v0, v1, Lcom/b/a/a/q;->d:Lcom/b/a/a/g;

    .line 5049
    iget-object v0, v0, Lcom/b/a/a/g;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5150
    iget-object v0, v1, Lcom/b/a/a/q;->e:Lcom/b/a/a/e;

    .line 6048
    iget-object v0, v0, Lcom/b/a/a/e;->a:Lc/a/a/a/a/f/c;

    invoke-interface {v0}, Lc/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "analytics_launched"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5150
    if-nez v0, :cond_3

    move v0, v8

    .line 4074
    :goto_2
    if-eqz v0, :cond_0

    .line 4075
    iget-wide v2, v1, Lcom/b/a/a/q;->a:J

    .line 6121
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v4, "Answers"

    const-string/jumbo v5, "Logged install"

    invoke-interface {v0, v4, v5}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6122
    iget-object v0, v1, Lcom/b/a/a/q;->b:Lcom/b/a/a/b;

    .line 7044
    new-instance v4, Lcom/b/a/a/s$a;

    sget-object v5, Lcom/b/a/a/s$b;->f:Lcom/b/a/a/s$b;

    invoke-direct {v4, v5}, Lcom/b/a/a/s$a;-><init>(Lcom/b/a/a/s$b;)V

    const-string/jumbo v5, "installedAt"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 7109
    iput-object v2, v4, Lcom/b/a/a/s$a;->c:Ljava/util/Map;

    .line 8051
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v2, v3}, Lcom/b/a/a/b;->a(Lcom/b/a/a/s$a;ZZ)V

    .line 4076
    iget-object v0, v1, Lcom/b/a/a/q;->e:Lcom/b/a/a/e;

    .line 9043
    iget-object v1, v0, Lcom/b/a/a/e;->a:Lc/a/a/a/a/f/c;

    iget-object v0, v0, Lcom/b/a/a/e;->a:Lc/a/a/a/a/f/c;

    invoke-interface {v0}, Lc/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "analytics_launched"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v1, v0}, Lc/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    :cond_0
    move v0, v8

    .line 366
    :goto_3
    return v0

    .line 346
    :cond_1
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v3, v0

    goto/16 :goto_0

    .line 354
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 355
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    move-wide v10, v0

    goto/16 :goto_1

    :cond_3
    move v0, v9

    .line 5150
    goto :goto_2

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Answers"

    const-string/jumbo v3, "Error retrieving app properties"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v9

    .line 366
    goto :goto_3
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/b/a/a/a;->e()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
