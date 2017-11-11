.class public final Lcom/avast/android/f/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a([Ljava/io/Closeable;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 52
    array-length v2, p0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 53
    if-eqz v3, :cond_0

    .line 55
    :try_start_0
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :catch_0
    move-exception v3

    .line 57
    sget-object v4, Lcom/avast/android/f/a;->a:Lcom/avast/android/d/a;

    const-string/jumbo v5, "IO.close() - Failed close stream"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5, v6}, Lcom/avast/android/d/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 61
    :cond_1
    return-void
.end method
