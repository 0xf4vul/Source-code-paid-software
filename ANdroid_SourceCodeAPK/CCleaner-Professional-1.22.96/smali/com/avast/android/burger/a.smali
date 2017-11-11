.class public final Lcom/avast/android/burger/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static e:Z


# instance fields
.field a:Lcom/avast/android/burger/b/b;

.field b:Lcom/avast/android/burger/internal/server/b;

.field c:Lcom/avast/android/burger/internal/c/i;

.field d:Lcom/avast/android/burger/internal/config/a;

.field private final f:Lcom/avast/android/burger/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avast/android/burger/a;->e:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/avast/android/burger/internal/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/avast/android/burger/a;->f:Lcom/avast/android/burger/internal/a;

    .line 143
    invoke-static {}, Lcom/avast/android/burger/internal/a/p;->a()Lcom/avast/android/burger/internal/a/k;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/avast/android/burger/internal/a/k;->a(Lcom/avast/android/burger/a;)V

    .line 9180
    invoke-static {}, Lcom/avast/android/e/a;->a()Lcom/avast/android/e/a;

    move-result-object v0

    .line 10053
    iget-object v1, v0, Lcom/avast/android/e/a;->a:Lcom/avast/android/e/b/c;

    if-nez v1, :cond_0

    .line 10054
    new-instance v1, Lcom/avast/android/e/b/c;

    invoke-direct {v1, p1}, Lcom/avast/android/e/b/c;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/avast/android/e/a;->a:Lcom/avast/android/e/b/c;

    .line 10055
    invoke-static {p1}, Lcom/evernote/android/job/e;->a(Landroid/content/Context;)Lcom/evernote/android/job/e;

    move-result-object v1

    new-instance v2, Lcom/avast/android/e/b/b;

    invoke-direct {v2}, Lcom/avast/android/e/b/b;-><init>()V

    invoke-virtual {v1, v2}, Lcom/evernote/android/job/e;->a(Lcom/evernote/android/job/b;)V

    .line 9182
    :cond_0
    const-string/jumbo v1, "BurgerJob"

    new-instance v2, Lcom/avast/android/burger/a$2;

    invoke-direct {v2, p0}, Lcom/avast/android/burger/a$2;-><init>(Lcom/avast/android/burger/a;)V

    .line 10069
    iget-object v0, v0, Lcom/avast/android/e/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/avast/android/burger/a;->a:Lcom/avast/android/burger/b/b;

    invoke-interface {v0}, Lcom/avast/android/burger/b/b;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/avast/android/burger/internal/c/b;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    invoke-static {p1}, Lcom/avast/android/f/c/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/avast/android/burger/a;->c:Lcom/avast/android/burger/internal/c/i;

    const-string/jumbo v1, "BurgerJob"

    invoke-interface {v0, v1}, Lcom/avast/android/burger/internal/c/i;->a(Ljava/lang/String;)V

    .line 150
    :cond_1
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v1, "Data are stale on start"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const/4 v0, 0x1

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/avast/android/burger/internal/AutoSenderBroadcastReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v0, v1}, Lcom/avast/android/burger/internal/e/d;->a(Landroid/content/Context;ZLandroid/content/ComponentName;)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/avast/android/burger/a;->a:Lcom/avast/android/burger/b/b;

    invoke-interface {v0}, Lcom/avast/android/burger/b/b;->l()Z

    move-result v0

    if-nez v0, :cond_3

    .line 154
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/avast/android/burger/internal/ReferralReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v3, v0}, Lcom/avast/android/burger/internal/e/d;->a(Landroid/content/Context;ZLandroid/content/ComponentName;)V

    .line 156
    :cond_3
    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Application;Lcom/avast/android/burger/b;Lcom/avast/android/b/b;)Lcom/avast/android/burger/a;
    .locals 2

    .prologue
    .line 92
    const-class v1, Lcom/avast/android/burger/a;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/avast/android/burger/a;->a(Landroid/content/Context;Lcom/avast/android/burger/b;Lcom/avast/android/b/b;)Lcom/avast/android/burger/a;

    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit v1

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lcom/avast/android/burger/b;Lcom/avast/android/b/b;)Lcom/avast/android/burger/a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 115
    const-class v1, Lcom/avast/android/burger/a;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/avast/android/burger/a;->e:Z

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Burger is already initialized!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 118
    :cond_0
    :try_start_1
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    .line 1511
    iget v2, p1, Lcom/avast/android/burger/b;->v:I

    .line 118
    iput v2, v0, Lcom/avast/android/burger/c/a;->a:I

    .line 119
    sget-object v0, Lcom/avast/android/burger/c/b;->b:Lcom/avast/android/burger/c/a;

    .line 2511
    iget v2, p1, Lcom/avast/android/burger/b;->v:I

    .line 119
    iput v2, v0, Lcom/avast/android/burger/c/a;->a:I

    .line 3166
    invoke-static {p0}, Lcom/evernote/android/job/e;->a(Landroid/content/Context;)Lcom/evernote/android/job/e;

    move-result-object v0

    .line 3167
    new-instance v2, Lcom/avast/android/burger/internal/c/c;

    invoke-direct {v2}, Lcom/avast/android/burger/internal/c/c;-><init>()V

    invoke-virtual {v0, v2}, Lcom/evernote/android/job/e;->a(Lcom/evernote/android/job/b;)V

    .line 3196
    iget-object v2, v0, Lcom/evernote/android/job/e;->f:Lcom/evernote/android/job/e$a;

    .line 3168
    invoke-virtual {p1}, Lcom/avast/android/burger/b;->c()Z

    move-result v3

    .line 3604
    if-eqz v3, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_1

    .line 3605
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "This method is only allowed to call on Android M or earlier"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3607
    :cond_1
    iput-boolean v3, v2, Lcom/evernote/android/job/e$a;->b:Z

    .line 4196
    iget-object v0, v0, Lcom/evernote/android/job/e;->f:Lcom/evernote/android/job/e$a;

    .line 3169
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/avast/android/burger/c/a;->b(I)Z

    move-result v0

    .line 4544
    invoke-static {v0}, Lcom/evernote/android/job/a/d;->a(Z)V

    .line 121
    invoke-static {}, Lcom/avast/android/burger/internal/a/u;->f()Lcom/avast/android/burger/internal/a/u$a;

    move-result-object v2

    new-instance v0, Lcom/avast/android/burger/internal/a/q;

    invoke-direct {v0, p1, p2}, Lcom/avast/android/burger/internal/a/q;-><init>(Lcom/avast/android/burger/b;Lcom/avast/android/b/b;)V

    .line 5358
    invoke-static {v0}, La/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/internal/a/q;

    iput-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->a:Lcom/avast/android/burger/internal/a/q;

    .line 122
    new-instance v0, Lcom/avast/android/burger/internal/a/f;

    invoke-direct {v0}, Lcom/avast/android/burger/internal/a/f;-><init>()V

    .line 5363
    invoke-static {v0}, La/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/internal/a/f;

    iput-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->e:Lcom/avast/android/burger/internal/a/f;

    .line 123
    new-instance v0, Lcom/avast/android/burger/internal/a/a;

    invoke-direct {v0}, Lcom/avast/android/burger/internal/a/a;-><init>()V

    .line 6353
    invoke-static {v0}, La/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/internal/a/a;

    iput-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->f:Lcom/avast/android/burger/internal/a/a;

    .line 124
    new-instance v0, Lcom/avast/android/burger/internal/a/l;

    invoke-direct {v0, p0}, Lcom/avast/android/burger/internal/a/l;-><init>(Landroid/content/Context;)V

    .line 6373
    invoke-static {v0}, La/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/internal/a/l;

    iput-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->b:Lcom/avast/android/burger/internal/a/l;

    .line 125
    new-instance v0, Lcom/avast/android/burger/internal/a/v;

    invoke-direct {v0}, Lcom/avast/android/burger/internal/a/v;-><init>()V

    .line 6378
    invoke-static {v0}, La/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/internal/a/v;

    iput-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->c:Lcom/avast/android/burger/internal/a/v;

    .line 126
    new-instance v0, Lcom/avast/android/burger/internal/a/x;

    invoke-direct {v0}, Lcom/avast/android/burger/internal/a/x;-><init>()V

    .line 7368
    invoke-static {v0}, La/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/burger/internal/a/x;

    iput-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->d:Lcom/avast/android/burger/internal/a/x;

    .line 8331
    iget-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->a:Lcom/avast/android/burger/internal/a/q;

    if-nez v0, :cond_2

    .line 8332
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/avast/android/burger/internal/a/q;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must be set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8334
    :cond_2
    iget-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->b:Lcom/avast/android/burger/internal/a/l;

    if-nez v0, :cond_3

    .line 8335
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/avast/android/burger/internal/a/l;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must be set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8337
    :cond_3
    iget-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->c:Lcom/avast/android/burger/internal/a/v;

    if-nez v0, :cond_4

    .line 8338
    new-instance v0, Lcom/avast/android/burger/internal/a/v;

    invoke-direct {v0}, Lcom/avast/android/burger/internal/a/v;-><init>()V

    iput-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->c:Lcom/avast/android/burger/internal/a/v;

    .line 8340
    :cond_4
    iget-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->d:Lcom/avast/android/burger/internal/a/x;

    if-nez v0, :cond_5

    .line 8341
    new-instance v0, Lcom/avast/android/burger/internal/a/x;

    invoke-direct {v0}, Lcom/avast/android/burger/internal/a/x;-><init>()V

    iput-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->d:Lcom/avast/android/burger/internal/a/x;

    .line 8343
    :cond_5
    iget-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->e:Lcom/avast/android/burger/internal/a/f;

    if-nez v0, :cond_6

    .line 8344
    new-instance v0, Lcom/avast/android/burger/internal/a/f;

    invoke-direct {v0}, Lcom/avast/android/burger/internal/a/f;-><init>()V

    iput-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->e:Lcom/avast/android/burger/internal/a/f;

    .line 8346
    :cond_6
    iget-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->f:Lcom/avast/android/burger/internal/a/a;

    if-nez v0, :cond_7

    .line 8347
    new-instance v0, Lcom/avast/android/burger/internal/a/a;

    invoke-direct {v0}, Lcom/avast/android/burger/internal/a/a;-><init>()V

    iput-object v0, v2, Lcom/avast/android/burger/internal/a/u$a;->f:Lcom/avast/android/burger/internal/a/a;

    .line 8349
    :cond_7
    new-instance v0, Lcom/avast/android/burger/internal/a/u;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/avast/android/burger/internal/a/u;-><init>(Lcom/avast/android/burger/internal/a/u$a;B)V

    .line 9076
    sget-object v2, Lcom/avast/android/burger/internal/a;->g:Lcom/avast/android/burger/internal/a;

    if-eqz v2, :cond_8

    .line 9077
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "BurgerCore already created!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9079
    :cond_8
    invoke-static {v0}, Lcom/avast/android/burger/internal/a/p;->a(Lcom/avast/android/burger/internal/a/k;)V

    .line 9080
    new-instance v0, Lcom/avast/android/burger/internal/a;

    invoke-direct {v0}, Lcom/avast/android/burger/internal/a;-><init>()V

    .line 9081
    sput-object v0, Lcom/avast/android/burger/internal/a;->g:Lcom/avast/android/burger/internal/a;

    .line 130
    new-instance v2, Lcom/avast/android/burger/a;

    invoke-direct {v2, p0, v0}, Lcom/avast/android/burger/a;-><init>(Landroid/content/Context;Lcom/avast/android/burger/internal/a;)V

    .line 131
    new-instance v3, Lcom/avast/android/burger/a$1;

    invoke-direct {v3, v0}, Lcom/avast/android/burger/a$1;-><init>(Lcom/avast/android/burger/internal/a;)V

    .line 136
    invoke-virtual {v3}, Lcom/avast/android/burger/a$1;->b()V

    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avast/android/burger/a;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    monitor-exit v1

    return-object v2
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    new-instance v3, Lcom/avast/android/burger/a/g;

    iget-object v0, p0, Lcom/avast/android/burger/a;->d:Lcom/avast/android/burger/internal/config/a;

    invoke-interface {v0}, Lcom/avast/android/burger/internal/config/a;->a()Lcom/avast/android/burger/b;

    move-result-object v0

    .line 10417
    iget v0, v0, Lcom/avast/android/burger/b;->h:I

    .line 255
    iget-object v4, p0, Lcom/avast/android/burger/a;->d:Lcom/avast/android/burger/internal/config/a;

    .line 256
    invoke-interface {v4}, Lcom/avast/android/burger/internal/config/a;->a()Lcom/avast/android/burger/b;

    move-result-object v4

    .line 10519
    iget-wide v4, v4, Lcom/avast/android/burger/b;->w:J

    .line 256
    invoke-direct {v3, v0, v4, v5}, Lcom/avast/android/burger/a/g;-><init>(IJ)V

    .line 12069
    iget-object v0, v3, Lcom/avast/android/burger/a/i;->a:Lcom/avast/a/b/a/a$g;

    .line 11230
    invoke-static {v0}, Lcom/avast/android/burger/a/d;->c(Lcom/avast/a/b/a/a$g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Event is not valid. Check that your event type is set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11233
    :cond_0
    sget-object v0, Lcom/avast/android/burger/c/b;->b:Lcom/avast/android/burger/c/a;

    const-string/jumbo v4, "Adding event:\n%s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/avast/android/burger/a/k;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12138
    iget-object v0, v3, Lcom/avast/android/burger/a/i;->a:Lcom/avast/a/b/a/a$g;

    invoke-static {v0}, Lcom/avast/android/burger/a/d;->e(Lcom/avast/a/b/a/a$g;)Ljava/lang/String;

    move-result-object v4

    .line 11235
    iget-object v0, p0, Lcom/avast/android/burger/a;->a:Lcom/avast/android/burger/b/b;

    invoke-interface {v0, v4}, Lcom/avast/android/burger/b/b;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 13131
    invoke-virtual {v3}, Lcom/avast/android/burger/a/k;->b()J

    move-result-wide v8

    invoke-static {v8, v9, v6, v7, v2}, Lcom/avast/android/burger/a/d;->a(JJZ)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 11235
    :goto_0
    if-eqz v0, :cond_2

    .line 11236
    sget-object v0, Lcom/avast/android/burger/c/b;->b:Lcom/avast/android/burger/c/a;

    const-string/jumbo v4, "Threshold filter - ignoring event:\n%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/avast/android/burger/a/k;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/avast/android/burger/c/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11237
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 13131
    goto :goto_0

    .line 11239
    :cond_2
    iget-object v0, p0, Lcom/avast/android/burger/a;->f:Lcom/avast/android/burger/internal/a;

    .line 13271
    iget-object v0, v0, Lcom/avast/android/burger/internal/a;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/avast/android/burger/internal/BurgerMessageService;->a(Landroid/content/Context;Lcom/avast/android/burger/a/i;)V

    .line 11240
    iget-object v0, p0, Lcom/avast/android/burger/a;->a:Lcom/avast/android/burger/b/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v4, v2, v3}, Lcom/avast/android/burger/b/b;->a(Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method
