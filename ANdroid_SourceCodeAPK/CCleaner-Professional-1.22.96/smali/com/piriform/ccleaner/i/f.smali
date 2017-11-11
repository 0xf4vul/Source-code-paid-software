.class public final Lcom/piriform/ccleaner/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/piriform/ccleaner/i/e;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 104
    const-string/jumbo v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    :goto_0
    new-instance v1, Lcom/piriform/ccleaner/i/e;

    const-string/jumbo v2, "Error generating public key for verification"

    invoke-direct {v1, v2, v0}, Lcom/piriform/ccleaner/i/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 106
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 59
    .line 1077
    if-nez p1, :cond_0

    .line 1078
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "IABUtil/Security"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "data is null"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->e([Ljava/lang/Object;)V

    .line 1088
    :goto_0
    return v0

    .line 1083
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1084
    invoke-static {p0}, Lcom/piriform/ccleaner/i/f;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 1085
    invoke-static {v2, p1, p2}, Lcom/piriform/ccleaner/i/f;->a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1086
    if-nez v2, :cond_1

    .line 1087
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "IABUtil/Security"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "signature does not match data."

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->d([Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/piriform/ccleaner/i/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 59
    goto :goto_0
.end method

.method private static a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 123
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :try_start_1
    const-string/jumbo v2, "SHA1withRSA"

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 130
    invoke-virtual {v2, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 131
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/Signature;->update([B)V

    .line 132
    invoke-virtual {v2, v0}, Ljava/security/Signature;->verify([B)Z
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v0

    .line 136
    :goto_0
    return v0

    .line 125
    :catch_0
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Base64 decoding failed"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move v0, v1

    .line 126
    goto :goto_0

    .line 134
    :catch_1
    move-exception v0

    :goto_1
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move v0, v1

    .line 136
    goto :goto_0

    .line 134
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1
.end method
