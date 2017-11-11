.class final Lc/a/a/a/m;
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
.field private final a:Lc/a/a/a/a/e/e;

.field private b:Landroid/content/pm/PackageManager;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/pm/PackageInfo;

.field private e:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private final p:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc/a/a/a/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lc/a/a/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc/a/a/a/k;",
            ">;>;",
            "Ljava/util/Collection",
            "<",
            "Lc/a/a/a/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Lc/a/a/a/i;-><init>()V

    .line 62
    new-instance v0, Lc/a/a/a/a/e/b;

    invoke-direct {v0}, Lc/a/a/a/a/e/b;-><init>()V

    iput-object v0, p0, Lc/a/a/a/m;->a:Lc/a/a/a/a/e/e;

    .line 63
    iput-object p1, p0, Lc/a/a/a/m;->p:Ljava/util/concurrent/Future;

    .line 64
    iput-object p2, p0, Lc/a/a/a/m;->q:Ljava/util/Collection;

    .line 65
    return-void
.end method

.method private a(Lc/a/a/a/a/g/n;Ljava/util/Collection;)Lc/a/a/a/a/g/d;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/a/a/g/n;",
            "Ljava/util/Collection",
            "<",
            "Lc/a/a/a/k;",
            ">;)",
            "Lc/a/a/a/a/g/d;"
        }
    .end annotation

    .prologue
    .line 208
    .line 11116
    iget-object v0, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 209
    new-instance v1, Lc/a/a/a/a/b/g;

    invoke-direct {v1}, Lc/a/a/a/a/b/g;-><init>()V

    invoke-static {v0}, Lc/a/a/a/a/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v0}, Lc/a/a/a/a/b/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 212
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lc/a/a/a/a/b/i;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 213
    iget-object v0, p0, Lc/a/a/a/m;->m:Ljava/lang/String;

    invoke-static {v0}, Lc/a/a/a/a/b/l;->a(Ljava/lang/String;)Lc/a/a/a/a/b/l;

    move-result-object v0

    .line 12038
    iget v7, v0, Lc/a/a/a/a/b/l;->e:I

    .line 12109
    iget-object v0, p0, Lc/a/a/a/i;->j:Lc/a/a/a/a/b/o;

    .line 12177
    iget-object v2, v0, Lc/a/a/a/a/b/o;->d:Ljava/lang/String;

    .line 216
    new-instance v0, Lc/a/a/a/a/g/d;

    iget-object v3, p0, Lc/a/a/a/m;->l:Ljava/lang/String;

    iget-object v4, p0, Lc/a/a/a/m;->e:Ljava/lang/String;

    iget-object v6, p0, Lc/a/a/a/m;->n:Ljava/lang/String;

    iget-object v8, p0, Lc/a/a/a/m;->o:Ljava/lang/String;

    const-string/jumbo v9, "0"

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lc/a/a/a/a/g/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lc/a/a/a/a/g/n;Ljava/util/Collection;)V

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc/a/a/a/k;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lc/a/a/a/i;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc/a/a/a/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/i;

    .line 138
    invoke-virtual {v0}, Lc/a/a/a/i;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    invoke-virtual {v0}, Lc/a/a/a/i;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lc/a/a/a/k;

    invoke-virtual {v0}, Lc/a/a/a/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lc/a/a/a/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "binary"

    invoke-direct {v3, v4, v0, v5}, Lc/a/a/a/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_1
    return-object p0
.end method

