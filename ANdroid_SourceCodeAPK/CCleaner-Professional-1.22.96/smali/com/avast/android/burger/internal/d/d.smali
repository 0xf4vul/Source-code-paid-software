.class public final Lcom/avast/android/burger/internal/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avast/android/c/a/c;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/avast/android/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/avast/android/burger/internal/d/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    iput-object p1, p0, Lcom/avast/android/burger/internal/d/d;->b:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private c()Lcom/avast/android/c/a/a;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 114
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avast/android/burger/internal/d/d;->b:Landroid/content/Context;

    const-string/jumbo v4, "burger"

    invoke-virtual {v3, v4, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "burger.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    :try_start_1
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 123
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 124
    new-array v5, v4, [B

    .line 125
    invoke-virtual {v3, v5}, Ljava/io/ObjectInputStream;->read([B)I

    move-result v6

    if-eq v6, v4, :cond_0

    .line 126
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Not enough bytes in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " to read object"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    :goto_0
    new-array v3, v12, [Ljava/io/Closeable;

    aput-object v2, v3, v10

    aput-object v0, v3, v11

    invoke-static {v3}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    move-object v0, v1

    .line 143
    :goto_1
    return-object v0

    .line 130
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 131
    new-array v6, v4, [B

    .line 132
    invoke-virtual {v3, v6}, Ljava/io/ObjectInputStream;->read([B)I

    move-result v7

    if-eq v7, v4, :cond_1

    .line 133
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Not enough bytes in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " to read object"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :catchall_0
    move-exception v0

    :goto_2
    new-array v1, v12, [Ljava/io/Closeable;

    aput-object v3, v1, v10

    aput-object v2, v1, v11

    invoke-static {v1}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    throw v0

    .line 137
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v8

    .line 139
    new-instance v0, Lcom/avast/android/c/a/a;

    invoke-static {v5}, Lcom/google/a/c;->a([B)Lcom/google/a/c;

    move-result-object v4

    invoke-static {v6}, Lcom/google/a/c;->a([B)Lcom/google/a/c;

    move-result-object v5

    invoke-direct {v0, v4, v5, v8, v9}, Lcom/avast/android/c/a/a;-><init>(Lcom/google/a/c;Lcom/google/a/c;J)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    new-array v1, v12, [Ljava/io/Closeable;

    aput-object v3, v1, v10

    aput-object v2, v1, v11

    invoke-static {v1}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/avast/android/c/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/burger/internal/d/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/c/a/a;

    .line 76
    const/4 v1, 0x0

    .line 77
    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/avast/android/burger/internal/d/d;->c()Lcom/avast/android/c/a/a;

    move-result-object v1

    .line 79
    const/4 v0, 0x1

    move v3, v0

    move-object v0, v1

    move v1, v3

    .line 81
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/avast/android/c/a/a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    :cond_1
    const/4 v0, 0x0

    .line 90
    :cond_2
    :goto_0
    return-object v0

    .line 84
    :cond_3
    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/avast/android/burger/internal/d/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/avast/android/c/a/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/avast/android/c/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1158
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avast/android/burger/internal/d/d;->b:Landroid/content/Context;

    const-string/jumbo v4, "burger"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "burger.key"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1161
    invoke-static {v0}, Lcom/avast/android/f/d/a;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1162
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to delete existing key"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1166
    :cond_1
    if-eqz p1, :cond_5

    .line 1173
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1174
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2020
    :try_start_2
    iget-object v0, p1, Lcom/avast/android/c/a/a;->a:Lcom/google/a/c;

    .line 1176
    invoke-virtual {v0}, Lcom/google/a/c;->c()[B

    move-result-object v0

    .line 1177
    array-length v2, v0

    if-nez v2, :cond_3

    .line 1178
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid id to write"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1193
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    .line 1195
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 1197
    :cond_2
    new-array v3, v8, [Ljava/io/Closeable;

    aput-object v2, v3, v6

    aput-object v1, v3, v7

    invoke-static {v3}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    throw v0

    .line 1180
    :cond_3
    :try_start_3
    array-length v2, v0

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1181
    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 2024
    iget-object v0, p1, Lcom/avast/android/c/a/a;->b:Lcom/google/a/c;

    .line 1183
    invoke-virtual {v0}, Lcom/google/a/c;->c()[B

    move-result-object v0

    .line 1184
    array-length v2, v0

    if-nez v2, :cond_4

    .line 1185
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid key to write"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_4
    array-length v2, v0

    invoke-virtual {v3, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1188
    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 2028
    iget-wide v4, p1, Lcom/avast/android/c/a/a;->c:J

    .line 1190
    invoke-virtual {v3, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1195
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 1197
    new-array v0, v8, [Ljava/io/Closeable;

    aput-object v3, v0, v6

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/avast/android/burger/internal/d/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 105
    :cond_6
    return-void

    .line 1193
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public final b()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/avast/android/burger/internal/d/d;->a()Lcom/avast/android/c/a/a;

    move-result-object v0

    .line 222
    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 3028
    :cond_0
    iget-wide v0, v0, Lcom/avast/android/c/a/a;->c:J

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method
