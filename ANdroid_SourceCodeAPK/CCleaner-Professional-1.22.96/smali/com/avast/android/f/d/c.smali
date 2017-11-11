.class public final Lcom/avast/android/f/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/InputStreamReader;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 69
    const/16 v0, 0x80

    new-array v0, v0, [C

    .line 71
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 74
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    :try_start_1
    sget-object v2, Lcom/avast/android/f/a;->a:Lcom/avast/android/d/a;

    const-string/jumbo v3, "StreamUtils.streamToString() failed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/avast/android/d/a;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    new-array v0, v6, [Ljava/io/Closeable;

    aput-object p0, v0, v5

    invoke-static {v0}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    .line 81
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    new-array v0, v6, [Ljava/io/Closeable;

    aput-object p0, v0, v5

    invoke-static {v0}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    new-array v1, v6, [Ljava/io/Closeable;

    aput-object p0, v1, v5

    invoke-static {v1}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Ljava/io/InputStream;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avast/android/f/d/c;->b(Ljava/io/InputStreamReader;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 101
    new-array v1, v5, [Ljava/io/Closeable;

    aput-object p0, v1, v4

    invoke-static {v1}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    .line 103
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    :try_start_1
    sget-object v1, Lcom/avast/android/f/a;->a:Lcom/avast/android/d/a;

    const-string/jumbo v2, "StreamUtils.streamToString() failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/avast/android/d/a;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    new-array v0, v5, [Ljava/io/Closeable;

    aput-object p0, v0, v4

    invoke-static {v0}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    .line 103
    new-array v0, v4, [Ljava/lang/String;

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    new-array v1, v5, [Ljava/io/Closeable;

    aput-object p0, v1, v4

    invoke-static {v1}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    throw v0
.end method

.method public static b(Ljava/io/InputStreamReader;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const/4 v2, 0x0

    .line 119
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    :goto_1
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    throw v0

    :cond_0
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/avast/android/f/d/b;->a([Ljava/io/Closeable;)V

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 125
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
