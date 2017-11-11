.class public final Lcom/google/android/exoplayer2/h/a;
.super Lcom/google/android/exoplayer2/h/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/h/a$a;
    }
.end annotation


# instance fields
.field private final f:Lcom/google/android/exoplayer2/i/d;

.field private final g:I

.field private final h:J

.field private final i:J

.field private final j:J

.field private final k:F

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/f/h;[ILcom/google/android/exoplayer2/i/d;IJJJF)V
    .locals 11

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/h/b;-><init>(Lcom/google/android/exoplayer2/f/h;[I)V

    .line 144
    iput-object p3, p0, Lcom/google/android/exoplayer2/h/a;->f:Lcom/google/android/exoplayer2/i/d;

    .line 145
    iput p4, p0, Lcom/google/android/exoplayer2/h/a;->g:I

    .line 146
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p5

    iput-wide v2, p0, Lcom/google/android/exoplayer2/h/a;->h:J

    .line 147
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p7

    iput-wide v2, p0, Lcom/google/android/exoplayer2/h/a;->i:J

    .line 148
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p9

    iput-wide v2, p0, Lcom/google/android/exoplayer2/h/a;->j:J

    .line 149
    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/exoplayer2/h/a;->k:F

    .line 1233
    iget-object v2, p0, Lcom/google/android/exoplayer2/h/a;->f:Lcom/google/android/exoplayer2/i/d;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/i/d;->a()J

    move-result-wide v2

    .line 1234
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer2/h/a;->g:I

    int-to-long v2, v2

    .line 1236
    :goto_0
    const/4 v4, 0x0

    .line 1237
    const/4 v5, 0x0

    :goto_1
    iget v6, p0, Lcom/google/android/exoplayer2/h/a;->b:I

    if-ge v5, v6, :cond_5

    .line 1238
    const-wide/high16 v6, -0x8000000000000000L

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 2157
    iget-object v6, p0, Lcom/google/android/exoplayer2/h/b;->e:[J

    aget-wide v6, v6, v5

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    const/4 v6, 0x1

    .line 1238
    :goto_2
    if-nez v6, :cond_4

    .line 3093
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/h/b;->d:[Lcom/google/android/exoplayer2/Format;

    aget-object v4, v4, v5

    .line 1240
    iget v4, v4, Lcom/google/android/exoplayer2/Format;->b:I

    int-to-long v6, v4

    cmp-long v4, v6, v2

    if-gtz v4, :cond_3

    .line 150
    :goto_3
    iput v5, p0, Lcom/google/android/exoplayer2/h/a;->l:I

    .line 151
    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/h/a;->m:I

    .line 152
    return-void

    .line 1234
    :cond_1
    long-to-float v2, v2

    iget v3, p0, Lcom/google/android/exoplayer2/h/a;->k:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    goto :goto_0

    .line 2157
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    move v4, v5

    .line 1237
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move v5, v4

    .line 1247
    goto :goto_3
.end method
