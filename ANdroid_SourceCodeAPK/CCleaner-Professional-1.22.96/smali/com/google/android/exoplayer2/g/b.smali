.class public Lcom/google/android/exoplayer2/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/text/Layout$Alignment;

.field public final c:F

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:I

.field public final h:F


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 9

    .prologue
    const/high16 v4, -0x80000000

    const/4 v3, 0x1

    .line 147
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, v3

    move v7, v4

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/g/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/google/android/exoplayer2/g/b;->a:Ljava/lang/CharSequence;

    .line 163
    iput-object p2, p0, Lcom/google/android/exoplayer2/g/b;->b:Landroid/text/Layout$Alignment;

    .line 164
    iput p3, p0, Lcom/google/android/exoplayer2/g/b;->c:F

    .line 165
    iput p4, p0, Lcom/google/android/exoplayer2/g/b;->d:I

    .line 166
    iput p5, p0, Lcom/google/android/exoplayer2/g/b;->e:I

    .line 167
    iput p6, p0, Lcom/google/android/exoplayer2/g/b;->f:F

    .line 168
    iput p7, p0, Lcom/google/android/exoplayer2/g/b;->g:I

    .line 169
    iput p8, p0, Lcom/google/android/exoplayer2/g/b;->h:F

    .line 170
    return-void
.end method
