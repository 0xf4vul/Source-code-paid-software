.class public abstract Lcom/google/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/a/l;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/a/n",
        "<TMessageType;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/google/a/f;->a()Lcom/google/a/f;

    move-result-object v0

    sput-object v0, Lcom/google/a/b;->a:Lcom/google/a/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/a/c;Lcom/google/a/f;)Lcom/google/a/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Lcom/google/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p1}, Lcom/google/a/c;->g()Lcom/google/a/d;

    move-result-object v1

    .line 104
    invoke-virtual {p0, v1, p2}, Lcom/google/a/b;->a(Lcom/google/a/d;Lcom/google/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/l;
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 106
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/google/a/d;->a(I)V
    :try_end_1
    .catch Lcom/google/a/i; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 110
    return-object v0

    .line 108
    :catch_0
    move-exception v1

    .line 4057
    :try_start_2
    iput-object v0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 108
    throw v1
    :try_end_2
    .catch Lcom/google/a/i; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    :catch_1
    move-exception v0

    throw v0

    .line 113
    :catch_2
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Lcom/google/a/l;)Lcom/google/a/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 70
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/google/a/l;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    instance-of v0, p0, Lcom/google/a/a;

    if-eqz v0, :cond_0

    .line 1099
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    .line 2081
    :goto_0
    new-instance v1, Lcom/google/a/i;

    invoke-virtual {v0}, Lcom/google/a/p;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/i;-><init>(Ljava/lang/String;)V

    .line 3057
    iput-object p0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 71
    throw v1

    .line 1059
    :cond_0
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    goto :goto_0

    .line 75
    :cond_1
    return-object p0
.end method

.method private a(Ljava/io/InputStream;Lcom/google/a/f;)Lcom/google/a/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {p1}, Lcom/google/a/d;->a(Ljava/io/InputStream;)Lcom/google/a/d;

    move-result-object v1

    .line 200
    invoke-virtual {p0, v1, p2}, Lcom/google/a/b;->a(Lcom/google/a/d;Lcom/google/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/l;

    .line 202
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/a/d;->a(I)V
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    return-object v0

    .line 204
    :catch_0
    move-exception v1

    .line 6057
    iput-object v0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 204
    throw v1
.end method

.method private a([BILcom/google/a/f;)Lcom/google/a/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/a/f;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/a/d;->a([BI)Lcom/google/a/d;

    move-result-object v1

    .line 141
    invoke-virtual {p0, v1, p3}, Lcom/google/a/b;->a(Lcom/google/a/d;Lcom/google/a/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/l;
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 143
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/google/a/d;->a(I)V
    :try_end_1
    .catch Lcom/google/a/i; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 147
    return-object v0

    .line 145
    :catch_0
    move-exception v1

    .line 5057
    :try_start_2
    iput-object v0, v1, Lcom/google/a/i;->a:Lcom/google/a/l;

    .line 145
    throw v1
    :try_end_2
    .catch Lcom/google/a/i; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    :catch_1
    move-exception v0

    throw v0

    .line 150
    :catch_2
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/a/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 49
    .line 11133
    sget-object v0, Lcom/google/a/b;->a:Lcom/google/a/f;

    .line 12128
    invoke-direct {p0, p1, v0}, Lcom/google/a/b;->a(Lcom/google/a/c;Lcom/google/a/f;)Lcom/google/a/l;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/b;->a(Lcom/google/a/l;)Lcom/google/a/l;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method public final bridge synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 49
    .line 6223
    sget-object v0, Lcom/google/a/b;->a:Lcom/google/a/f;

    .line 7217
    invoke-direct {p0, p1, v0}, Lcom/google/a/b;->a(Ljava/io/InputStream;Lcom/google/a/f;)Lcom/google/a/l;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/b;->a(Lcom/google/a/l;)Lcom/google/a/l;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method public final bridge synthetic a([B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/i;
        }
    .end annotation

    .prologue
    .line 49
    .line 8193
    sget-object v0, Lcom/google/a/b;->a:Lcom/google/a/f;

    .line 9188
    array-length v1, p1

    .line 10176
    invoke-direct {p0, p1, v1, v0}, Lcom/google/a/b;->a([BILcom/google/a/f;)Lcom/google/a/l;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/b;->a(Lcom/google/a/l;)Lcom/google/a/l;

    move-result-object v0

    .line 49
    return-object v0
.end method
