.class public final Lcom/avast/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "hmac"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/avast/b/c;->a:Ljavax/crypto/Mac;

    .line 50
    return-void
.end method

.method static a([BLjavax/crypto/Mac;)[B
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p1, p0}, Ljavax/crypto/Mac;->update([B)V

    .line 76
    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Ljavax/crypto/Mac;->reset()V

    .line 78
    return-object v0
.end method

.method static varargs a([B[[B)[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 123
    array-length v0, p0

    add-int/lit8 v0, v0, 0x0

    .line 124
    array-length v3, p1

    move v1, v0

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 125
    array-length v4, v4

    add-int/2addr v1, v4

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    new-array v3, v1, [B

    .line 129
    array-length v0, p0

    .line 130
    invoke-static {p0, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    array-length v4, p1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, p1, v1

    .line 132
    array-length v6, v5

    invoke-static {v5, v2, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    array-length v5, v5

    add-int/2addr v0, v5

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    :cond_1
    return-object v3
.end method


# virtual methods
.method final a([B)Ljavax/crypto/Mac;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avast/b/c;->a:Ljavax/crypto/Mac;

    .line 1059
    array-length v1, p1

    if-nez v1, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/avast/b/c;->a:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    new-array p1, v1, [B

    .line 1062
    :cond_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/avast/b/c;->a:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 90
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 91
    iget-object v0, p0, Lcom/avast/b/c;->a:Ljavax/crypto/Mac;

    return-object v0
.end method
