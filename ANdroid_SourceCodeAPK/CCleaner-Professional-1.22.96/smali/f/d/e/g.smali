.class public final Lf/d/e/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:F

.field public b:I

.field public c:I

.field public d:I

.field public e:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf/d/e/g;-><init>(B)V

    .line 47
    return-void
.end method

.method private constructor <init>(B)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f400000    # 0.75f

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v2, p0, Lf/d/e/g;->a:F

    .line 60
    const/16 v0, 0x10

    invoke-static {v0}, Lf/d/e/b/n;->a(I)I

    move-result v0

    .line 61
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lf/d/e/g;->b:I

    .line 62
    int-to-float v1, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lf/d/e/g;->d:I

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lf/d/e/g;->e:[Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public static a(I)I
    .locals 2

    .prologue
    .line 195
    const v0, -0x61c88647

    mul-int/2addr v0, p0

    .line 196
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;I)Z"
        }
    .end annotation

    .prologue
    .line 117
    iget v0, p0, Lf/d/e/g;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lf/d/e/g;->c:I

    .line 124
    :goto_0
    add-int/lit8 v0, p1, 0x1

    and-int/2addr v0, p3

    .line 126
    :goto_1
    aget-object v1, p2, v0

    .line 127
    if-nez v1, :cond_0

    .line 128
    const/4 v0, 0x0

    aput-object v0, p2, p1

    .line 129
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lf/d/e/g;->a(I)I

    move-result v2

    and-int/2addr v2, p3

    .line 133
    if-gt p1, v0, :cond_2

    if-ge p1, v2, :cond_1

    if-le v2, v0, :cond_3

    .line 139
    :cond_1
    aput-object v1, p2, p1

    move p1, v0

    goto :goto_0

    .line 133
    :cond_2
    if-lt p1, v2, :cond_3

    if-gt v2, v0, :cond_1

    .line 137
    :cond_3
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, p3

    goto :goto_1
.end method
