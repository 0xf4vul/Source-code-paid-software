.class public Lcom/b/a/c/i;
.super Lc/a/a/a/i;
.source "SourceFile"


# annotations
.annotation runtime Lc/a/a/a/a/c/d;
    a = {
        Lcom/b/a/c/a/a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/i$b;,
        Lcom/b/a/c/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/a/i",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/b/a/c/j;

.field public d:Lcom/b/a/c/h;

.field public e:Z

.field private l:Lcom/b/a/c/j;

.field private m:Lcom/b/a/c/k;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:F

.field private final r:Lcom/b/a/c/aa;

.field private s:Lc/a/a/a/a/e/e;

.field private t:Lcom/b/a/c/g;

.field private u:Lcom/b/a/c/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/c/i;-><init>(B)V

    .line 176
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .prologue
    .line 180
    const-string/jumbo v0, "Crashlytics Exception Handler"

    .line 1042
    invoke-static {v0}, Lc/a/a/a/a/b/n;->a(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    .line 1043
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 1044
    invoke-static {v0, v1}, Lc/a/a/a/a/b/n;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 180
    invoke-direct {p0, v1}, Lcom/b/a/c/i;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 182
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Lc/a/a/a/i;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/b/a/c/i;->n:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/b/a/c/i;->o:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/b/a/c/i;->p:Ljava/lang/String;

    .line 190
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/b/a/c/i;->q:F

    .line 191
    new-instance v0, Lcom/b/a/c/i$b;

    invoke-direct {v0, v2}, Lcom/b/a/c/i$b;-><init>(B)V

    iput-object v0, p0, Lcom/b/a/c/i;->m:Lcom/b/a/c/k;

    .line 192
    iput-object v1, p0, Lcom/b/a/c/i;->r:Lcom/b/a/c/aa;

    .line 193
    iput-boolean v2, p0, Lcom/b/a/c/i;->e:Z

    .line 194
    new-instance v0, Lcom/b/a/c/g;

    invoke-direct {v0, p1}, Lcom/b/a/c/g;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/b/a/c/i;->t:Lcom/b/a/c/g;

    .line 196
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/b/a/c/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/c/i;->a:J

    .line 198
    return-void
.end method

.method static synthetic a(Lcom/b/a/c/i;)Lcom/b/a/c/j;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/b/a/c/i;->l:Lcom/b/a/c/j;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/a/a/a/a/b/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 214
    iget-boolean v0, p0, Lcom/b/a/c/i;->e:Z

    if-eqz v0, :cond_0

    move v0, v10

    .line 292
    :goto_0
    return v0

    .line 219
    :cond_0
    new-instance v0, Lc/a/a/a/a/b/g;

    invoke-direct {v0}, Lc/a/a/a/a/b/g;-><init>()V

    invoke-static {p1}, Lc/a/a/a/a/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 221
    if-nez v1, :cond_1

    move v0, v10

    .line 222
    goto :goto_0

    .line 227
    :cond_1
    invoke-static {p1}, Lc/a/a/a/a/b/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 230
    const-string/jumbo v0, "com.crashlytics.RequireBuildId"

    invoke-static {p1, v0, v11}, Lc/a/a/a/a/b/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 1876
    if-nez v0, :cond_2

    .line 1877
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v3, "CrashlyticsCore"

    const-string/jumbo v4, "Configured not to require a build ID."

    invoke-interface {v0, v3, v4}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 233
    :goto_1
    if-nez v0, :cond_4

    .line 234
    new-instance v0, Lc/a/a/a/a/c/m;

    const-string/jumbo v1, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    invoke-direct {v0, v1}, Lc/a/a/a/a/c/m;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1881
    :cond_2
    invoke-static {v2}, Lc/a/a/a/a/b/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v11

    .line 1882
    goto :goto_1

    .line 1885
    :cond_3
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, "."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".     |  | "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".     |  |"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".     |  |"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".   \\ |  | /"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".    \\    /"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".     \\  /"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".      \\/"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, "."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, "."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".      /\\"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".     /  \\"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".    /    \\"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".   / |  | \\"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".     |  |"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".     |  |"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, ".     |  |"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v3, "."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 1905
    goto/16 :goto_1

    .line 238
    :cond_4
    :try_start_0
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v3, "CrashlyticsCore"

    const-string/jumbo v4, "Initializing Crashlytics 2.3.15.167"

    invoke-interface {v0, v3, v4}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v7, Lc/a/a/a/a/f/b;

    invoke-direct {v7, p0}, Lc/a/a/a/a/f/b;-><init>(Lc/a/a/a/i;)V

    .line 241
    new-instance v0, Lcom/b/a/c/j;

    const-string/jumbo v3, "crash_marker"

    invoke-direct {v0, v3, v7}, Lcom/b/a/c/j;-><init>(Ljava/lang/String;Lc/a/a/a/a/f/a;)V

    iput-object v0, p0, Lcom/b/a/c/i;->c:Lcom/b/a/c/j;

    .line 242
    new-instance v0, Lcom/b/a/c/j;

    const-string/jumbo v3, "initialization_marker"

    invoke-direct {v0, v3, v7}, Lcom/b/a/c/j;-><init>(Ljava/lang/String;Lc/a/a/a/a/f/a;)V

    iput-object v0, p0, Lcom/b/a/c/i;->l:Lcom/b/a/c/j;

    .line 245
    new-instance v3, Lc/a/a/a/a/f/d;

    .line 3116
    iget-object v0, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 245
    const-string/jumbo v4, "com.crashlytics.android.core.CrashlyticsCore"

    invoke-direct {v3, v0, v4}, Lc/a/a/a/a/f/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4025
    invoke-interface {v3}, Lc/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v4, "preferences_migration_complete"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4026
    new-instance v4, Lc/a/a/a/a/f/d;

    invoke-direct {v4, p0}, Lc/a/a/a/a/f/d;-><init>(Lc/a/a/a/i;)V

    .line 4027
    invoke-interface {v3}, Lc/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v5, "always_send_reports_opt_in"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v4}, Lc/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v5, "always_send_reports_opt_in"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v11

    .line 4030
    :goto_2
    if-eqz v0, :cond_5

    .line 4031
    invoke-interface {v4}, Lc/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v4, "always_send_reports_opt_in"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4033
    invoke-interface {v3}, Lc/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "always_send_reports_opt_in"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v3, v0}, Lc/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 4036
    :cond_5
    invoke-interface {v3}, Lc/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v4, "preferences_migration_complete"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v3, v0}, Lc/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 4038
    :cond_6
    new-instance v8, Lcom/b/a/c/ab;

    invoke-direct {v8, v3}, Lcom/b/a/c/ab;-><init>(Lc/a/a/a/a/f/c;)V

    .line 250
    iget-object v0, p0, Lcom/b/a/c/i;->r:Lcom/b/a/c/aa;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/b/a/c/l;

    iget-object v3, p0, Lcom/b/a/c/i;->r:Lcom/b/a/c/aa;

    invoke-direct {v0, v3}, Lcom/b/a/c/l;-><init>(Lcom/b/a/c/aa;)V

    .line 252
    :goto_3
    new-instance v3, Lc/a/a/a/a/e/b;

    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v4

    invoke-direct {v3, v4}, Lc/a/a/a/a/e/b;-><init>(Lc/a/a/a/l;)V

    iput-object v3, p0, Lcom/b/a/c/i;->s:Lc/a/a/a/a/e/e;

    .line 253
    iget-object v3, p0, Lcom/b/a/c/i;->s:Lc/a/a/a/a/e/e;

    invoke-interface {v3, v0}, Lc/a/a/a/a/e/e;->a(Lc/a/a/a/a/e/f;)V

    .line 4109
    iget-object v13, p0, Lc/a/a/a/i;->j:Lc/a/a/a/a/b/o;

    .line 5025
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 5026
    invoke-virtual {v13}, Lc/a/a/a/a/b/o;->d()Ljava/lang/String;

    move-result-object v3

    .line 5027
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5028
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5029
    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 5030
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v6, :cond_9

    const-string/jumbo v6, "0.0"

    .line 5033
    :goto_4
    new-instance v0, Lcom/b/a/c/a;

    invoke-direct/range {v0 .. v6}, Lcom/b/a/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v9, Lcom/b/a/c/v;

    iget-object v1, v0, Lcom/b/a/c/a;->d:Ljava/lang/String;

    invoke-direct {v9, p1, v1}, Lcom/b/a/c/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Installer package name is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/b/a/c/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v1, Lcom/b/a/c/h;

    iget-object v3, p0, Lcom/b/a/c/i;->t:Lcom/b/a/c/g;

    iget-object v4, p0, Lcom/b/a/c/i;->s:Lc/a/a/a/a/e/e;

    move-object v2, p0

    move-object v5, v13

    move-object v6, v8

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/b/a/c/h;-><init>(Lcom/b/a/c/i;Lcom/b/a/c/g;Lc/a/a/a/a/e/e;Lc/a/a/a/a/b/o;Lcom/b/a/c/ab;Lc/a/a/a/a/f/a;Lcom/b/a/c/a;Lcom/b/a/c/ak;)V

    iput-object v1, p0, Lcom/b/a/c/i;->d:Lcom/b/a/c/h;

    .line 5744
    iget-object v0, p0, Lcom/b/a/c/i;->t:Lcom/b/a/c/g;

    new-instance v1, Lcom/b/a/c/i$4;

    invoke-direct {v1, p0}, Lcom/b/a/c/i$4;-><init>(Lcom/b/a/c/i;)V

    invoke-virtual {v0, v1}, Lcom/b/a/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 5793
    iget-object v0, p0, Lcom/b/a/c/i;->t:Lcom/b/a/c/g;

    new-instance v2, Lcom/b/a/c/i$a;

    iget-object v3, p0, Lcom/b/a/c/i;->c:Lcom/b/a/c/j;

    invoke-direct {v2, v3}, Lcom/b/a/c/i$a;-><init>(Lcom/b/a/c/j;)V

    invoke-virtual {v0, v2}, Lcom/b/a/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 5798
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lcom/b/a/c/i;->d:Lcom/b/a/c/h;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 6405
    iget-object v3, v0, Lcom/b/a/c/h;->f:Lcom/b/a/c/g;

    new-instance v4, Lcom/b/a/c/h$3;

    invoke-direct {v4, v0}, Lcom/b/a/c/h$3;-><init>(Lcom/b/a/c/h;)V

    invoke-virtual {v3, v4}, Lcom/b/a/c/g;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 6258
    new-instance v3, Lcom/b/a/c/h$11;

    invoke-direct {v3, v0}, Lcom/b/a/c/h$11;-><init>(Lcom/b/a/c/h;)V

    .line 6265
    new-instance v4, Lcom/b/a/c/m;

    invoke-direct {v4, v3, v2}, Lcom/b/a/c/m;-><init>(Lcom/b/a/c/m$a;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v4, v0, Lcom/b/a/c/h;->i:Lcom/b/a/c/m;

    .line 6266
    iget-object v0, v0, Lcom/b/a/c/h;->i:Lcom/b/a/c/m;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 275
    if-eqz v1, :cond_a

    invoke-static {p1}, Lc/a/a/a/a/b/i;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 276
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/b/a/c/i;->l()V

    move v0, v10

    .line 282
    goto/16 :goto_0

    :cond_7
    move v0, v10

    .line 4027
    goto/16 :goto_2

    :cond_8
    move-object v0, v12

    .line 250
    goto/16 :goto_3

    .line 5030
    :cond_9
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 284
    :catch_0
    move-exception v0

    .line 285
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    iput-object v12, p0, Lcom/b/a/c/i;->d:Lcom/b/a/c/h;

    move v0, v10

    .line 288
    goto/16 :goto_0

    .line 291
    :cond_a
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Exception handling initialization successful"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 292
    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 828
    invoke-static {}, Lcom/b/a/c/i;->f()Lcom/b/a/c/i;

    move-result-object v0

    .line 829
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/b/a/c/i;->d:Lcom/b/a/c/h;

    if-nez v0, :cond_1

    .line 830
    :cond_0
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Crashlytics must be initialized by calling Fabric.with(Context) "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    const/4 v0, 0x0

    .line 835
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 840
    if-eqz p0, :cond_0

    .line 841
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 842
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 843
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 846
    :cond_0
    return-object p0
.end method

.method public static f()Lcom/b/a/c/i;
    .locals 1

    .prologue
    .line 366
    const-class v0, Lcom/b/a/c/i;

    invoke-static {v0}, Lc/a/a/a/c;->a(Ljava/lang/Class;)Lc/a/a/a/i;

    move-result-object v0

    check-cast v0, Lcom/b/a/c/i;

    return-object v0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 673
    new-instance v1, Lcom/b/a/c/i$1;

    invoke-direct {v1, p0}, Lcom/b/a/c/i$1;-><init>(Lcom/b/a/c/i;)V

    .line 12183
    iget-object v0, p0, Lc/a/a/a/i;->g:Lc/a/a/a/h;

    invoke-virtual {v0}, Lc/a/a/a/h;->f()Ljava/util/Collection;

    move-result-object v0

    .line 685
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/a/a/c/l;

    .line 686
    invoke-virtual {v1, v0}, Lc/a/a/a/a/c/g;->a(Lc/a/a/a/a/c/l;)V

    goto :goto_0

    .line 13123
    :cond_0
    iget-object v0, p0, Lc/a/a/a/i;->f:Lc/a/a/a/c;

    .line 13500
    iget-object v0, v0, Lc/a/a/a/c;->c:Ljava/util/concurrent/ExecutorService;

    .line 689
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 691
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v1, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 704
    :goto_1
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics was interrupted during initialization."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 699
    :catch_1
    move-exception v0

    .line 700
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 701
    :catch_2
    move-exception v0

    .line 702
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics timed out during initialization."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private m()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/b/a/c/i;->t:Lcom/b/a/c/g;

    new-instance v1, Lcom/b/a/c/i$3;

    invoke-direct {v1, p0}, Lcom/b/a/c/i$3;-><init>(Lcom/b/a/c/i;)V

    invoke-virtual {v0, v1}, Lcom/b/a/c/g;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 741
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    const-string/jumbo v0, "2.3.15.167"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    const-string/jumbo v0, "com.crashlytics.sdk.android.crashlytics-core"

    return-object v0
.end method

.method protected final c_()Z
    .locals 1

    .prologue
    .line 206
    .line 1116
    iget-object v0, p0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 207
    invoke-direct {p0, v0}, Lcom/b/a/c/i;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/b/a/c/i;->e()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 298
    .line 6710
    iget-object v0, p0, Lcom/b/a/c/i;->t:Lcom/b/a/c/g;

    new-instance v2, Lcom/b/a/c/i$2;

    invoke-direct {v2, p0}, Lcom/b/a/c/i$2;-><init>(Lcom/b/a/c/i;)V

    invoke-virtual {v0, v2}, Lcom/b/a/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 6766
    iget-object v0, p0, Lcom/b/a/c/i;->u:Lcom/b/a/c/a/a;

    if-eqz v0, :cond_6

    .line 6767
    iget-object v0, p0, Lcom/b/a/c/i;->u:Lcom/b/a/c/a/a;

    invoke-interface {v0}, Lcom/b/a/c/a/a;->a()Lcom/b/a/c/a/a/d;

    move-result-object v0

    .line 301
    :goto_0
    if-eqz v0, :cond_0

    .line 302
    iget-object v2, p0, Lcom/b/a/c/i;->d:Lcom/b/a/c/h;

    .line 6842
    iget-object v3, v2, Lcom/b/a/c/h;->f:Lcom/b/a/c/g;

    new-instance v4, Lcom/b/a/c/h$7;

    invoke-direct {v4, v2, v0}, Lcom/b/a/c/h$7;-><init>(Lcom/b/a/c/h;Lcom/b/a/c/a/a/d;)V

    invoke-virtual {v3, v4}, Lcom/b/a/c/g;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/b/a/c/i;->d:Lcom/b/a/c/h;

    .line 7727
    iget-object v2, v0, Lcom/b/a/c/h;->f:Lcom/b/a/c/g;

    new-instance v3, Lcom/b/a/c/h$5;

    invoke-direct {v3, v0}, Lcom/b/a/c/h$5;-><init>(Lcom/b/a/c/h;)V

    invoke-virtual {v2, v3}, Lcom/b/a/c/g;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 8055
    :try_start_0
    invoke-static {}, Lc/a/a/a/a/g/q$a;->a()Lc/a/a/a/a/g/q;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lc/a/a/a/a/g/q;->a()Lc/a/a/a/a/g/t;

    move-result-object v2

    .line 310
    if-nez v2, :cond_1

    .line 311
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Received null settings, skipping report submission!"

    invoke-interface {v0, v2, v3}, Lc/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-direct {p0}, Lcom/b/a/c/i;->m()V

    .line 341
    :goto_1
    return-object v1

    .line 315
    :cond_1
    :try_start_1
    iget-object v0, v2, Lc/a/a/a/a/g/t;->d:Lc/a/a/a/a/g/m;

    iget-boolean v0, v0, Lc/a/a/a/a/g/m;->c:Z

    if-nez v0, :cond_2

    .line 316
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Collection of crash reports disabled in Crashlytics settings."

    invoke-interface {v0, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    invoke-direct {p0}, Lcom/b/a/c/i;->m()V

    goto :goto_1

    .line 321
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/b/a/c/i;->d:Lcom/b/a/c/h;

    iget-object v3, v2, Lc/a/a/a/a/g/t;->b:Lc/a/a/a/a/g/p;

    .line 8472
    iget-object v4, v0, Lcom/b/a/c/h;->f:Lcom/b/a/c/g;

    new-instance v5, Lcom/b/a/c/h$4;

    invoke-direct {v5, v0, v3}, Lcom/b/a/c/h$4;-><init>(Lcom/b/a/c/h;Lc/a/a/a/a/g/p;)V

    invoke-virtual {v4, v5}, Lcom/b/a/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 321
    if-nez v0, :cond_3

    .line 322
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v3, "CrashlyticsCore"

    const-string/jumbo v4, "Could not finalize previous sessions."

    invoke-interface {v0, v3, v4}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_3
    iget-object v3, p0, Lcom/b/a/c/i;->d:Lcom/b/a/c/h;

    iget v4, p0, Lcom/b/a/c/i;->q:F

    .line 9307
    if-nez v2, :cond_4

    .line 9308
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Could not send reports. Settings are not available."

    invoke-interface {v0, v2, v3}, Lc/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    :goto_2
    invoke-direct {p0}, Lcom/b/a/c/i;->m()V

    goto :goto_1

    .line 9313
    :cond_4
    :try_start_3
    iget-object v0, v2, Lc/a/a/a/a/g/t;->a:Lc/a/a/a/a/g/e;

    iget-object v0, v0, Lc/a/a/a/a/g/e;->d:Ljava/lang/String;

    .line 9314
    invoke-virtual {v3, v0}, Lcom/b/a/c/h;->a(Ljava/lang/String;)Lcom/b/a/c/o;

    move-result-object v5

    .line 9315
    invoke-virtual {v3, v2}, Lcom/b/a/c/h;->a(Lc/a/a/a/a/g/t;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/b/a/c/h$d;

    iget-object v6, v3, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    iget-object v7, v3, Lcom/b/a/c/h;->g:Lcom/b/a/c/ab;

    iget-object v2, v2, Lc/a/a/a/a/g/t;->c:Lc/a/a/a/a/g/o;

    invoke-direct {v0, v6, v7, v2}, Lcom/b/a/c/h$d;-><init>(Lc/a/a/a/i;Lcom/b/a/c/ab;Lc/a/a/a/a/g/o;)V

    .line 9319
    :goto_3
    new-instance v2, Lcom/b/a/c/af;

    iget-object v3, v3, Lcom/b/a/c/h;->h:Lcom/b/a/c/a;

    iget-object v3, v3, Lcom/b/a/c/a;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Lcom/b/a/c/af;-><init>(Ljava/lang/String;Lcom/b/a/c/o;)V

    invoke-virtual {v2, v4, v0}, Lcom/b/a/c/af;->a(FLcom/b/a/c/af$b;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 326
    :catch_0
    move-exception v0

    .line 327
    :try_start_4
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsCore"

    const-string/jumbo v4, "Crashlytics encountered a problem during asynchronous initialization."

    invoke-interface {v2, v3, v4, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 338
    invoke-direct {p0}, Lcom/b/a/c/i;->m()V

    goto/16 :goto_1

    .line 9315
    :cond_5
    :try_start_5
    new-instance v0, Lcom/b/a/c/af$a;

    invoke-direct {v0}, Lcom/b/a/c/af$a;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 338
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/b/a/c/i;->m()V

    throw v0

    :cond_6
    move-object v0, v1

    goto/16 :goto_0
.end method

.method final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    .line 10109
    iget-object v0, p0, Lc/a/a/a/i;->j:Lc/a/a/a/a/b/o;

    .line 10139
    iget-boolean v0, v0, Lc/a/a/a/a/b/o;->b:Z

    .line 652
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/i;->n:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    .line 11109
    iget-object v0, p0, Lc/a/a/a/i;->j:Lc/a/a/a/a/b/o;

    .line 11139
    iget-boolean v0, v0, Lc/a/a/a/a/b/o;->b:Z

    .line 656
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/i;->o:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    .line 12109
    iget-object v0, p0, Lc/a/a/a/i;->j:Lc/a/a/a/a/b/o;

    .line 12139
    iget-boolean v0, v0, Lc/a/a/a/a/b/o;->b:Z

    .line 660
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/i;->p:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
