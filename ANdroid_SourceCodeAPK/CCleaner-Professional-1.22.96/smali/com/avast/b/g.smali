.class public final Lcom/avast/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BJLjavax/crypto/Mac;)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avast/b/d;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v2, Lcom/avast/b/c;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/avast/b/c;-><init>(Ljavax/crypto/Mac;)V

    .line 107
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/avast/b/i;->a(J)[B

    move-result-object v3

    .line 1152
    invoke-virtual {v2, v3}, Lcom/avast/b/c;->a([B)Ljavax/crypto/Mac;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/avast/b/c;->a([BLjavax/crypto/Mac;)[B

    move-result-object v3

    .line 108
    const-string/jumbo v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object/from16 v0, p0

    array-length v8, v0

    .line 1179
    invoke-virtual {v2, v3}, Lcom/avast/b/c;->a([B)Ljavax/crypto/Mac;

    move-result-object v9

    .line 1181
    const/4 v2, 0x0

    new-array v4, v2, [B

    .line 1182
    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 1184
    int-to-double v10, v8

    invoke-virtual {v9}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v2

    int-to-double v12, v2

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 1185
    const/4 v2, 0x0

    move-object v5, v3

    move-object v6, v4

    move v4, v2

    :goto_0
    if-ge v4, v10, :cond_1

    .line 1187
    const/4 v2, 0x2

    new-array v11, v2, [[B

    const/4 v2, 0x0

    aput-object v7, v11, v2

    const/4 v12, 0x1

    add-int/lit8 v2, v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 2101
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    const/4 v13, 0x1

    if-ne v3, v13, :cond_2

    .line 2102
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "0"

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 2105
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v13, v2, [B

    .line 2106
    const/4 v2, 0x0

    :goto_2
    array-length v14, v13

    if-ge v2, v14, :cond_0

    .line 2107
    mul-int/lit8 v14, v2, 0x2

    mul-int/lit8 v15, v2, 0x2

    add-int/lit8 v15, v15, 0x2

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v13, v2

    .line 2106
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1187
    :cond_0
    aput-object v13, v11, v12

    invoke-static {v6, v11}, Lcom/avast/b/c;->a([B[[B)[B

    move-result-object v2

    invoke-static {v2, v9}, Lcom/avast/b/c;->a([BLjavax/crypto/Mac;)[B

    move-result-object v6

    .line 1188
    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Lcom/avast/b/c;->a([B[[B)[B

    move-result-object v3

    .line 1185
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v5, v3

    goto :goto_0

    .line 1191
    :cond_1
    new-array v2, v8, [B

    .line 1192
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v5, v3, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 124
    return-object v2

    .line 112
    :catch_0
    move-exception v2

    .line 113
    new-instance v3, Lcom/avast/b/d;

    invoke-direct {v3, v2}, Lcom/avast/b/d;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 116
    :catch_1
    move-exception v2

    .line 117
    new-instance v3, Lcom/avast/b/d;

    invoke-direct {v3, v2}, Lcom/avast/b/d;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 120
    :catch_2
    move-exception v2

    .line 121
    new-instance v3, Lcom/avast/b/d;

    invoke-direct {v3, v2}, Lcom/avast/b/d;-><init>(Ljava/lang/Exception;)V

    throw v3

    :cond_2
    move-object v3, v2

    goto :goto_1
.end method
