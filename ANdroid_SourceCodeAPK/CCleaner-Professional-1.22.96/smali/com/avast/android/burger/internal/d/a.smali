.class public abstract Lcom/avast/android/burger/internal/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected volatile a:Ljava/lang/String;

.field protected final b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/avast/android/burger/internal/d/a;->b:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private d(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    const-string/jumbo v0, "BurgerMessages"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/avast/android/burger/internal/d/a;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to create directory for Burger "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    sget-object v0, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v2, "Invalid directory specified for persistence."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_1
    return-object v1
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected final declared-synchronized a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 122
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-direct {p0, p1}, Lcom/avast/android/burger/internal/d/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 124
    if-nez v3, :cond_1

    .line 141
    :cond_0
    monitor-exit p0

    return-object v0

    .line 127
    :cond_1
    :try_start_1
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    invoke-static {v1}, Lcom/avast/android/f/d/a;->b(Ljava/io/File;)[B

    move-result-object v1

    .line 131
    array-length v5, v1

    if-nez v5, :cond_2

    .line 127
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 135
    :catch_0
    move-exception v1

    .line 136
    :try_start_3
    sget-object v5, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unable to locate persisted "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/avast/android/burger/internal/d/a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v6, v7}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :catch_1
    move-exception v1

    .line 138
    :try_start_4
    sget-object v5, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Unable to load persisted "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/avast/android/burger/internal/d/a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v6, v7}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method protected final declared-synchronized a(Landroid/content/Context;[B)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 87
    monitor-enter p0

    .line 1206
    :try_start_0
    invoke-direct {p0, p1}, Lcom/avast/android/burger/internal/d/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1207
    if-eqz v2, :cond_1

    .line 1210
    invoke-virtual {p0}, Lcom/avast/android/burger/internal/d/a;->a()I

    move-result v1

    .line 1211
    array-length v3, v2

    if-lt v3, v1, :cond_1

    .line 1212
    sget-object v1, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    const-string/jumbo v3, "Queue full, discarding records"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1213
    array-length v1, v2

    div-int/lit8 v3, v1, 0x2

    move v1, v0

    .line 1214
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1215
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1216
    sget-object v4, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to delete old file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/avast/android/burger/c/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1214
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 90
    :try_start_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/avast/android/burger/internal/d/a;->a(Landroid/content/Context;[BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    iput-object v1, p0, Lcom/avast/android/burger/internal/d/a;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    const/4 v0, 0x1

    .line 99
    :cond_2
    :goto_1
    monitor-exit p0

    return v0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    :try_start_2
    sget-object v2, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to locate file for persisting of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/avast/android/burger/internal/d/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :catch_1
    move-exception v1

    .line 97
    :try_start_3
    sget-object v2, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unable to save "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/avast/android/burger/internal/d/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/avast/android/burger/c/a;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected final declared-synchronized a(Landroid/content/Context;[BLjava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/avast/android/burger/internal/d/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-nez v3, :cond_0

    .line 110
    :goto_0
    monitor-exit p0

    return v0

    .line 108
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1523
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 1524
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1531
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 1532
    if-nez v3, :cond_1

    .line 1533
    sget-object v3, Lcom/avast/android/f/a;->a:Lcom/avast/android/d/a;

    const-string/jumbo v4, "Directories not created [%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/avast/android/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1472
    :cond_1
    const/4 v3, 0x0

    .line 1474
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1475
    :try_start_3
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1477
    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    move v0, v1

    .line 110
    goto :goto_0

    .line 1477
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1477
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method protected final declared-synchronized b(Landroid/content/Context;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avast/android/burger/internal/d/a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 150
    :goto_0
    monitor-exit p0

    return-object v0

    .line 149
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/avast/android/burger/internal/d/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/burger/internal/d/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    invoke-static {v0}, Lcom/avast/android/f/d/a;->b(Ljava/io/File;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized c(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 161
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/avast/android/burger/internal/d/a;->a:Ljava/lang/String;

    .line 162
    invoke-direct {p0, p1}, Lcom/avast/android/burger/internal/d/a;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 163
    if-nez v1, :cond_1

    .line 171
    :cond_0
    monitor-exit p0

    return-void

    .line 166
    :cond_1
    :try_start_1
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 167
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 168
    sget-object v4, Lcom/avast/android/burger/c/b;->a:Lcom/avast/android/burger/c/a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Failed to delete file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lcom/avast/android/burger/c/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
