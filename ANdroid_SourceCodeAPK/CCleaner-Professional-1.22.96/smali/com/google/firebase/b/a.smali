.class public final Lcom/google/firebase/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field private static e:Lcom/google/firebase/b/a;


# instance fields
.field b:Lcom/google/android/gms/internal/nf;

.field public c:Lcom/google/android/gms/internal/nh;

.field public final d:Ljava/util/concurrent/locks/ReadWriteLock;

.field private f:Lcom/google/android/gms/internal/nf;

.field private g:Lcom/google/android/gms/internal/nf;

.field private final h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/firebase/b/a;->a:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/b/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nh;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nh;)V
    .locals 4

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    iput-object p1, p0, Lcom/google/firebase/b/a;->h:Landroid/content/Context;

    if-eqz p5, :cond_3

    iput-object p5, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    iget-object v1, p0, Lcom/google/firebase/b/a;->h:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/google/firebase/b/a;->a(Landroid/content/Context;)J

    move-result-wide v2

    .line 1000
    iput-wide v2, v0, Lcom/google/android/gms/internal/nh;->b:J

    .line 0
    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    :cond_0
    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    :cond_1
    if-eqz p4, :cond_2

    iput-object p4, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/nh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nh;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)J
    .locals 6

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/b/a;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    const-string/jumbo v2, "FirebaseRemoteConfig"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Package ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] was not found!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v2, v0, [B

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v3

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private static a(Lcom/google/android/gms/internal/ni$a;)Lcom/google/android/gms/internal/nf;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ni$a;->a:[Lcom/google/android/gms/internal/ni$d;

    array-length v5, v4

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    iget-object v6, v1, Lcom/google/android/gms/internal/ni$d;->a:Ljava/lang/String;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v8, v1, Lcom/google/android/gms/internal/ni$d;->b:[Lcom/google/android/gms/internal/ni$b;

    array-length v9, v8

    move v1, v0

    :goto_2
    if-ge v1, v9, :cond_1

    aget-object v10, v8, v1

    iget-object v11, v10, Lcom/google/android/gms/internal/ni$b;->a:Ljava/lang/String;

    iget-object v10, v10, Lcom/google/android/gms/internal/ni$b;->b:[B

    invoke-interface {v7, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ni$a;->c:[[B

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v1

    :goto_3
    if-ge v0, v4, :cond_3

    aget-object v5, v1, v0

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/nf;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ni$a;->b:J

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/google/android/gms/internal/nf;-><init>(Ljava/util/Map;JLjava/util/List;)V

    goto :goto_0
.end method

.method public static a()Lcom/google/firebase/b/a;
    .locals 8

    .prologue
    const/4 v3, 0x3

    .line 0
    sget-object v0, Lcom/google/firebase/b/a;->e:Lcom/google/firebase/b/a;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/google/firebase/b;->d()Lcom/google/firebase/b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "FirebaseApp has not been initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v1

    .line 2000
    sget-object v0, Lcom/google/firebase/b/a;->e:Lcom/google/firebase/b/a;

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/google/firebase/b/a;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ni$e;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "FirebaseRemoteConfig"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FirebaseRemoteConfig"

    const-string/jumbo v2, "No persisted config was found. Initializing from scratch."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/google/firebase/b/a;

    invoke-direct {v0, v1}, Lcom/google/firebase/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/firebase/b/a;->e:Lcom/google/firebase/b/a;

    :cond_2
    :goto_0
    sget-object v0, Lcom/google/firebase/b/a;->e:Lcom/google/firebase/b/a;

    .line 0
    :goto_1
    return-object v0

    .line 2000
    :cond_3
    const-string/jumbo v2, "FirebaseRemoteConfig"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "FirebaseRemoteConfig"

    const-string/jumbo v3, "Initializing from persisted config."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ni$e;->a:Lcom/google/android/gms/internal/ni$a;

    invoke-static {v2}, Lcom/google/firebase/b/a;->a(Lcom/google/android/gms/internal/ni$a;)Lcom/google/android/gms/internal/nf;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ni$e;->b:Lcom/google/android/gms/internal/ni$a;

    invoke-static {v3}, Lcom/google/firebase/b/a;->a(Lcom/google/android/gms/internal/ni$a;)Lcom/google/android/gms/internal/nf;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ni$e;->c:Lcom/google/android/gms/internal/ni$a;

    invoke-static {v4}, Lcom/google/firebase/b/a;->a(Lcom/google/android/gms/internal/ni$a;)Lcom/google/android/gms/internal/nf;

    move-result-object v4

    iget-object v6, v0, Lcom/google/android/gms/internal/ni$e;->d:Lcom/google/android/gms/internal/ni$c;

    .line 3000
    if-nez v6, :cond_6

    const/4 v5, 0x0

    .line 2000
    :goto_2
    if-eqz v5, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/internal/ni$e;->e:[Lcom/google/android/gms/internal/ni$f;

    invoke-static {v0}, Lcom/google/firebase/b/a;->a([Lcom/google/android/gms/internal/ni$f;)Ljava/util/Map;

    move-result-object v0

    .line 7000
    iput-object v0, v5, Lcom/google/android/gms/internal/nh;->c:Ljava/util/Map;

    .line 2000
    :cond_5
    new-instance v0, Lcom/google/firebase/b/a;

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/b/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nh;)V

    sput-object v0, Lcom/google/firebase/b/a;->e:Lcom/google/firebase/b/a;

    goto :goto_0

    .line 3000
    :cond_6
    new-instance v5, Lcom/google/android/gms/internal/nh;

    invoke-direct {v5}, Lcom/google/android/gms/internal/nh;-><init>()V

    iget v7, v6, Lcom/google/android/gms/internal/ni$c;->a:I

    .line 4000
    iput v7, v5, Lcom/google/android/gms/internal/nh;->a:I

    .line 3000
    iget-boolean v7, v6, Lcom/google/android/gms/internal/ni$c;->b:Z

    .line 5000
    iput-boolean v7, v5, Lcom/google/android/gms/internal/nh;->d:Z

    .line 3000
    iget-wide v6, v6, Lcom/google/android/gms/internal/ni$c;->c:J

    .line 6000
    iput-wide v6, v5, Lcom/google/android/gms/internal/nh;->e:J

    goto :goto_2

    .line 0
    :cond_7
    sget-object v0, Lcom/google/firebase/b/a;->e:Lcom/google/firebase/b/a;

    goto :goto_1
.end method

.method private static a([Lcom/google/android/gms/internal/ni$f;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/gms/internal/ni$f;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/nc;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    iget-object v4, v3, Lcom/google/android/gms/internal/ni$f;->c:Ljava/lang/String;

    iget v5, v3, Lcom/google/android/gms/internal/ni$f;->a:I

    iget-wide v6, v3, Lcom/google/android/gms/internal/ni$f;->b:J

    new-instance v3, Lcom/google/android/gms/internal/nc;

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/nc;-><init>(IJ)V

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Lcom/google/android/gms/internal/ni$e;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 0
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string/jumbo v1, "persisted_config"

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 8000
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v2, v1}, Lcom/google/firebase/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 9000
    array-length v3, v1

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/pu;->a([BI)Lcom/google/android/gms/internal/pu;

    move-result-object v3

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/ni$e;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ni$e;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ni$e;->a(Lcom/google/android/gms/internal/pu;)Lcom/google/android/gms/internal/qc;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FirebaseRemoteConfig"

    const-string/jumbo v3, "Failed to close persisted config file."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_3
    const-string/jumbo v3, "FirebaseRemoteConfig"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "FirebaseRemoteConfig"

    const-string/jumbo v4, "Persisted config file was not found."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v2, "FirebaseRemoteConfig"

    const-string/jumbo v3, "Failed to close persisted config file."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_5
    const-string/jumbo v3, "FirebaseRemoteConfig"

    const-string/jumbo v4, "Cannot initialize from persisted config."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    const-string/jumbo v2, "FirebaseRemoteConfig"

    const-string/jumbo v3, "Failed to close persisted config file."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v0

    :catch_5
    move-exception v1

    const-string/jumbo v2, "FirebaseRemoteConfig"

    const-string/jumbo v3, "Failed to close persisted config file."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/nf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/nf;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ng;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/nf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/nf;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ng;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const-wide/16 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 20000
    iget-object v0, v0, Lcom/google/android/gms/internal/nh;->c:Ljava/util/Map;

    .line 0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 21000
    iget-object v0, v0, Lcom/google/android/gms/internal/nh;->c:Ljava/util/Map;

    .line 0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 22000
    iget-object v0, v0, Lcom/google/android/gms/internal/nh;->c:Ljava/util/Map;

    .line 0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nc;

    .line 23000
    iget v2, v0, Lcom/google/android/gms/internal/nc;->a:I

    .line 0
    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 24000
    iget-wide v2, v2, Lcom/google/android/gms/internal/nh;->b:J

    .line 25000
    iget-wide v4, v0, Lcom/google/android/gms/internal/nc;->b:J

    .line 0
    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-string/jumbo v0, "FirebaseRemoteConfig"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FirebaseRemoteConfig"

    const-string/jumbo v1, "Skipped setting defaults from resource file as this resource file was already applied."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/b/a;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    move-object v2, v1

    move-object v3, v1

    move v4, v0

    move-object v0, v1

    :goto_1
    const/4 v7, 0x1

    if-eq v4, v7, :cond_7

    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    if-ne v4, v8, :cond_5

    :try_start_2
    const-string/jumbo v3, "entry"

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    move-object v2, v1

    :cond_4
    move-object v3, v1

    goto :goto_2

    :cond_5
    const/4 v7, 0x4

    if-ne v4, v7, :cond_2

    const-string/jumbo v4, "key"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    const-string/jumbo v4, "value"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/nc;

    iget-object v1, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 26000
    iget-wide v2, v1, Lcom/google/android/gms/internal/nh;->b:J

    .line 0
    invoke-direct {v0, p1, v2, v3}, Lcom/google/android/gms/internal/nc;-><init>(IJ)V

    iget-object v1, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 27000
    iget-object v1, v1, Lcom/google/android/gms/internal/nh;->c:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, v5, p2, v0}, Lcom/google/firebase/b/a;->a(Ljava/util/Map;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FirebaseRemoteConfig"

    const-string/jumbo v2, "Caught exception while parsing XML resource. Skipping setDefaults."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 0
    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    move v2, v0

    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-nez v2, :cond_a

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_3

    check-cast v1, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ng;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    :cond_3
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/google/android/gms/internal/ng;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/google/android/gms/internal/ng;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    instance-of v5, v1, Ljava/lang/Double;

    if-eqz v5, :cond_6

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/google/android/gms/internal/ng;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    instance-of v5, v1, Ljava/lang/Float;

    if-eqz v5, :cond_7

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/google/android/gms/internal/ng;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    instance-of v5, v1, [B

    if-eqz v5, :cond_8

    check-cast v1, [B

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_9

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/google/android/gms/internal/ng;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The type of a default value needs to beone of String, Long, Double, Boolean, or byte[]."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz v2, :cond_e

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/nf;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :cond_c
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/nf;->a(Ljava/util/Map;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 28000
    iput-wide v2, v0, Lcom/google/android/gms/internal/nf;->b:J

    .line 0
    :goto_3
    if-eqz p3, :cond_d

    iget-object v0, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 30000
    iget-object v1, v0, Lcom/google/android/gms/internal/nh;->c:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v0, v0, Lcom/google/android/gms/internal/nh;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    :cond_d
    invoke-virtual {p0}, Lcom/google/firebase/b/a;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :cond_e
    :try_start_2
    iget-object v0, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    if-nez v0, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/nf;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/google/android/gms/internal/nf;-><init>(Ljava/util/Map;JLjava/util/List;)V

    iput-object v0, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    :cond_f
    iget-object v0, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v0, v3, p2}, Lcom/google/android/gms/internal/nf;->a(Ljava/util/Map;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 29000
    iput-wide v2, v0, Lcom/google/android/gms/internal/nf;->b:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 0
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/nf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/nf;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ng;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/nf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/nf;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ng;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final b()Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    .line 10000
    iget-wide v2, v1, Lcom/google/android/gms/internal/nf;->b:J

    .line 0
    iget-object v1, p0, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    .line 11000
    iget-wide v4, v1, Lcom/google/android/gms/internal/nf;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    .line 12000
    iget-wide v0, v0, Lcom/google/android/gms/internal/nf;->b:J

    .line 0
    iget-object v2, p0, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    iput-object v2, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    iget-object v2, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 13000
    iput-wide v4, v2, Lcom/google/android/gms/internal/nf;->b:J

    .line 0
    new-instance v2, Lcom/google/android/gms/internal/nf;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/google/android/gms/internal/nf;-><init>(Ljava/util/Map;JLjava/util/List;)V

    iput-object v2, p0, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    iget-object v0, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 14000
    iget-wide v4, v0, Lcom/google/android/gms/internal/nh;->e:J

    .line 0
    iget-object v6, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    iget-object v0, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    .line 15000
    iget-object v0, v0, Lcom/google/android/gms/internal/nf;->c:Ljava/util/List;

    .line 16000
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v4

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/fp;->a([B)Lcom/google/android/gms/internal/qh$b;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-wide v8, v0, Lcom/google/android/gms/internal/qh$b;->c:J

    cmp-long v1, v8, v2

    if-lez v1, :cond_5

    iget-wide v0, v0, Lcom/google/android/gms/internal/qh$b;->c:J

    :goto_2
    move-wide v2, v0

    goto :goto_1

    :cond_3
    move-wide v2, v4

    .line 17000
    :cond_4
    iput-wide v2, v6, Lcom/google/android/gms/internal/nh;->e:J

    .line 0
    iget-object v0, p0, Lcom/google/firebase/b/a;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    .line 18000
    iget-object v1, v1, Lcom/google/android/gms/internal/nf;->c:Ljava/util/List;

    .line 19000
    new-instance v2, Lcom/google/android/gms/internal/nd;

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/google/android/gms/internal/nd;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    invoke-static {v2}, Lcom/google/firebase/b/a;->a(Ljava/lang/Runnable;)V

    .line 0
    invoke-virtual {p0}, Lcom/google/firebase/b/a;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method public final c()V
    .locals 2

    const v0, 0x7f060003

    const-string/jumbo v1, "configns:firebase"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/b/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/nf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/nf;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ng;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v3, Lcom/google/android/gms/internal/ng;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    sget-object v3, Lcom/google/android/gms/internal/ng;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/nf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/internal/nf;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ng;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object v3, Lcom/google/android/gms/internal/ng;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ng;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ne;

    iget-object v1, p0, Lcom/google/firebase/b/a;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    iget-object v3, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    iget-object v4, p0, Lcom/google/firebase/b/a;->g:Lcom/google/android/gms/internal/nf;

    iget-object v5, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ne;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nf;Lcom/google/android/gms/internal/nh;)V

    invoke-static {v0}, Lcom/google/firebase/b/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final e()Lcom/google/android/gms/b/e;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/b/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0x7fffffff

    const-wide/16 v8, -0x1

    const v0, 0x7fffffff

    .line 0
    new-instance v2, Lcom/google/android/gms/b/f;

    invoke-direct {v2}, Lcom/google/android/gms/b/f;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/bg$a$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/bg$a$a;-><init>()V

    .line 31000
    const-wide/32 v4, 0xa8c0

    iput-wide v4, v3, Lcom/google/android/gms/internal/bg$a$a;->a:J

    .line 0
    iget-object v1, p0, Lcom/google/firebase/b/a;->c:Lcom/google/android/gms/internal/nh;

    .line 32000
    iget-boolean v1, v1, Lcom/google/android/gms/internal/nh;->d:Z

    .line 0
    if-eqz v1, :cond_1

    const-string/jumbo v1, "_rcn_developer"

    const-string/jumbo v4, "true"

    .line 33000
    iget-object v5, v3, Lcom/google/android/gms/internal/bg$a$a;->b:Ljava/util/Map;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v3, Lcom/google/android/gms/internal/bg$a$a;->b:Ljava/util/Map;

    :cond_0
    iget-object v5, v3, Lcom/google/android/gms/internal/bg$a$a;->b:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34000
    :cond_1
    const/16 v1, 0x283c

    iput v1, v3, Lcom/google/android/gms/internal/bg$a$a;->c:I

    .line 0
    iget-object v1, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    .line 35000
    iget-wide v4, v1, Lcom/google/android/gms/internal/nf;->b:J

    .line 0
    cmp-long v1, v4, v8

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/firebase/b/a;->f:Lcom/google/android/gms/internal/nf;

    .line 36000
    iget-wide v6, v1, Lcom/google/android/gms/internal/nf;->b:J

    .line 0
    sub-long/2addr v4, v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    cmp-long v1, v4, v10

    if-gez v1, :cond_5

    long-to-int v1, v4

    .line 37000
    :goto_0
    iput v1, v3, Lcom/google/android/gms/internal/bg$a$a;->e:I

    .line 0
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    .line 38000
    iget-wide v4, v1, Lcom/google/android/gms/internal/nf;->b:J

    .line 0
    cmp-long v1, v4, v8

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/firebase/b/a;->b:Lcom/google/android/gms/internal/nf;

    .line 39000
    iget-wide v6, v1, Lcom/google/android/gms/internal/nf;->b:J

    .line 0
    sub-long/2addr v4, v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    cmp-long v1, v4, v10

    if-gez v1, :cond_3

    long-to-int v0, v4

    .line 40000
    :cond_3
    iput v0, v3, Lcom/google/android/gms/internal/bg$a$a;->d:I

    .line 0
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/bk;

    iget-object v1, p0, Lcom/google/firebase/b/a;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bk;-><init>(Landroid/content/Context;)V

    .line 41000
    new-instance v1, Lcom/google/android/gms/internal/bg$a;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/bg$a;-><init>(Lcom/google/android/gms/internal/bg$a$a;B)V

    .line 42000
    sget-object v3, Lcom/google/android/gms/internal/bf;->d:Lcom/google/android/gms/internal/bg;

    .line 43000
    iget-object v0, v0, Lcom/google/android/gms/common/api/n;->e:Lcom/google/android/gms/common/api/c;

    .line 42000
    invoke-interface {v3, v0, v1}, Lcom/google/android/gms/internal/bg;->a(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/internal/bg$a;)Lcom/google/android/gms/common/api/d;

    move-result-object v0

    .line 0
    new-instance v1, Lcom/google/firebase/b/a$1;

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/b/a$1;-><init>(Lcom/google/firebase/b/a;Lcom/google/android/gms/b/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 44000
    iget-object v0, v2, Lcom/google/android/gms/b/f;->a:Lcom/google/android/gms/b/n;

    .line 0
    return-object v0

    :cond_5
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/b/a;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
