.class final Lcom/avast/android/c/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit/mime/TypedInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avast/android/c/a/b;->execute(Lretrofit/client/Request;)Lretrofit/client/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lretrofit/mime/TypedInput;

.field final synthetic b:[B

.field final synthetic c:Lcom/avast/android/c/a/b;


# direct methods
.method constructor <init>(Lcom/avast/android/c/a/b;Lretrofit/mime/TypedInput;[B)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/avast/android/c/a/b$2;->c:Lcom/avast/android/c/a/b;

    iput-object p2, p0, Lcom/avast/android/c/a/b$2;->a:Lretrofit/mime/TypedInput;

    iput-object p3, p0, Lcom/avast/android/c/a/b$2;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final in()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/avast/android/c/a/b$2;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final length()J
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/avast/android/c/a/b$2;->b:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/avast/android/c/a/b$2;->a:Lretrofit/mime/TypedInput;

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->mimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
