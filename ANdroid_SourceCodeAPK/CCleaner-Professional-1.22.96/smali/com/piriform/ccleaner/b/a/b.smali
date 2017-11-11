.class public final Lcom/piriform/ccleaner/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/b/a/a;


# static fields
.field private static d:Lcom/avast/android/burger/a;


# instance fields
.field private final a:Lcom/piriform/ccleaner/b/a/f;

.field private final b:Lcom/piriform/ccleaner/b/a/e;

.field private final c:Lcom/piriform/ccleaner/b/a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/b/a/f;Lcom/piriform/ccleaner/b/a/e;Lcom/piriform/ccleaner/b/a;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/piriform/ccleaner/b/a/b;->a:Lcom/piriform/ccleaner/b/a/f;

    .line 35
    iput-object p2, p0, Lcom/piriform/ccleaner/b/a/b;->b:Lcom/piriform/ccleaner/b/a/e;

    .line 36
    iput-object p3, p0, Lcom/piriform/ccleaner/b/a/b;->c:Lcom/piriform/ccleaner/b/a;

    .line 37
    return-void
.end method

.method private a(Landroid/app/Application;Lcom/avast/android/burger/b$a;)Lcom/avast/android/burger/a;
    .locals 3

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p2}, Lcom/avast/android/burger/b$a;->a()Lcom/avast/android/burger/b;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/b/a/b;->b:Lcom/piriform/ccleaner/b/a/e;

    invoke-static {p1, v0, v1}, Lcom/avast/android/burger/a;->a(Landroid/app/Application;Lcom/avast/android/burger/b;Lcom/avast/android/b/b;)Lcom/avast/android/burger/a;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    iget-object v1, p0, Lcom/piriform/ccleaner/b/a/b;->c:Lcom/piriform/ccleaner/b/a;

    sget-object v2, Lcom/piriform/ccleaner/b/b;->aH:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v1, v2, v0}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/Throwable;)V

    .line 71
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/piriform/ccleaner/b/a/b;->b:Lcom/piriform/ccleaner/b/a/e;

    .line 5046
    iget-object v1, v0, Lcom/piriform/ccleaner/b/a/e;->d:Lcom/google/firebase/b/a;

    .line 6000
    invoke-virtual {v1}, Lcom/google/firebase/b/a;->e()Lcom/google/android/gms/b/e;

    move-result-object v1

    .line 5046
    new-instance v2, Lcom/piriform/ccleaner/b/a/e$2;

    invoke-direct {v2, v0}, Lcom/piriform/ccleaner/b/a/e$2;-><init>(Lcom/piriform/ccleaner/b/a/e;)V

    .line 5047
    invoke-virtual {v1, v2}, Lcom/google/android/gms/b/e;->a(Lcom/google/android/gms/b/a;)Lcom/google/android/gms/b/e;

    .line 78
    return-void
.end method

.method public final a(Landroid/app/Application;)V
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Prevent Burger from crashing the app if it\'s already initialised"
        value = {
            "ST_WRITE_TO_STATIC_FROM_INSTANCE_METHOD"
        }
    .end annotation

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    :try_start_0
    sget-object v0, Lcom/piriform/ccleaner/b/a/b;->d:Lcom/avast/android/burger/a;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/avast/android/burger/b;->a()Lcom/avast/android/burger/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/b/a/b;->a:Lcom/piriform/ccleaner/b/a/f;

    .line 2040
    iget-object v1, v1, Lcom/piriform/ccleaner/b/a/f;->a:Lcom/piriform/ccleaner/b/a/d;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/b/a/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 2971
    iput-object v1, v0, Lcom/avast/android/burger/b$a;->c:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/avast/android/a/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3958
    iput-object v1, v0, Lcom/avast/android/burger/b$a;->b:Ljava/lang/String;

    .line 3985
    const/16 v1, 0x63

    iput v1, v0, Lcom/avast/android/burger/b$a;->e:I

    .line 49
    const-string/jumbo v1, "v1.22.96"

    .line 3996
    iput-object v1, v0, Lcom/avast/android/burger/b$a;->g:Ljava/lang/String;

    .line 4047
    const/16 v1, 0x3a

    iput v1, v0, Lcom/avast/android/burger/b$a;->f:I

    .line 4167
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/avast/android/burger/b$a;->s:Z

    .line 4245
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/avast/android/burger/b$a;->y:Z

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/b/a/b;->a(Landroid/app/Application;Lcom/avast/android/burger/b$a;)Lcom/avast/android/burger/a;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/b/a/b;->d:Lcom/avast/android/burger/a;

    .line 62
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
