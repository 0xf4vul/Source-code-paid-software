.class public final Lcom/avast/android/c/a/b;
.super Lcom/avast/android/c/a;
.source "SourceFile"

# interfaces
.implements Lretrofit/client/Client;


# instance fields
.field protected final d:Lcom/avast/android/c/a/c;

.field protected final e:Lcom/avast/c/a/a/a$a;

.field protected final f:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final g:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lretrofit/client/Client;Lcom/avast/android/c/a/c;Lcom/avast/c/a/a/a$a;Ljava/lang/String;Lcom/avast/android/c/d;)V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0, p1, p5, p4}, Lcom/avast/android/c/a;-><init>(Lretrofit/client/Client;Lcom/avast/android/c/d;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/avast/android/c/a/b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/avast/android/c/a/b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    iput-object p2, p0, Lcom/avast/android/c/a/b;->d:Lcom/avast/android/c/a/c;

    .line 46
    iput-object p3, p0, Lcom/avast/android/c/a/b;->e:Lcom/avast/c/a/a/a$a;

    .line 47
    return-void
.end method

.method private a()Lcom/avast/android/c/a/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avast/android/c/e;
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/avast/android/c/a/b;->d:Lcom/avast/android/c/a/c;

    invoke-interface {v1}, Lcom/avast/android/c/a/c;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 136
    :goto_0
    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/avast/android/c/a/b;->d:Lcom/avast/android/c/a/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/avast/android/c/a/c;->a(Lcom/avast/android/c/a/a;)V

    .line 5150
    invoke-static {}, Lcom/avast/c/a/a/a$c;->d()Lcom/avast/c/a/a/a$c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/c/a/b;->e:Lcom/avast/c/a/a/a$a;

    .line 5361
    if-nez v1, :cond_1

    .line 5362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Lcom/avast/android/c/e;

    invoke-direct {v1, v0}, Lcom/avast/android/c/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5364
    :cond_1
    :try_start_1
    iput-object v1, v0, Lcom/avast/c/a/a/a$c$a;->c:Lcom/avast/c/a/a/a$a;

    .line 5366
    iget v1, v0, Lcom/avast/c/a/a/a$c$a;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/avast/c/a/a/a$c$a;->a:I

    .line 5152
    invoke-static {}, Lcom/avast/c/a/a/a$g;->d()Lcom/avast/c/a/a/a$g$a;

    move-result-object v1

    .line 6215
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 6216
    iget-object v3, p0, Lcom/avast/android/c/a/b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 6217
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6219
    invoke-static {v2}, Lcom/google/a/c;->a(Ljava/nio/ByteBuffer;)Lcom/google/a/c;

    move-result-object v2

    .line 5152
    invoke-virtual {v1, v2}, Lcom/avast/c/a/a/a$g$a;->a(Lcom/google/a/c;)Lcom/avast/c/a/a/a$g$a;

    move-result-object v1

    .line 6758
    invoke-virtual {v1}, Lcom/avast/c/a/a/a$g$a;->a()Lcom/avast/c/a/a/a$g;

    move-result-object v1

    .line 6759
    invoke-virtual {v1}, Lcom/avast/c/a/a/a$g;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 7306
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    .line 6760
    throw v0

    .line 6313
    :cond_2
    iput-object v1, v0, Lcom/avast/c/a/a/a$c$a;->b:Lcom/avast/c/a/a/a$g;

    .line 6315
    iget v1, v0, Lcom/avast/c/a/a/a$c$a;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/avast/c/a/a/a$c$a;->a:I

    .line 8218
    invoke-virtual {v0}, Lcom/avast/c/a/a/a$c$a;->a()Lcom/avast/c/a/a/a$c;

    move-result-object v0

    .line 8219
    invoke-virtual {v0}, Lcom/avast/c/a/a/a$c;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8306
    new-instance v0, Lcom/google/a/p;

    invoke-direct {v0}, Lcom/google/a/p;-><init>()V

    .line 8220
    throw v0

    .line 5153
    :cond_3
    invoke-virtual {v0}, Lcom/avast/c/a/a/a$c;->s()[B

    move-result-object v0

    .line 5155
    iget-object v1, p0, Lcom/avast/android/c/a/b;->b:Lretrofit/client/Client;

    new-instance v2, Lretrofit/client/Request;

    const-string/jumbo v3, "POST"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "https://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/avast/android/c/a/b;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/V1/REG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/avast/android/c/a/b$3;

    invoke-direct {v6, p0, v0}, Lcom/avast/android/c/a/b$3;-><init>(Lcom/avast/android/c/a/b;[B)V

    invoke-direct {v2, v3, v4, v5, v6}, Lretrofit/client/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lretrofit/mime/TypedOutput;)V

    invoke-interface {v1, v2}, Lretrofit/client/Client;->execute(Lretrofit/client/Request;)Lretrofit/client/Response;

    move-result-object v0

    .line 5177
    invoke-direct {p0, v0}, Lcom/avast/android/c/a/b;->a(Lretrofit/client/Response;)Lcom/avast/android/c/a/a;

    move-result-object v0

    .line 142
    :goto_1
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/avast/android/c/a/b;->d:Lcom/avast/android/c/a/c;

    invoke-interface {v0}, Lcom/avast/android/c/a/c;->a()Lcom/avast/android/c/a/a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private a(Lretrofit/client/Response;)Lcom/avast/android/c/a/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p1}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 182
    new-instance v0, Lcom/avast/android/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Return code of AUTH service should be 200, is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lretrofit/client/Response;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avast/android/c/e;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/c/a/a/a$e;->a(Ljava/io/InputStream;)Lcom/avast/c/a/a/a$e;
    :try_end_0
    .catch Lcom/google/a/i; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 8673
    iget-wide v2, v0, Lcom/avast/c/a/a/a$e;->d:J

    .line 192
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 194
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 9633
    iget-object v4, v0, Lcom/avast/c/a/a/a$e;->b:Lcom/google/a/c;

    .line 194
    invoke-virtual {v4}, Lcom/google/a/c;->c()[B

    move-result-object v4

    invoke-static {v4}, Lcom/avast/android/c/c;->a([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 196
    new-instance v1, Lcom/avast/android/c/a/a;

    .line 10633
    iget-object v2, v0, Lcom/avast/c/a/a/a$e;->b:Lcom/google/a/c;

    .line 10649
    iget-object v3, v0, Lcom/avast/c/a/a/a$e;->c:Lcom/google/a/c;

    .line 10673
    iget-wide v4, v0, Lcom/avast/c/a/a/a$e;->d:J

    .line 196
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/avast/android/c/a/a;-><init>(Lcom/google/a/c;Lcom/google/a/c;J)V

    .line 198
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/c/a/b;->d:Lcom/avast/android/c/a/c;

    invoke-interface {v0, v1}, Lcom/avast/android/c/a/c;->a(Lcom/avast/android/c/a/a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    new-instance v1, Lcom/avast/android/c/e;

    invoke-direct {v1, v0}, Lcom/avast/android/c/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final execute(Lretrofit/client/Request;)Lretrofit/client/Response;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v2

    .line 3206
    iget-object v1, p0, Lcom/avast/android/c/a/b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 59
    invoke-direct {p0}, Lcom/avast/android/c/a/b;->a()Lcom/avast/android/c/a/a;

    move-result-object v3

    .line 60
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    sget-object v1, Lcom/avast/b/b;->a:Lcom/avast/b/b;

    invoke-virtual {v1}, Lcom/avast/b/b;->c()Lcom/avast/b/a;

    move-result-object v1

    .line 4024
    iget-object v7, v3, Lcom/avast/android/c/a/a;->b:Lcom/google/a/c;

    .line 63
    invoke-virtual {v7}, Lcom/google/a/c;->c()[B

    move-result-object v7

    .line 4077
    iget-object v1, v1, Lcom/avast/b/a;->a:Lcom/avast/b/b;

    invoke-virtual {v1}, Lcom/avast/b/b;->b()Ljavax/crypto/Mac;

    move-result-object v1

    invoke-static {v7, v4, v5, v1}, Lcom/avast/b/g;->a([BJLjavax/crypto/Mac;)[B

    move-result-object v7

    .line 66
    if-eqz v2, :cond_0

    .line 67
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-interface {v2}, Lretrofit/mime/TypedOutput;->length()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-direct {v1, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 68
    invoke-interface {v2, v1}, Lretrofit/mime/TypedOutput;->writeTo(Ljava/io/OutputStream;)V

    .line 70
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 75
    :goto_0
    if-eqz v1, :cond_3

    array-length v8, v1

    if-lez v8, :cond_3

    sget-object v8, Lcom/avast/b/b;->a:Lcom/avast/b/b;

    invoke-virtual {v8}, Lcom/avast/b/b;->c()Lcom/avast/b/a;

    move-result-object v8

    .line 4081
    array-length v9, v1

    const/4 v10, 0x0

    invoke-static {v7, v1, v9, v10}, Lcom/avast/b/e;->a([B[BI[B)I

    move-result v9

    .line 4082
    iget-object v10, v8, Lcom/avast/b/a;->a:Lcom/avast/b/b;

    invoke-virtual {v10}, Lcom/avast/b/b;->a()I

    move-result v10

    add-int/2addr v9, v10

    new-array v9, v9, [B

    .line 4084
    array-length v10, v1

    invoke-static {v7, v1, v10, v9}, Lcom/avast/b/e;->a([B[BI[B)I

    move-result v10

    .line 4087
    invoke-virtual {v8, v7}, Lcom/avast/b/a;->a([B)Ljavax/crypto/Mac;

    move-result-object v11

    .line 4088
    const/4 v12, 0x0

    array-length v13, v1

    invoke-virtual {v11, v1, v12, v13}, Ljavax/crypto/Mac;->update([BII)V

    .line 4089
    invoke-virtual {v11}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    .line 4090
    sget-boolean v11, Lcom/avast/b/a;->b:Z

    if-nez v11, :cond_1

    array-length v11, v1

    iget-object v12, v8, Lcom/avast/b/a;->a:Lcom/avast/b/b;

    invoke-virtual {v12}, Lcom/avast/b/b;->a()I

    move-result v12

    if-eq v11, v12, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Invalid HMac length"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catch Lcom/avast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/avast/b/f; {:try_start_0 .. :try_end_0} :catch_3

    .line 126
    :catch_0
    move-exception v0

    .line 127
    :goto_1
    new-instance v1, Lcom/avast/android/c/b;

    invoke-direct {v1, v0}, Lcom/avast/android/c/b;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [B

    goto :goto_0

    .line 4092
    :cond_1
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/avast/b/a;->a:Lcom/avast/b/b;

    invoke-virtual {v12}, Lcom/avast/b/b;->a()I

    move-result v12

    invoke-static {v1, v11, v9, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4094
    iget-object v1, v8, Lcom/avast/b/a;->a:Lcom/avast/b/b;

    invoke-virtual {v1}, Lcom/avast/b/b;->a()I

    move-result v1

    add-int/2addr v1, v10

    invoke-static {v9, v1}, Lcom/avast/b/a;->a([BI)[B

    move-result-object v1

    .line 78
    :goto_2
    new-instance v8, Lretrofit/client/Header;

    const-string/jumbo v9, "X-AVAST-SeqNum"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v9, v4}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v4, Lretrofit/client/Header;

    const-string/jumbo v5, "X-AVAST-KeyId"

    .line 5020
    iget-object v3, v3, Lcom/avast/android/c/a/a;->a:Lcom/google/a/c;

    .line 79
    invoke-virtual {v3}, Lcom/google/a/c;->c()[B

    move-result-object v3

    invoke-static {v3}, Lcom/avast/android/c/c;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v3, Lretrofit/client/Request;

    invoke-virtual {p1}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_2

    new-instance v0, Lcom/avast/android/c/a/b$1;

    invoke-direct {v0, p0, v2, v1}, Lcom/avast/android/c/a/b$1;-><init>(Lcom/avast/android/c/a/b;Lretrofit/mime/TypedOutput;[B)V

    :cond_2
    invoke-direct {v3, v4, v5, v6, v0}, Lretrofit/client/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lretrofit/mime/TypedOutput;)V

    .line 103
    iget-object v0, p0, Lcom/avast/android/c/a/b;->b:Lretrofit/client/Client;

    invoke-interface {v0, v3}, Lretrofit/client/Client;->execute(Lretrofit/client/Request;)Lretrofit/client/Response;

    move-result-object v4

    .line 105
    invoke-virtual {v4}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v8

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Received response with status "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lretrofit/client/Response;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") and payload size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Lretrofit/mime/TypedInput;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    sget-object v0, Lcom/avast/b/b;->a:Lcom/avast/b/b;

    invoke-virtual {v0}, Lcom/avast/b/b;->c()Lcom/avast/b/a;

    move-result-object v1

    invoke-interface {v8}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/c/a/b;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 5098
    array-length v0, v2

    if-nez v0, :cond_4

    .line 5099
    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v6, v0

    .line 110
    :goto_3
    new-instance v0, Lretrofit/client/Response;

    invoke-virtual {v4}, Lretrofit/client/Response;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lretrofit/client/Response;->getStatus()I

    move-result v2

    invoke-virtual {v4}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/avast/android/c/a/b$2;

    invoke-direct {v5, p0, v8, v6}, Lcom/avast/android/c/a/b$2;-><init>(Lcom/avast/android/c/a/b;Lretrofit/mime/TypedInput;[B)V

    invoke-direct/range {v0 .. v5}, Lretrofit/client/Response;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lretrofit/mime/TypedInput;)V

    return-object v0

    .line 75
    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto/16 :goto_2

    .line 5102
    :cond_4
    array-length v0, v2

    iget-object v3, v1, Lcom/avast/b/a;->a:Lcom/avast/b/b;

    invoke-virtual {v3}, Lcom/avast/b/b;->a()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 5103
    new-instance v0, Lcom/avast/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid payload length ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avast/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 5106
    :cond_5
    array-length v0, v2

    iget-object v3, v1, Lcom/avast/b/a;->a:Lcom/avast/b/b;

    invoke-virtual {v3}, Lcom/avast/b/b;->a()I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v3, 0x0

    invoke-static {v7, v2, v0, v3}, Lcom/avast/b/e;->b([B[BI[B)I

    move-result v0

    .line 5107
    if-gez v0, :cond_6

    .line 5108
    new-instance v1, Lcom/avast/b/f;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid buffer size ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/avast/b/f;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 5110
    :cond_6
    new-array v0, v0, [B

    .line 5112
    array-length v3, v2

    iget-object v5, v1, Lcom/avast/b/a;->a:Lcom/avast/b/b;

    invoke-virtual {v5}, Lcom/avast/b/b;->a()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v7, v2, v3, v0}, Lcom/avast/b/e;->b([B[BI[B)I

    move-result v3

    .line 5113
    invoke-static {v0, v3}, Lcom/avast/b/a;->a([BI)[B

    move-result-object v0

    .line 5116
    invoke-virtual {v1, v7}, Lcom/avast/b/a;->a([B)Ljavax/crypto/Mac;

    move-result-object v3

    .line 5117
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6}, Ljavax/crypto/Mac;->update([BII)V

    .line 5118
    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v3

    .line 5121
    array-length v5, v2

    iget-object v1, v1, Lcom/avast/b/a;->a:Lcom/avast/b/b;

    invoke-virtual {v1}, Lcom/avast/b/b;->a()I

    move-result v1

    sub-int v1, v5, v1

    array-length v5, v2

    .line 5130
    sub-int v6, v5, v1

    .line 5131
    if-gez v6, :cond_7

    .line 5132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :catch_3
    move-exception v0

    goto/16 :goto_1

    .line 5134
    :cond_7
    new-array v5, v6, [B

    .line 5135
    const/4 v7, 0x0

    array-length v9, v2

    sub-int/2addr v9, v1

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v1, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5121
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_8

    .line 5122
    new-instance v0, Lcom/avast/b/f;

    const-string/jumbo v1, "Computed HMac is not valid."

    invoke-direct {v0, v1}, Lcom/avast/b/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/avast/b/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/avast/b/f; {:try_start_1 .. :try_end_1} :catch_3

    :cond_8
    move-object v6, v0

    .line 5125
    goto/16 :goto_3
.end method
