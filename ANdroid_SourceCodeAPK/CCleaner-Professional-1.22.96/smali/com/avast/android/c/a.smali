.class public abstract Lcom/avast/android/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/avast/android/c/d;

.field protected final b:Lretrofit/client/Client;

.field protected final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lretrofit/client/Client;Lcom/avast/android/c/d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/avast/android/c/a;->a:Lcom/avast/android/c/d;

    .line 23
    iput-object p1, p0, Lcom/avast/android/c/a;->b:Lretrofit/client/Client;

    .line 24
    iput-object p3, p0, Lcom/avast/android/c/a;->c:Ljava/lang/String;

    .line 25
    return-void
.end method

.method protected static a(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 34
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 35
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
