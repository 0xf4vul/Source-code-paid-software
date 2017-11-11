.class final Lcom/google/firebase/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/b/a;->e()Lcom/google/android/gms/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/h",
        "<",
        "Lcom/google/android/gms/internal/bg$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/f;

.field final synthetic b:Lcom/google/firebase/b/a;


# direct methods
.method constructor <init>(Lcom/google/firebase/b/a;Lcom/google/android/gms/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/b/a$1;->b:Lcom/google/firebase/b/a;

    iput-object p2, p0, Lcom/google/firebase/b/a$1;->a:Lcom/google/android/gms/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/g;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 0
    check-cast p1, Lcom/google/android/gms/internal/bg$b;

    .line 1000
    iget-object v2, p0, Lcom/google/firebase/b/a$1;->b:Lcom/google/firebase/b/a;

    iget-object v3, p0, Lcom/google/firebase/b/a$1;->a:Lcom/google/android/gms/b/f;

    .line 2000
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/bg$b;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v2, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 3000
    iput v1, v0, Lcom/google/android/gms/internal/nh;->a:I

    .line 2000
    new-instance v0, Lcom/google/firebase/b/c;

    invoke-direct {v0}, Lcom/google/firebase/b/c;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/b/f;->a(Ljava/lang/Exception;)V

    invoke-virtual {v2}, Lcom/google/firebase/b/a;->d()V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/bg$b;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 4000
    iget v0, v0, Lcom/google/android/gms/common/api/Status;->i:I

    .line 2000
    iget-object v1, v2, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    sparse-switch v0, :sswitch_data_0

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/bg$b;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FirebaseRemoteConfig"

    const/16 v4, 0x2d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Unknown (successful) status code: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, v2, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 10000
    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/nh;->a:I

    .line 2000
    new-instance v0, Lcom/google/firebase/b/c;

    invoke-direct {v0}, Lcom/google/firebase/b/c;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/b/f;->a(Ljava/lang/Exception;)V

    invoke-virtual {v2}, Lcom/google/firebase/b/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, v2, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :sswitch_0
    :try_start_1
    iget-object v0, v2, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 5000
    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/nh;->a:I

    .line 2000
    new-instance v0, Lcom/google/firebase/b/c;

    invoke-direct {v0}, Lcom/google/firebase/b/c;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/b/f;->a(Ljava/lang/Exception;)V

    invoke-virtual {v2}, Lcom/google/firebase/b/a;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, v2, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :sswitch_1
    :try_start_2
    iget-object v0, v2, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 6000
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/nh;->a:I

    .line 2000
    new-instance v0, Lcom/google/firebase/b/d;

    invoke-interface {p1}, Lcom/google/android/gms/internal/bg$b;->b()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lcom/google/firebase/b/d;-><init>(J)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/b/f;->a(Ljava/lang/Exception;)V

    invoke-virtual {v2}, Lcom/google/firebase/b/a;->d()V

    goto :goto_1

    :sswitch_2
    iget-object v0, v2, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 7000
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/nh;->a:I

    .line 2000
    iget-object v0, v2, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nf;->a()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lcom/google/android/gms/internal/bg$b;->d()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/bg$b;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    invoke-interface {v7, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/nf;

    iget-object v1, v2, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    .line 8000
    iget-wide v6, v1, Lcom/google/android/gms/internal/nf;->b:J

    .line 2000
    invoke-interface {p1}, Lcom/google/android/gms/internal/bg$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v5, v6, v7, v1}, Lcom/google/android/gms/internal/nf;-><init>(Ljava/util/Map;JLjava/util/List;)V

    iput-object v0, v2, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/b/f;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/firebase/b/a;->d()V

    goto/16 :goto_1

    :sswitch_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/bg$b;->d()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/bg$b;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    invoke-interface {v7, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/nf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {p1}, Lcom/google/android/gms/internal/bg$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v5, v6, v7, v1}, Lcom/google/android/gms/internal/nf;-><init>(Ljava/util/Map;JLjava/util/List;)V

    iput-object v0, v2, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    iget-object v0, v2, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 9000
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/nh;->a:I

    .line 2000
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/b/f;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/firebase/b/a;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x196c -> :sswitch_2
        -0x196a -> :sswitch_2
        -0x1969 -> :sswitch_3
        0x1964 -> :sswitch_0
        0x1965 -> :sswitch_0
        0x1966 -> :sswitch_1
        0x1967 -> :sswitch_0
        0x1968 -> :sswitch_0
        0x196b -> :sswitch_1
    .end sparse-switch
.end method
