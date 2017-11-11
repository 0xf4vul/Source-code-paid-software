.class public final Lcom/google/android/exoplayer2/h/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:[I

.field private final b:[Lcom/google/android/exoplayer2/f/i;

.field private final c:[I

.field private final d:[[[I

.field private final e:Lcom/google/android/exoplayer2/f/i;

.field private final f:I


# direct methods
.method constructor <init>([I[Lcom/google/android/exoplayer2/f/i;[I[[[ILcom/google/android/exoplayer2/f/i;)V
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p1, p0, Lcom/google/android/exoplayer2/h/e$a;->a:[I

    .line 432
    iput-object p2, p0, Lcom/google/android/exoplayer2/h/e$a;->b:[Lcom/google/android/exoplayer2/f/i;

    .line 433
    iput-object p4, p0, Lcom/google/android/exoplayer2/h/e$a;->d:[[[I

    .line 434
    iput-object p3, p0, Lcom/google/android/exoplayer2/h/e$a;->c:[I

    .line 435
    iput-object p5, p0, Lcom/google/android/exoplayer2/h/e$a;->e:Lcom/google/android/exoplayer2/f/i;

    .line 436
    array-length v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/h/e$a;->f:I

    .line 437
    return-void
.end method
