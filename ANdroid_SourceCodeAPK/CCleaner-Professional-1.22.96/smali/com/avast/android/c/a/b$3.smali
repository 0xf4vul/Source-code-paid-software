.class final Lcom/avast/android/c/a/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit/mime/TypedOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avast/android/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/avast/android/c/a/b;


# direct methods
.method constructor <init>(Lcom/avast/android/c/a/b;[B)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/avast/android/c/a/b$3;->b:Lcom/avast/android/c/a/b;

    iput-object p2, p0, Lcom/avast/android/c/a/b$3;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public final length()J
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/avast/android/c/a/b$3;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string/jumbo v0, "application/octet-stream"

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
    .line 173
    iget-object v0, p0, Lcom/avast/android/c/a/b$3;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 174
    return-void
.end method
