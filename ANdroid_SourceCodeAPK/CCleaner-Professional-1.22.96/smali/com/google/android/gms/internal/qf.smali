.class public final Lcom/google/android/gms/internal/qf;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I

.field public static final e:[I

.field public static final f:[J

.field public static final g:[F

.field public static final h:[D

.field public static final i:[Z

.field public static final j:[Ljava/lang/String;

.field public static final k:[[B

.field public static final l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1000
    const/16 v0, 0xb

    .line 0
    sput v0, Lcom/google/android/gms/internal/qf;->a:I

    .line 2000
    const/16 v0, 0xc

    .line 0
    sput v0, Lcom/google/android/gms/internal/qf;->b:I

    .line 3000
    const/16 v0, 0x10

    .line 0
    sput v0, Lcom/google/android/gms/internal/qf;->c:I

    .line 4000
    const/16 v0, 0x1a

    .line 0
    sput v0, Lcom/google/android/gms/internal/qf;->d:I

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/qf;->e:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/qf;->f:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/qf;->g:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/qf;->h:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/qf;->i:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/qf;->j:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/qf;->k:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/qf;->l:[B

    return-void
.end method

.method static a(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static a(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static final a(Lcom/google/android/gms/internal/pu;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pu;->j()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pu;->b(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pu;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pu;->b(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/pu;->e(I)V

    return v0
.end method

.method public static b(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
