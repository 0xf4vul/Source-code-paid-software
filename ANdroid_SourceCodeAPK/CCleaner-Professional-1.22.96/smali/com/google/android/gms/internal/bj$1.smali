.class final Lcom/google/android/gms/internal/bj$1;
.super Lcom/google/android/gms/internal/bj$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bj;->a(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/internal/bg$a;)Lcom/google/android/gms/common/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/google/android/gms/internal/bg$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/internal/bg$a;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/bj$1;->h:Lcom/google/android/gms/internal/bg$a;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bj$c;-><init>(Lcom/google/android/gms/common/api/c;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/google/android/gms/internal/br;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 0
    invoke-static {}, Lcom/google/android/gms/common/data/d;->c()Lcom/google/android/gms/common/data/DataHolder$a;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/bj$1;->h:Lcom/google/android/gms/internal/bg$a;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/bg$a;->b:Ljava/util/Map;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 0
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/google/android/gms/internal/zzads;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lcom/google/android/gms/internal/zzads;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/google/android/gms/common/data/d;->a(Lcom/google/android/gms/common/data/DataHolder$a;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    goto :goto_1

    .line 1000
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/bg$a;->b:Ljava/util/Map;

    goto :goto_0

    .line 2000
    :cond_1
    new-instance v4, Lcom/google/android/gms/common/data/DataHolder;

    const/4 v0, 0x0

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$a;B)V

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/internal/ab;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/ab;->a()Ljava/lang/String;

    move-result-object v5

    :goto_2
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/c;->a()Lcom/google/firebase/iid/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/c;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :try_start_1
    invoke-static {}, Lcom/google/firebase/iid/c;->a()Lcom/google/firebase/iid/c;

    move-result-object v0

    .line 3000
    iget-object v0, v0, Lcom/google/firebase/iid/c;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 4000
    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->b()Lcom/google/firebase/iid/h$a;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/google/firebase/iid/d;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/iid/h$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v0, v0, Lcom/google/firebase/iid/FirebaseInstanceId;->a:Lcom/google/firebase/b;

    invoke-virtual {v0}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->a(Landroid/content/Context;)V

    :cond_3
    if-eqz v1, :cond_5

    iget-object v0, v1, Lcom/google/firebase/iid/h$a;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v7, v0

    .line 0
    :goto_4
    invoke-static {p1}, Lcom/google/android/gms/internal/bi;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    new-instance v0, Lcom/google/android/gms/internal/zzadu;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/bj$1;->h:Lcom/google/android/gms/internal/bg$a;

    .line 5000
    iget-wide v2, v2, Lcom/google/android/gms/internal/bg$a;->a:J

    .line 0
    iget-object v9, p0, Lcom/google/android/gms/internal/bj$1;->h:Lcom/google/android/gms/internal/bg$a;

    .line 6000
    iget v9, v9, Lcom/google/android/gms/internal/bg$a;->c:I

    .line 0
    iget-object v11, p0, Lcom/google/android/gms/internal/bj$1;->h:Lcom/google/android/gms/internal/bg$a;

    .line 7000
    iget v11, v11, Lcom/google/android/gms/internal/bg$a;->e:I

    .line 0
    iget-object v12, p0, Lcom/google/android/gms/internal/bj$1;->h:Lcom/google/android/gms/internal/bg$a;

    .line 8000
    iget v12, v12, Lcom/google/android/gms/internal/bg$a;->d:I

    .line 0
    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/zzadu;-><init>(Ljava/lang/String;JLcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;II)V

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/bj$1;->i:Lcom/google/android/gms/internal/bq;

    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/br;->a(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/zzadu;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v4}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_4
    move-object v5, v8

    goto :goto_2

    :cond_5
    move-object v0, v8

    .line 4000
    goto :goto_3

    .line 0
    :catch_0
    move-exception v0

    move-object v6, v8

    :goto_5
    const-string/jumbo v1, "ConfigApiImpl"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "ConfigApiImpl"

    const-string/jumbo v2, "Cannot retrieve instanceId or instanceIdToken."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    move-object v7, v8

    goto :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_5
.end method

.method protected final synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/g;
    .locals 2

    .prologue
    .line 9000
    new-instance v0, Lcom/google/android/gms/internal/bj$d;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/bj$d;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/Map;)V

    .line 0
    return-object v0
.end method
