.class public final Lcom/google/android/exoplayer2/c/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/c/f/g$b;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/c/f/e;-><init>(B)V

    .line 46
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/c/f/e;->a:I

    .line 50
    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/c/f/g$a;)Lcom/google/android/exoplayer2/c/f/g;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 54
    sparse-switch p1, :sswitch_data_0

    .line 78
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :sswitch_0
    new-instance v0, Lcom/google/android/exoplayer2/c/f/l;

    iget-object v1, p2, Lcom/google/android/exoplayer2/c/f/g$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/l;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :sswitch_1
    iget v1, p0, Lcom/google/android/exoplayer2/c/f/e;->a:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/c/f/d;

    iget-object v1, p2, Lcom/google/android/exoplayer2/c/f/g$a;->b:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/c/f/d;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    .line 63
    :sswitch_2
    new-instance v0, Lcom/google/android/exoplayer2/c/f/b;

    iget-object v1, p2, Lcom/google/android/exoplayer2/c/f/g$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/b;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :sswitch_3
    new-instance v0, Lcom/google/android/exoplayer2/c/f/f;

    iget-object v1, p2, Lcom/google/android/exoplayer2/c/f/g$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/c/f/f;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :sswitch_4
    new-instance v0, Lcom/google/android/exoplayer2/c/f/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/f/h;-><init>()V

    goto :goto_0

    .line 70
    :sswitch_5
    iget v3, p0, Lcom/google/android/exoplayer2/c/f/e;->a:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/exoplayer2/c/f/i;

    iget v0, p0, Lcom/google/android/exoplayer2/c/f/e;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iget v4, p0, Lcom/google/android/exoplayer2/c/f/e;->a:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    :goto_2
    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer2/c/f/i;-><init>(ZZ)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 74
    :sswitch_6
    new-instance v0, Lcom/google/android/exoplayer2/c/f/j;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/f/j;-><init>()V

    goto :goto_0

    .line 76
    :sswitch_7
    new-instance v0, Lcom/google/android/exoplayer2/c/f/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/c/f/k;-><init>()V

    goto :goto_0

    .line 54
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0xf -> :sswitch_1
        0x15 -> :sswitch_7
        0x1b -> :sswitch_5
        0x24 -> :sswitch_6
        0x81 -> :sswitch_2
        0x82 -> :sswitch_3
        0x87 -> :sswitch_2
        0x8a -> :sswitch_3
    .end sparse-switch
.end method
