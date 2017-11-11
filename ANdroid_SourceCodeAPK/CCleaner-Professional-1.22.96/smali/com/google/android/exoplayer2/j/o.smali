.class public final Lcom/google/android/exoplayer2/j/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/j/o$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/exoplayer2/j/o$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/exoplayer2/j/o$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer2/j/o$a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:[Lcom/google/android/exoplayer2/j/o$a;

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/exoplayer2/j/o$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/o$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/j/o;->a:Ljava/util/Comparator;

    .line 45
    new-instance v0, Lcom/google/android/exoplayer2/j/o$2;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/j/o$2;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/j/o;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/google/android/exoplayer2/j/o;->c:I

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/exoplayer2/j/o$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/j/o;->e:[Lcom/google/android/exoplayer2/j/o$a;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/j/o;->d:Ljava/util/ArrayList;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/j/o;->f:I

    .line 76
    return-void
.end method
