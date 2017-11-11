.class public final Lcom/avast/android/f/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/avast/android/f/b/a;->a:[C

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 120
    :try_start_0
    const-string/jumbo v0, "SHA1"

    .line 1170
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1171
    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v0, p0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 1173
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 1208
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [C

    move v0, v1

    .line 1209
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 1210
    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    .line 1211
    mul-int/lit8 v5, v0, 0x2

    sget-object v6, Lcom/avast/android/f/b/a;->a:[C

    ushr-int/lit8 v7, v4, 0x4

    aget-char v6, v6, v7

    aput-char v6, v3, v5

    .line 1212
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lcom/avast/android/f/b/a;->a:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v6, v4

    aput-char v4, v3, v5

    .line 1209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1214
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    sget-object v2, Lcom/avast/android/f/a;->a:Lcom/avast/android/d/a;

    const-string/jumbo v3, "HashUtils.sha1AsHex() failed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v1}, Lcom/avast/android/d/a;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    const-string/jumbo v0, ""

    goto :goto_1
.end method
