.class public final Lcom/google/android/exoplayer2/h/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/i/d;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:F


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/i/d;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/h/a$a;-><init>(Lcom/google/android/exoplayer2/i/d;B)V

    .line 52
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/i/d;B)V
    .locals 2

    .prologue
    const/16 v1, 0x61a8

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/exoplayer2/h/a$a;->a:Lcom/google/android/exoplayer2/i/d;

    .line 74
    const v0, 0xc3500

    iput v0, p0, Lcom/google/android/exoplayer2/h/a$a;->b:I

    .line 75
    const/16 v0, 0x2710

    iput v0, p0, Lcom/google/android/exoplayer2/h/a$a;->c:I

    .line 76
    iput v1, p0, Lcom/google/android/exoplayer2/h/a$a;->d:I

    .line 77
    iput v1, p0, Lcom/google/android/exoplayer2/h/a$a;->e:I

    .line 78
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/google/android/exoplayer2/h/a$a;->f:F

    .line 79
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/exoplayer2/f/h;[I)Lcom/google/android/exoplayer2/h/f;
    .locals 13

    .prologue
    .line 35
    .line 1083
    new-instance v1, Lcom/google/android/exoplayer2/h/a;

    iget-object v4, p0, Lcom/google/android/exoplayer2/h/a$a;->a:Lcom/google/android/exoplayer2/i/d;

    iget v5, p0, Lcom/google/android/exoplayer2/h/a$a;->b:I

    iget v0, p0, Lcom/google/android/exoplayer2/h/a$a;->c:I

    int-to-long v6, v0

    iget v0, p0, Lcom/google/android/exoplayer2/h/a$a;->d:I

    int-to-long v8, v0

    iget v0, p0, Lcom/google/android/exoplayer2/h/a$a;->e:I

    int-to-long v10, v0

    iget v12, p0, Lcom/google/android/exoplayer2/h/a$a;->f:F

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/h/a;-><init>(Lcom/google/android/exoplayer2/f/h;[ILcom/google/android/exoplayer2/i/d;IJJJF)V

    .line 35
    return-object v1
.end method
