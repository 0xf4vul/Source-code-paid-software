.class public final Lcom/avast/android/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/avast/android/c/c;->a:[C

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 12
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    .line 13
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 14
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 15
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/avast/android/c/c;->a:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 16
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/avast/android/c/c;->a:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 13
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
