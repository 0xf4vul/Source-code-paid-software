.class public final Lcom/avast/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avast/b/e$a;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field protected static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/security/AlgorithmParameters;",
            ">;"
        }
    .end annotation
.end field

.field protected static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Random;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:[B

.field private e:[B

.field private final f:Ljavax/crypto/Cipher;

.field private final g:Ljava/util/Random;

.field private final h:Ljava/security/AlgorithmParameters;

.field private i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 298
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/avast/b/e;->a:Ljava/lang/ThreadLocal;

    .line 299
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/avast/b/e;->b:Ljava/lang/ThreadLocal;

    .line 300
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/avast/b/e;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Ljavax/crypto/Cipher;Ljava/security/AlgorithmParameters;Ljava/util/Random;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avast/b/f;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/avast/b/e;->f:Ljavax/crypto/Cipher;

    .line 102
    iput-object p2, p0, Lcom/avast/b/e;->h:Ljava/security/AlgorithmParameters;

    .line 103
    iput-object p3, p0, Lcom/avast/b/e;->g:Ljava/util/Random;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/b/e;->j:Z

    .line 105
    sget v0, Lcom/avast/b/e$a;->a:I

    iput v0, p0, Lcom/avast/b/e;->i:I

    .line 106
    return-void
.end method

.method private a(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avast/b/f;
        }
    .end annotation

    .prologue
    .line 259
    :try_start_0
    iget v0, p0, Lcom/avast/b/e;->i:I

    sget v1, Lcom/avast/b/e$a;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/b/e;->f:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 p1, v0, 0x10

    :cond_0
    return p1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    new-instance v1, Lcom/avast/b/f;

    invoke-direct {v1, v0}, Lcom/avast/b/f;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private a([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avast/b/f;
        }
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/4 v0, 0x0

    .line 68
    .line 70
    :try_start_0
    iget-boolean v1, p0, Lcom/avast/b/e;->j:Z

    if-nez v1, :cond_2

    .line 71
    if-ge p2, v2, :cond_0

    .line 72
    new-instance v0, Lcom/avast/b/f;

    const-string/jumbo v1, "insufficient input buffer size"

    invoke-direct {v0, v1}, Lcom/avast/b/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Lcom/avast/b/f;

    invoke-direct {v1, v0}, Lcom/avast/b/f;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avast/b/e;->e:[B

    if-nez v0, :cond_1

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/avast/b/e;->e:[B

    .line 77
    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avast/b/e;->e:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/b/e;->j:Z

    .line 79
    iget-object v0, p0, Lcom/avast/b/e;->e:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x0

    .line 82
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/avast/b/e;->d:[B

    const-string/jumbo v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/avast/b/e;->f:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v5, p0, Lcom/avast/b/e;->e:[B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    :cond_2
    return v0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    new-instance v1, Lcom/avast/b/f;

    invoke-direct {v1, v0}, Lcom/avast/b/f;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private a([BI[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avast/b/f;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 228
    .line 230
    :try_start_0
    iget v1, p0, Lcom/avast/b/e;->i:I

    sget v2, Lcom/avast/b/e$a;->a:I

    if-ne v1, v2, :cond_3

    .line 1048
    iget-boolean v1, p0, Lcom/avast/b/e;->j:Z

    if-nez v1, :cond_1

    .line 1049
    iget-object v0, p0, Lcom/avast/b/e;->e:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x0

    .line 1050
    array-length v1, p3

    iget-object v2, p0, Lcom/avast/b/e;->e:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1051
    new-instance v0, Lcom/avast/b/f;

    const-string/jumbo v1, "insufficient output buffer size"

    invoke-direct {v0, v1}, Lcom/avast/b/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 240
    :catch_0
    move-exception v0

    .line 241
    new-instance v1, Lcom/avast/b/f;

    invoke-direct {v1, v0}, Lcom/avast/b/f;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 1053
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/avast/b/e;->e:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avast/b/e;->e:[B

    array-length v4, v4

    invoke-static {v1, v2, p3, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1054
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/avast/b/e;->j:Z

    .line 231
    :cond_1
    add-int/lit8 v5, v0, 0x0

    .line 232
    iget-object v0, p0, Lcom/avast/b/e;->f:Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    add-int/2addr v0, v5

    .line 248
    :cond_2
    :goto_0
    return v0

    .line 233
    :cond_3
    iget v1, p0, Lcom/avast/b/e;->i:I

    sget v2, Lcom/avast/b/e$a;->b:I

    if-ne v1, v2, :cond_2

    .line 234
    if-lez p2, :cond_2

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/avast/b/e;->a([BI)I

    move-result v2

    .line 236
    iget-object v0, p0, Lcom/avast/b/e;->f:Ljavax/crypto/Cipher;

    sub-int v3, p2, v2

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    add-int/lit8 v0, v0, 0x0

    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    .line 243
    new-instance v1, Lcom/avast/b/f;

    invoke-direct {v1, v0}, Lcom/avast/b/f;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 244
    :catch_2
    move-exception v0

    .line 245
    new-instance v1, Lcom/avast/b/f;

    invoke-direct {v1, v0}, Lcom/avast/b/f;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static a([B[BI[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avast/b/f;
        }
    .end annotation

    .prologue
    .line 348
    sget v0, Lcom/avast/b/e$a;->a:I

    .line 1295
    invoke-static {v0, p0}, Lcom/avast/b/e;->a(I[B)Lcom/avast/b/e;

    move-result-object v0

    .line 349
    if-nez p3, :cond_0

    .line 350
    invoke-direct {v0, p2}, Lcom/avast/b/e;->a(I)I

    move-result v0

    .line 354
    :goto_0
    return v0

    .line 352
    :cond_0
    invoke-direct {v0, p1, p2, p3}, Lcom/avast/b/e;->a([BI[B)I

    move-result v0

    goto :goto_0
.end method

.method private static a(I[B)Lcom/avast/b/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avast/b/f;
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lcom/avast/b/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 305
    sget-object v1, Lcom/avast/b/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/AlgorithmParameters;

    .line 306
    sget-object v2, Lcom/avast/b/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Random;

    .line 309
    if-nez v0, :cond_0

    .line 310
    :try_start_0
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 311
    sget-object v3, Lcom/avast/b/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 313
    :cond_0
    if-nez v1, :cond_1

    .line 314
    const-string/jumbo v1, "AES"

    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 315
    sget-object v3, Lcom/avast/b/e;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 317
    :cond_1
    if-nez v2, :cond_2

    .line 318
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 319
    sget-object v3, Lcom/avast/b/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 327
    :cond_2
    new-instance v3, Lcom/avast/b/e;

    invoke-direct {v3, v0, v1, v2}, Lcom/avast/b/e;-><init>(Ljavax/crypto/Cipher;Ljava/security/AlgorithmParameters;Ljava/util/Random;)V

    .line 1144
    if-nez p1, :cond_3

    :try_start_1
    iget-object v0, v3, Lcom/avast/b/e;->d:[B

    if-nez v0, :cond_3

    .line 1145
    new-instance v0, Lcom/avast/b/f;

    const-string/jumbo v1, "invalid key"

    invoke-direct {v0, v1}, Lcom/avast/b/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    new-instance v1, Lcom/avast/b/f;

    invoke-direct {v1, v0}, Lcom/avast/b/f;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 321
    :catch_1
    move-exception v0

    .line 322
    new-instance v1, Lcom/avast/b/f;

    invoke-direct {v1, v0}, Lcom/avast/b/f;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 323
    :catch_2
    move-exception v0

    .line 324
    new-instance v1, Lcom/avast/b/f;

    invoke-direct {v1, v0}, Lcom/avast/b/f;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 1148
    :cond_3
    if-eqz p1, :cond_4

    .line 1150
    :try_start_2
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, v3, Lcom/avast/b/e;->d:[B

    .line 1151
    const/4 v0, 0x0

    iget-object v1, v3, Lcom/avast/b/e;->d:[B

    const/4 v2, 0x0

    iget-object v4, v3, Lcom/avast/b/e;->d:[B

    array-length v4, v4

    invoke-static {p1, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1154
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/avast/b/e;->j:Z

    .line 1155
    sget v0, Lcom/avast/b/e$a;->a:I

    if-ne p0, v0, :cond_6

    .line 1157
    sget v0, Lcom/avast/b/e$a;->a:I

    iput v0, v3, Lcom/avast/b/e;->i:I

    .line 1158
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, v3, Lcom/avast/b/e;->d:[B

    const-string/jumbo v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1167
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, v3, Lcom/avast/b/e;->e:[B

    .line 1168
    iget-object v1, v3, Lcom/avast/b/e;->g:Ljava/util/Random;

    iget-object v2, v3, Lcom/avast/b/e;->e:[B

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 1175
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, v3, Lcom/avast/b/e;->e:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1176
    iget-object v2, v3, Lcom/avast/b/e;->f:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 332
    :cond_5
    :goto_0
    return-object v3

    .line 1177
    :cond_6
    sget v0, Lcom/avast/b/e$a;->b:I

    if-ne p0, v0, :cond_5

    .line 1178
    sget v0, Lcom/avast/b/e$a;->b:I

    iput v0, v3, Lcom/avast/b/e;->i:I
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 1182
    :catch_3
    move-exception v0

    .line 1183
    new-instance v1, Lcom/avast/b/f;

    invoke-direct {v1, v0}, Lcom/avast/b/f;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static b([B[BI[B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/avast/b/f;
        }
    .end annotation

    .prologue
    .line 369
    sget v0, Lcom/avast/b/e$a;->b:I

    .line 2295
    invoke-static {v0, p0}, Lcom/avast/b/e;->a(I[B)Lcom/avast/b/e;

    move-result-object v0

    .line 370
    if-nez p3, :cond_0

    .line 371
    invoke-direct {v0, p2}, Lcom/avast/b/e;->a(I)I

    move-result v0

    .line 375
    :goto_0
    return v0

    .line 373
    :cond_0
    invoke-direct {v0, p1, p2, p3}, Lcom/avast/b/e;->a([BI[B)I

    move-result v0

    goto :goto_0
.end method