.method private e()Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 97
    .line 5116
    iget-object v0, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 97
    invoke-static {v0}, Lc/a/a/a/a/b/i;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-direct {p0}, Lc/a/a/a/m;->f()Lc/a/a/a/a/g/t;

    move-result-object v3

    .line 101
    if-eqz v3, :cond_1

    .line 104
    :try_start_0
    iget-object v0, p0, Lc/a/a/a/m;->p:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lc/a/a/a/m;->p:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 111
    :goto_0
    iget-object v4, p0, Lc/a/a/a/m;->q:Ljava/util/Collection;

    invoke-static {v0, v4}, Lc/a/a/a/m;->a(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    .line 112
    iget-object v3, v3, Lc/a/a/a/a/g/t;->a:Lc/a/a/a/a/g/e;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    .line 5153
    const/4 v0, 0x1

    .line 5155
    const-string/jumbo v5, "new"

    iget-object v6, v3, Lc/a/a/a/a/g/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6116
    iget-object v0, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 5183
    invoke-static {v0, v2}, Lc/a/a/a/a/g/n;->a(Landroid/content/Context;Ljava/lang/String;)Lc/a/a/a/a/g/n;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lc/a/a/a/m;->a(Lc/a/a/a/a/g/n;Ljava/util/Collection;)Lc/a/a/a/a/g/d;

    move-result-object v0

    .line 5185
    new-instance v2, Lc/a/a/a/a/g/h;

    invoke-direct {p0}, Lc/a/a/a/m;->g()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lc/a/a/a/a/g/e;->c:Ljava/lang/String;

    iget-object v5, p0, Lc/a/a/a/m;->a:Lc/a/a/a/a/e/e;

    invoke-direct {v2, p0, v4, v3, v5}, Lc/a/a/a/a/g/h;-><init>(Lc/a/a/a/i;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/e;)V

    invoke-virtual {v2, v0}, Lc/a/a/a/a/g/h;->a(Lc/a/a/a/a/g/d;)Z

    move-result v0

    .line 5157
    if-eqz v0, :cond_3

    .line 7055
    invoke-static {}, Lc/a/a/a/a/g/q$a;->a()Lc/a/a/a/a/g/q;

    move-result-object v0

    .line 5160
    invoke-virtual {v0}, Lc/a/a/a/a/g/q;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_1
    move v1, v0

    .line 118
    :cond_1
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 107
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    const-string/jumbo v4, "Error performing auto configuration."

    invoke-interface {v2, v3, v4, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 5163
    :cond_3
    :try_start_2
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "Failed to create app with Crashlytics service."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 5165
    goto :goto_1

    .line 5167
    :cond_4
    const-string/jumbo v5, "configured"

    iget-object v6, v3, Lc/a/a/a/a/g/e;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 8055
    invoke-static {}, Lc/a/a/a/a/g/q$a;->a()Lc/a/a/a/a/g/q;

    move-result-object v0

    .line 5169
    invoke-virtual {v0}, Lc/a/a/a/a/g/q;->c()Z

    move-result v0

    goto :goto_1

    .line 5170
    :cond_5
    iget-boolean v5, v3, Lc/a/a/a/a/g/e;->e:Z

    if-eqz v5, :cond_0

    .line 5173
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v5

    const-string/jumbo v6, "Fabric"

    const-string/jumbo v7, "Server says an update is required - forcing a full App update."

    invoke-interface {v5, v6, v7}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9116
    iget-object v5, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 8194
    invoke-static {v5, v2}, Lc/a/a/a/a/g/n;->a(Landroid/content/Context;Ljava/lang/String;)Lc/a/a/a/a/g/n;

    move-result-object v2

    .line 9202
    invoke-direct {p0, v2, v4}, Lc/a/a/a/m;->a(Lc/a/a/a/a/g/n;Ljava/util/Collection;)Lc/a/a/a/a/g/d;

    move-result-object v2

    .line 9203
    new-instance v4, Lc/a/a/a/a/g/y;

    invoke-direct {p0}, Lc/a/a/a/m;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v3, Lc/a/a/a/a/g/e;->c:Ljava/lang/String;

    iget-object v6, p0, Lc/a/a/a/m;->a:Lc/a/a/a/a/e/e;

    invoke-direct {v4, p0, v5, v3, v6}, Lc/a/a/a/a/g/y;-><init>(Lc/a/a/a/i;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/e;)V

    invoke-virtual {v4, v2}, Lc/a/a/a/a/g/y;->a(Lc/a/a/a/a/g/d;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private f()Lc/a/a/a/a/g/t;
    .locals 7

    .prologue
    .line 10055
    :try_start_0
    invoke-static {}, Lc/a/a/a/a/g/q$a;->a()Lc/a/a/a/a/g/q;

    move-result-object v0

    .line 123
    iget-object v2, p0, Lc/a/a/a/m;->j:Lc/a/a/a/a/b/o;

    iget-object v3, p0, Lc/a/a/a/m;->a:Lc/a/a/a/a/e/e;

    iget-object v4, p0, Lc/a/a/a/m;->e:Ljava/lang/String;

    iget-object v5, p0, Lc/a/a/a/m;->l:Ljava/lang/String;

    invoke-direct {p0}, Lc/a/a/a/m;->g()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lc/a/a/a/a/g/q;->a(Lc/a/a/a/i;Lc/a/a/a/a/b/o;Lc/a/a/a/a/e/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/a/a/g/q;->b()Z

    .line 11055
    invoke-static {}, Lc/a/a/a/a/g/q$a;->a()Lc/a/a/a/a/g/q;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lc/a/a/a/a/g/q;->a()Lc/a/a/a/a/g/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "Fabric"

    const-string/jumbo v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    .line 13116
    iget-object v0, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 221
    const-string/jumbo v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lc/a/a/a/a/b/i;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "1.3.15.167"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string/jumbo v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method protected final c_()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 75
    .line 1109
    :try_start_0
    iget-object v1, p0, Lc/a/a/a/i;->j:Lc/a/a/a/a/b/o;

    .line 75
    invoke-virtual {v1}, Lc/a/a/a/a/b/o;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/a/m;->m:Ljava/lang/String;

    .line 1116
    iget-object v1, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 76
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/a/m;->b:Landroid/content/pm/PackageManager;

    .line 2116
    iget-object v1, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 77
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/a/m;->c:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lc/a/a/a/m;->b:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lc/a/a/a/m;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/a/m;->d:Landroid/content/pm/PackageInfo;

    .line 79
    iget-object v1, p0, Lc/a/a/a/m;->d:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/a/m;->e:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lc/a/a/a/m;->d:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "0.0"

    :goto_0
    iput-object v1, p0, Lc/a/a/a/m;->l:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lc/a/a/a/m;->b:Landroid/content/pm/PackageManager;

    .line 3116
    iget-object v2, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 82
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/a/m;->n:Ljava/lang/String;

    .line 4116
    iget-object v1, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/a/m;->o:Ljava/lang/String;

    .line 88
    const/4 v0, 0x1

    .line 92
    :goto_1
    return v0

    .line 80
    :cond_0
    iget-object v1, p0, Lc/a/a/a/m;->d:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v2

    const-string/jumbo v3, "Fabric"

    const-string/jumbo v4, "Failed init"

    invoke-interface {v2, v3, v4, v1}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lc/a/a/a/m;->e()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
