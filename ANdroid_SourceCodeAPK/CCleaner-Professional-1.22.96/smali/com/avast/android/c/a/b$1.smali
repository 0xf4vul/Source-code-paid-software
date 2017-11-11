.class final Lcom/avast/android/c/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit/mime/TypedOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avast/android/c/a/b;->execute(Lretrofit/client/Request;)Lretrofit/client/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lretrofit/mime/TypedOutput;

.field final synthetic b:[B

.field final synthetic c:Lcom/avast/android/c/a/b;


# direct methods
.method constructor <init>(Lcom/avast/android/c/a/b;Lretrofit/mime/TypedOutput;[B)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/avast/android/c/a/b$1;->c:Lcom/avast/android/c/a/b;

    iput-object p2, p0, Lcom/avast/android/c/a/b$1;->a:Lretrofit/mime/TypedOutput;

    iput-object p3, p0, Lcom/avast/android/c/a/b$1;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/avast/android/c/a/b$1;->a:Lretrofit/mime/TypedOutput;

    invoke-interface {v0}, Lretrofit/mime/TypedOutput;->fileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final length()J
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/avast/android/c/a/b$1;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string/jumbo v0, "application/x-enc-sb"

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/avast/android/c/a/b$1;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 100
    return-void
.end method
