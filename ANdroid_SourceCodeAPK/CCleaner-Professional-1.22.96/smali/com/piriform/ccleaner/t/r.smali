.class public final Lcom/piriform/ccleaner/t/r;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/t/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/t/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/piriform/ccleaner/t/r$a;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/piriform/ccleaner/t/o;"
    }
.end annotation


# instance fields
.field private final a:Lcom/piriform/ccleaner/t/o;

.field private final b:Lcom/piriform/ccleaner/t/s;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/u;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/x$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/t/s;Lcom/piriform/ccleaner/t/o;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/t/r;->c:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/t/r;->d:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/t/r;->e:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/t/r;->f:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lcom/piriform/ccleaner/t/r;->a:Lcom/piriform/ccleaner/t/o;

    .line 29
    iput-object p1, p0, Lcom/piriform/ccleaner/t/r;->b:Lcom/piriform/ccleaner/t/s;

    .line 1060
    iput-object p0, p1, Lcom/piriform/ccleaner/t/s;->f:Lcom/piriform/ccleaner/t/o;

    .line 31
    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->b:Lcom/piriform/ccleaner/t/s;

    .line 1086
    iget-object v1, v0, Lcom/piriform/ccleaner/t/s;->a:Lcom/piriform/ccleaner/t/t;

    .line 2034
    iget-object v2, v1, Lcom/piriform/ccleaner/t/t;->a:Landroid/content/Context;

    iget-object v1, v1, Lcom/piriform/ccleaner/t/t;->e:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1087
    iget-object v0, v0, Lcom/piriform/ccleaner/t/s;->b:Lcom/piriform/ccleaner/t/g;

    .line 2050
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2051
    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2052
    const-string/jumbo v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2053
    const-string/jumbo v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2054
    const-string/jumbo v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2055
    const-string/jumbo v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2056
    const-string/jumbo v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2058
    iget-object v2, v0, Lcom/piriform/ccleaner/t/g;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->b:Lcom/piriform/ccleaner/t/s;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/t/s;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    invoke-virtual {p0}, Lcom/piriform/ccleaner/t/r;->isCancelled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->b:Lcom/piriform/ccleaner/t/s;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/t/s;->c()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/piriform/ccleaner/t/r;->b:Lcom/piriform/ccleaner/t/s;

    invoke-virtual {v1}, Lcom/piriform/ccleaner/t/s;->c()V

    throw v0

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/t/s;Lcom/piriform/ccleaner/t/u;)V
    .locals 4

    .prologue
    .line 91
    iget-object v1, p0, Lcom/piriform/ccleaner/t/r;->c:Ljava/util/List;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-boolean v0, p0, Lcom/piriform/ccleaner/t/r;->g:Z

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/t/r;->g:Z

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/piriform/ccleaner/t/r$a;

    const/4 v2, 0x0

    sget-object v3, Lcom/piriform/ccleaner/t/r$a;->a:Lcom/piriform/ccleaner/t/r$a;

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/t/r;->publishProgress([Ljava/lang/Object;)V

    .line 97
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;)V
    .locals 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/piriform/ccleaner/t/r;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/piriform/ccleaner/t/r;->h:Z

    if-nez v0, :cond_1

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/t/r;->h:Z

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/piriform/ccleaner/t/r$a;

    const/4 v2, 0x0

    sget-object v3, Lcom/piriform/ccleaner/t/r$a;->b:Lcom/piriform/ccleaner/t/r$a;

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/t/r;->publishProgress([Ljava/lang/Object;)V

    .line 112
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/piriform/ccleaner/t/s;",
            "Ljava/util/UUID;",
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/t/x$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 117
    iget-object v1, p0, Lcom/piriform/ccleaner/t/r;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    monitor-exit v1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 123
    invoke-interface {v0, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 124
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 125
    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 126
    invoke-interface {v2, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 128
    invoke-interface {p3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-boolean v0, p0, Lcom/piriform/ccleaner/t/r;->i:Z

    if-nez v0, :cond_0

    .line 137
    iput-boolean v3, p0, Lcom/piriform/ccleaner/t/r;->i:Z

    .line 138
    new-array v0, v3, [Lcom/piriform/ccleaner/t/r$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/piriform/ccleaner/t/r$a;->c:Lcom/piriform/ccleaner/t/r$a;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/t/r;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->e:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/piriform/ccleaner/t/r;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 13
    check-cast p1, [Lcom/piriform/ccleaner/t/r$a;

    .line 3035
    aget-object v0, p1, v0

    .line 3036
    sget-object v1, Lcom/piriform/ccleaner/t/r$1;->a:[I

    invoke-virtual {v0}, Lcom/piriform/ccleaner/t/r$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3065
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unhandled case: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/piriform/ccleaner/t/r$a;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3038
    :pswitch_0
    iget-object v1, p0, Lcom/piriform/ccleaner/t/r;->c:Ljava/util/List;

    monitor-enter v1

    .line 3039
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/piriform/ccleaner/t/r;->g:Z

    .line 3040
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/t/u;

    .line 3041
    iget-object v3, p0, Lcom/piriform/ccleaner/t/r;->a:Lcom/piriform/ccleaner/t/o;

    iget-object v4, p0, Lcom/piriform/ccleaner/t/r;->b:Lcom/piriform/ccleaner/t/s;

    invoke-interface {v3, v4, v0}, Lcom/piriform/ccleaner/t/o;->a(Lcom/piriform/ccleaner/t/s;Lcom/piriform/ccleaner/t/u;)V

    goto :goto_0

    .line 3044
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3043
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3044
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3062
    :goto_1
    return-void

    .line 3047
    :pswitch_1
    iget-object v1, p0, Lcom/piriform/ccleaner/t/r;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 3048
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/piriform/ccleaner/t/r;->h:Z

    .line 3049
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 3050
    iget-object v3, p0, Lcom/piriform/ccleaner/t/r;->a:Lcom/piriform/ccleaner/t/o;

    iget-object v4, p0, Lcom/piriform/ccleaner/t/r;->b:Lcom/piriform/ccleaner/t/s;

    invoke-interface {v3, v4, v0}, Lcom/piriform/ccleaner/t/o;->a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;)V

    goto :goto_2

    .line 3053
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 3052
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3053
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 3056
    :pswitch_2
    iget-object v2, p0, Lcom/piriform/ccleaner/t/r;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 3057
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/piriform/ccleaner/t/r;->i:Z

    .line 3058
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3059
    iget-object v4, p0, Lcom/piriform/ccleaner/t/r;->a:Lcom/piriform/ccleaner/t/o;

    iget-object v5, p0, Lcom/piriform/ccleaner/t/r;->b:Lcom/piriform/ccleaner/t/s;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v4, v5, v1, v0}, Lcom/piriform/ccleaner/t/o;->a(Lcom/piriform/ccleaner/t/s;Ljava/util/UUID;Ljava/util/List;)V

    goto :goto_3

    .line 3062
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 3061
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/piriform/ccleaner/t/r;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3062
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 3036
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
