.class abstract Lcom/b/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/b/j;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Landroid/content/Context;

.field private d:Lcom/b/a/b/c;

.field private e:Lc/a/a/a/a/b/o;

.field private f:Lc/a/a/a/a/g/f;

.field private g:Lcom/b/a/b/d;

.field private h:Lc/a/a/a/a/f/c;

.field private i:Lc/a/a/a/a/b/k;

.field private j:Lc/a/a/a/a/e/e;

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/a/b/a;-><init>(Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/b/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/b/a/b/a;->k:J

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/b/a/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v3, p0, Lcom/b/a/b/a;->h:Lc/a/a/a/a/f/c;

    monitor-enter v3

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/b/a/b/a;->h:Lc/a/a/a/a/f/c;

    invoke-interface {v2}, Lc/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v4, "last_update_check"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/b/a/b/a;->h:Lc/a/a/a/a/f/c;

    iget-object v4, p0, Lcom/b/a/b/a;->h:Lc/a/a/a/a/f/c;

    invoke-interface {v4}, Lc/a/a/a/a/f/c;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "last_update_check"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v2, v4}, Lc/a/a/a/a/f/c;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 122
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v2, p0, Lcom/b/a/b/a;->i:Lc/a/a/a/a/b/k;

    invoke-interface {v2}, Lc/a/a/a/a/b/k;->a()J

    move-result-wide v10

    .line 125
    iget-object v2, p0, Lcom/b/a/b/a;->f:Lc/a/a/a/a/g/f;

    iget v2, v2, Lc/a/a/a/a/g/f;->b:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 128
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v4

    const-string/jumbo v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Check for updates delay: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v4

    const-string/jumbo v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Check for updates last check time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1180
    iget-wide v8, p0, Lcom/b/a/b/a;->k:J

    .line 129
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2180
    iget-wide v4, p0, Lcom/b/a/b/a;->k:J

    .line 132
    add-long/2addr v2, v4

    .line 134
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v4

    const-string/jumbo v5, "Beta"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Check for updates current time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", next check time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    cmp-long v2, v10, v2

    if-ltz v2, :cond_1

    .line 3149
    :try_start_1
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v2

    const-string/jumbo v3, "Beta"

    const-string/jumbo v4, "Performing update check"

    invoke-interface {v2, v3, v4}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    new-instance v2, Lc/a/a/a/a/b/g;

    invoke-direct {v2}, Lc/a/a/a/a/b/g;-><init>()V

    iget-object v2, p0, Lcom/b/a/b/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lc/a/a/a/a/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 3152
    iget-object v2, p0, Lcom/b/a/b/a;->e:Lc/a/a/a/a/b/o;

    invoke-virtual {v2}, Lc/a/a/a/a/b/o;->c()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lc/a/a/a/a/b/o$a;->c:Lc/a/a/a/a/b/o$a;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 3155
    new-instance v2, Lcom/b/a/b/e;

    iget-object v3, p0, Lcom/b/a/b/a;->d:Lcom/b/a/b/c;

    iget-object v4, p0, Lcom/b/a/b/a;->d:Lcom/b/a/b/c;

    .line 4116
    iget-object v4, v4, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 3197
    const-string/jumbo v5, "com.crashlytics.ApiEndpoint"

    invoke-static {v4, v5}, Lc/a/a/a/a/b/i;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3155
    iget-object v5, p0, Lcom/b/a/b/a;->f:Lc/a/a/a/a/g/f;

    iget-object v5, v5, Lc/a/a/a/a/g/f;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/b/a/b/a;->j:Lc/a/a/a/a/e/e;

    new-instance v7, Lcom/b/a/b/g;

    invoke-direct {v7}, Lcom/b/a/b/g;-><init>()V

    invoke-direct/range {v2 .. v7}, Lcom/b/a/b/e;-><init>(Lc/a/a/a/i;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/e;Lcom/b/a/b/g;)V

    .line 3166
    iget-object v3, p0, Lcom/b/a/b/a;->g:Lcom/b/a/b/d;

    invoke-virtual {v2, v9, v8, v3}, Lcom/b/a/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/b/a/b/d;)Lcom/b/a/b/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4173
    iput-wide v10, p0, Lcom/b/a/b/a;->k:J

    .line 146
    :goto_0
    return-void

    .line 122
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 141
    :catchall_1
    move-exception v2

    .line 5173
    iput-wide v10, p0, Lcom/b/a/b/a;->k:J

    .line 141
    throw v2

    .line 144
    :cond_1
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v2

    const-string/jumbo v3, "Beta"

    const-string/jumbo v4, "Check for updates next check time was not passed"

    invoke-interface {v2, v3, v4}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/b/a/b/c;Lc/a/a/a/a/b/o;Lc/a/a/a/a/g/f;Lcom/b/a/b/d;Lc/a/a/a/a/f/c;Lc/a/a/a/a/b/k;Lc/a/a/a/a/e/e;)V
    .locals 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/b/a/b/a;->c:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/b/a/b/a;->d:Lcom/b/a/b/c;

    .line 83
    iput-object p3, p0, Lcom/b/a/b/a;->e:Lc/a/a/a/a/b/o;

    .line 84
    iput-object p4, p0, Lcom/b/a/b/a;->f:Lc/a/a/a/a/g/f;

    .line 85
    iput-object p5, p0, Lcom/b/a/b/a;->g:Lcom/b/a/b/d;

    .line 86
    iput-object p6, p0, Lcom/b/a/b/a;->h:Lc/a/a/a/a/f/c;

    .line 87
    iput-object p7, p0, Lcom/b/a/b/a;->i:Lc/a/a/a/a/b/k;

    .line 88
    iput-object p8, p0, Lcom/b/a/b/a;->j:Lc/a/a/a/a/e/e;

    .line 1110
    iget-object v0, p0, Lcom/b/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1111
    iget-object v0, p0, Lcom/b/a/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/b/a/b/a;->a()V

    .line 93
    :cond_0
    return-void
.end method
