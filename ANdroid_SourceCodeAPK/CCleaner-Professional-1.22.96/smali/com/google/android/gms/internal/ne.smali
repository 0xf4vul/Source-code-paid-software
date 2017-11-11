.class public final Lcom/google/android/gms/internal/ne;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/nf;

.field public final c:Lcom/google/android/gms/internal/nf;

.field public final d:Lcom/google/android/gms/internal/nf;

.field public final e:Lcom/google/android/gms/internal/nh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ne;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ne;->b:Lcom/google/android/gms/internal/nf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ne;->c:Lcom/google/android/gms/internal/nf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ne;->d:Lcom/google/android/gms/internal/nf;

    iput-object p5, p0, Lcom/google/android/gms/internal/ne;->e:Lcom/google/android/gms/internal/nh;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/nf;)Lcom/google/android/gms/internal/ni$a;
    .locals 10

    .prologue
    .line 0
    new-instance v3, Lcom/google/android/gms/internal/ni$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ni$a;-><init>()V

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/nf;->a:Ljava/util/Map;

    .line 0
    if-eqz v0, :cond_2

    .line 2000
    iget-object v4, p0, Lcom/google/android/gms/internal/nf;->a:Ljava/util/Map;

    .line 0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v9, Lcom/google/android/gms/internal/ni$b;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ni$b;-><init>()V

    iput-object v2, v9, Lcom/google/android/gms/internal/ni$b;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v9, Lcom/google/android/gms/internal/ni$b;->b:[B

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ni$d;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ni$d;-><init>()V

    iput-object v0, v1, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ni$b;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ni$b;

    iput-object v0, v1, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ni$d;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ni$d;

    iput-object v0, v3, Lcom/google/android/gms/internal/ni$a;->a:[Lcom/google/android/gms/internal/ni$d;

    .line 3000
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/nf;->c:Ljava/util/List;

    .line 0
    if-eqz v0, :cond_3

    .line 4000
    iget-object v0, p0, Lcom/google/android/gms/internal/nf;->c:Ljava/util/List;

    .line 0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, v3, Lcom/google/android/gms/internal/ni$a;->c:[[B

    .line 5000
    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/nf;->b:J

    .line 0
    iput-wide v0, v3, Lcom/google/android/gms/internal/ni$a;->b:J

    return-object v3
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 0
    new-instance v2, Lcom/google/android/gms/internal/ni$e;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ni$e;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ne;->b:Lcom/google/android/gms/internal/nf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ne;->b:Lcom/google/android/gms/internal/nf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ne;->a(Lcom/google/android/gms/internal/nf;)Lcom/google/android/gms/internal/ni$a;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ne;->c:Lcom/google/android/gms/internal/nf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ne;->c:Lcom/google/android/gms/internal/nf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ne;->a(Lcom/google/android/gms/internal/nf;)Lcom/google/android/gms/internal/ni$a;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ne;->d:Lcom/google/android/gms/internal/nf;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ne;->d:Lcom/google/android/gms/internal/nf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ne;->a(Lcom/google/android/gms/internal/nf;)Lcom/google/android/gms/internal/ni$a;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ne;->e:Lcom/google/android/gms/internal/nh;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/ni$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ni$c;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ne;->e:Lcom/google/android/gms/internal/nh;

    .line 6000
    iget v1, v1, Lcom/google/android/gms/internal/nh;->a:I

    .line 0
    iput v1, v0, Lcom/google/android/gms/internal/ni$c;->a:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ne;->e:Lcom/google/android/gms/internal/nh;

    .line 7000
    iget-boolean v1, v1, Lcom/google/android/gms/internal/nh;->d:Z

    .line 0
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ni$c;->b:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ne;->e:Lcom/google/android/gms/internal/nh;

    .line 8000
    iget-wide v4, v1, Lcom/google/android/gms/internal/nh;->e:J

    .line 0
    iput-wide v4, v0, Lcom/google/android/gms/internal/ni$c;->c:J

    iput-object v0, v2, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ne;->e:Lcom/google/android/gms/internal/nh;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ne;->e:Lcom/google/android/gms/internal/nh;

    .line 9000
    iget-object v0, v0, Lcom/google/android/gms/internal/nh;->c:Ljava/util/Map;

    .line 0
    if-eqz v0, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ne;->e:Lcom/google/android/gms/internal/nh;

    .line 10000
    iget-object v4, v0, Lcom/google/android/gms/internal/nh;->c:Ljava/util/Map;

    .line 0
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v6, Lcom/google/android/gms/internal/ni$f;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ni$f;-><init>()V

    iput-object v0, v6, Lcom/google/android/gms/internal/ni$f;->c:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/nc;

    .line 11000
    iget-wide v8, v1, Lcom/google/android/gms/internal/nc;->b:J

    .line 0
    iput-wide v8, v6, Lcom/google/android/gms/internal/ni$f;->b:J

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nc;

    .line 12000
    iget v0, v0, Lcom/google/android/gms/internal/nc;->a:I

    .line 0
    iput v0, v6, Lcom/google/android/gms/internal/ni$f;->a:I

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ni$f;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ni$f;

    iput-object v0, v2, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    :cond_6
    invoke-static {v2}, Lcom/google/android/gms/internal/qc;->a(Lcom/google/android/gms/internal/qc;)[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ne;->a:Landroid/content/Context;

    const-string/jumbo v2, "persisted_config"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AsyncPersisterTask"

    const-string/jumbo v2, "Could not persist config."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
